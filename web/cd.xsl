<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : cd.xsl
    Created on : 19 April 2018, 9:28 PM
    Author     : Ferdy
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <!-- Below is used to build templates and match attr. is an expression from XPath,
    that refers to the whole document-->
    <xsl:template match="/">
        <html>
            <head>
                <style>
                .artist { font-style: italic; margin-bottom: 20px; }
                </style>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="cd/title">
        <h1>
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    
    <xsl:template match="cd/artist">
        <div class="artist">By <xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="cd/tracklist">
        <table>
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Time</th>
                    <th>Rating</th>
                </tr>
            </thead>
            <tbody>
                <xsl:apply-templates/>
            </tbody>
        </table>
    </xsl:template>
    
    <!-- Tracks -->
    <xsl:template match="cd/tracklist/track">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    
    <xsl:template match="cd/tracklist/track/*">
        
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
</xsl:stylesheet>
