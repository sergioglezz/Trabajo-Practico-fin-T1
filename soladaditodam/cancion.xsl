<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				
			</head>
			<body>
				<h2>Canción:</h2>
				<h1><xsl:value-of select="cancion/datos/titulo"/></h1>
				<p>(Autor: <xsl:value-of select="cancion/datos/autor"/>)</p>
				<p>(Fecha de lanzamiento: <xsl:value-of select="cancion/datos/fecha"/>)</p>
				<p>(Álbum: <xsl:value-of select="cancion/datos/album"/>)</p>
				<p>(Género: <xsl:value-of select="cancion/datos/genero"/>)</p>
				
				<xsl:for-each select="cancion/letra/estrofa">
					<xsl:for-each select="verso">
						<p><xsl:value-of select="."/></p>
					</xsl:for-each>
					<br/>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
