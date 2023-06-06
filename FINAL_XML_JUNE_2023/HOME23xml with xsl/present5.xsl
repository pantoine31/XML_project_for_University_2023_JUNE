<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
<xsl:template match="Epipla_Diakosmisi_AE/name" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/product_categories" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/room_classification" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/special_classification" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/contact_details" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/store_hours" priority="0"/>
<xsl:template match="Epipla_Diakosmisi_AE/Services" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE">
  <html>
    <body>
      <h2>Filtered Product List</h2>
      <table border="1">
        <tr>
          <th>Product Name</th>
          <th>Product Code</th>
          <th>Offer Rate</th>
        </tr>
      <xsl:for-each select="product_list/product[start_value/offer_rate and number(translate(start_value/offer_rate, '%', '')) &gt; 34]">
          <tr>
            <td><xsl:value-of select="product_identification/@product_name"/></td>
            <td><xsl:value-of select="product_identification/@product_code"/></td>
            <td><xsl:value-of select="start_value/offer_rate"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>