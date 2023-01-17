<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				
			</head>
			<body>
				<h2>Canción:</h2>
				<h1><xsl:value-of select="cancion/datos/titulo"/></h1>
				<h3>(Autor: <xsl:value-of select="cancion/datos/autor"/>)</h3>
				<h3>(Fecha de lanzamiento: <xsl:value-of select="cancion/datos/fecha"/>)</h3>
				<h3>(Álbum: <xsl:value-of select="cancion/datos/album"/>)</h3>
				<h3>(Género: <xsl:value-of select="cancion/datos/genero"/>)</h3>
				
				<xsl:for-each select="cancion/letra/estrofa">
					<xsl:sort select="orden"/>
					<xsl:for-each select="verso">
						<p><xsl:value-of select="."/></p>
					</xsl:for-each>
					<br/>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
