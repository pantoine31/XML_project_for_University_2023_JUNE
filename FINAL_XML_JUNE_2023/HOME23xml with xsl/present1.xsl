<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
<!-- doulevei teleia--> 

<xsl:template match="Epipla_Diakosmisi_AE/name" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/product_categories" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/room_classification" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/special_classification" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/contact_details" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/store_hours" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/Services" priority="0"/>




  <!-- Αντιστοίχιση στοιχείων προϊόντος -->
  <xsl:template match="product">
    <tr>
      <td><xsl:value-of select="product_identification/@product_name"/></td>
      <td><xsl:value-of select="product_identification/@product_code"/></td>
      <td><xsl:value-of select="product_characteristics/manufacturer_country"/></td>
      <td>
        <xsl:choose>
          <xsl:when test="product_characteristics/certified">
            <xsl:text>Ναι</xsl:text>
          </xsl:when>
          <xsl:otherwise>
            <xsl:text>Όχι</xsl:text>
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
  </xsl:template>


  


  <!-- Αντιστοίχιση προϊόντων -->
  <xsl:template match="product_list">
    <html>
      <body>
        <table border="1">
          <tr>
            <th>Όνομα προϊόντος</th>
            <th>Κωδικός προϊόντος</th>
            <th>Χώρα προέλευσης</th>
            <th>Πιστοποιημένο</th>
          </tr>
          <xsl:apply-templates select="product"/>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
