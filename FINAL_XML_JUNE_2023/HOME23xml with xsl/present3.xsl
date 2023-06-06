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
      <h2>Sorted Product List</h2>
      <table border="1">
        <tr>
          <th>Product Name</th>
          <th>Product Code</th>
          <th>Number of Doses</th>
          <th>Amount per Dose</th>
          <th>Final Value</th>
        </tr>
        <xsl:for-each select="product_list/product[Final_value/text() &gt; 150 and Final_value/accept_doses]">
          <xsl:sort select="number(Final_value)" data-type="number" order="descending"/>
          <tr>
            <td><xsl:value-of select="product_identification/@product_name"/></td>
            <td><xsl:value-of select="product_identification/@product_code"/></td>
            <td><xsl:value-of select="Final_value/accept_doses/num_doses"/></td>
            <td><xsl:value-of select="Final_value/accept_doses/ammount_dose"/></td>
            <td><xsl:value-of select="Final_value/text()"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>



  

</xsl:stylesheet>
