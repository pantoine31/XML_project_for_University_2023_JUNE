<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- einai ok apla kapou xalaei i taksinomisi--> 
  <xsl:template match="Epipla_Diakosmisi_AE">
    <html>
      <head>
        <title>Sorted Product List</title>

      </head>
      <body>
        <h2>Sorted Product List</h2>
      <table border="1">
        <tr bgcolor="#9acd72">
          <th>Όνομα Προϊόντος</th>
          <th>Κωδικός Προϊόντος</th>
          <th>Τελική Τιμή Προϊόντος</th>
        </tr>
          <xsl:apply-templates select="product_list/product">
            <xsl:sort select="number(Final_value/text())" order="ascending" data-type="number"/>
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="product_list/product">
    <tr>
      <td><xsl:value-of select="product_identification/@product_name"/></td>
      <td><xsl:value-of select="product_identification/@product_code"/></td>
      <td><xsl:value-of select="Final_value/text()"/></td>
    </tr>
  </xsl:template>
<xsl:template match="accept_doses" priority="0"/>



</xsl:stylesheet>
