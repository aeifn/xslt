<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="catalog">
    <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="class">
    <h3><xsl:value-of select="@name"/></h3>
    <table class="table">
      <tr>
        <td>Модель волнового тренажера</td>
        <td>Наименование модели (справочно)</td>
        <td>Цена, руб.</td>
        <td>Частота, Гц</td>
        <td>Длина, мм</td>
        <td>Диаметр, мм</td>
        <td>Масса, кг</td>
      </tr>
      <xsl:apply-templates/>
    </table>
  </xsl:template>
  <xsl:template match="trainer">
    <tr>
      <td>
        <span>Тренажер Агашина — </span>
        <xsl:value-of select="@id"/>
        <xsl:value-of select="comment"/>
      </td>
      <td>
        <xsl:value-of select="@alt"/>
      </td>
      <td>
        <xsl:value-of select="price"/>
      </td>
      <td>
        <xsl:value-of select="param/@FREQ"/>
      </td>
      <td>
        <xsl:value-of select="param/@L"/>
      </td>
      <td>
        <xsl:value-of select="param/@D"/>
      </td>
      <td>
        <xsl:value-of select="param/@W"/>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
