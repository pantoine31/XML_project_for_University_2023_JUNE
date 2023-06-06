<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
<xsl:template match="Epipla_Diakosmisi_AE/name" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/product_categories" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/room_classification" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/special_classification" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/contact_details" priority="0"/>

<xsl:template match="Epipla_Diakosmisi_AE/store_hours" priority="0"/>
<xsl:template match="Epipla_Diakosmisi_AE/Services" priority="0"/>

<xsl:key name="Grafeia" match="prod_class" use="11"/>

<xsl:template match="Epipla_Diakosmisi_AE">
  <html>
    <body>
      <h2>Products can buy</h2>
      <table border="1">
        <tr>
          <th>Product Name</th>
          <th>Product Code</th>
          <th>Product Category</th>
        </tr>
      <xsl:for-each select="product_list/product[start_value/@can_reserved='yes']">
          <tr>
            <td><xsl:value-of select="product_identification/@product_name"/></td>
            <td><xsl:value-of select="product_identification/@product_code"/></td>
            <td><xsl:value-of select="@prod_class_id"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>