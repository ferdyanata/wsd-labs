<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : shop.xsl
    Created on : April 12, 2017, 8:27 PM
    Author     : George
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:param name="bgColor"/>
    <xsl:template match="shop">
        <html>
            <head>
                <style>
                    table{
                    width:30%;
                    }
                    th, td {
                    text-align:left;
                    padding: 8px;
                    
                    }
                    th {
                    background-color: #4CAF50;
                    color: white;
                    font-weight:bold;
                    }
                    h2,p{
                    background-color: #4CAF50;
                    width:30%;
                    font-weight:bold;
                    }					
                </style>
            </head>
            <body>
                <xsl:apply-templates />
                <p>Total Movie Sets : <xsl:value-of select="count(movies/movie)"/></p>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="name">
        <h2>
            <xsl:apply-templates />
        </h2>
    </xsl:template>
    <xsl:template match="movies">
        <table>
            <thead>
                <tr>
                    <th>Movie</th>
                    <th>CD Set</th>
                    <th>Rating</th>
                </tr>
            </thead>
            <tbody>
                <xsl:apply-templates />
            </tbody>
        </table>
    </xsl:template>
    <xsl:template match="movie">
        <tr>
            <td>
                <xsl:value-of select="title" />
            </td>
            <td>
                <xsl:value-of select="cdset" />
            </td>
            <td>
                <div style="width: 100px; height: 12px; background: green;">
                    <div style="width: {10 * rating}px; height: 12px; background: blue;"/>
                </div>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
