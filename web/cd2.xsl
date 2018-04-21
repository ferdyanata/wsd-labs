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
                    table.tracklist { border: solid 1px black; border-collapse: collapse; }
                    table.tracklist td { border: solid 1px #999; }
                    .artist { font-style: italic; margin-bottom: 20px; }
                    .even { background: #fff; }
                    .odd { background: #f2f2f2; }
                </style>
            </head>
            <body>
                <xsl:apply-templates/>     
                <p>Total number of tracks: 4</p>
                <p>Average track rating: 2.75</p>         
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="cd/title">
        <h1>
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    
    <xsl:template match="cd/artist">
        <div class="artist"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="cd/tracklist">
        <table class="tracklist">
            <thead>
                <tr>
                    <th>Track</th>
                    <th>Info</th>
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
        <xsl:if test="attribute::id mod 2 = 0">
            <tr class="even">
                <xsl:apply-templates/>     
            </tr>
        </xsl:if>
        <xsl:if test="attribute::id mod 2 = 1">
            <tr class="odd">
                <xsl:apply-templates/>     
            </tr>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="cd/tracklist/track/*">
        <xslif test="attribute::id = 1">
            
        </xslif>
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
</xsl:stylesheet>
