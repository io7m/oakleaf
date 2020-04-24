<?xml version="1.0" encoding="UTF-8" ?>

<!--
  Copyright © 2020 Mark Raynsford <code@io7m.com> http://io7m.com

  Permission to use, copy, modify, and/or distribute this software for any
  purpose with or without fee is hereby granted, provided that the above
  copyright notice and this permission notice appear in all copies.

  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
  SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR
  IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="#all"
                xmlns:dc="http://purl.org/dc/elements/1.1/"
                xmlns="http://www.w3.org/1999/xhtml"
                xmlns:o="urn:com.io7m.oakleaf:1:0"
                version="3.0">

  <xsl:output method="xml"
              indent="yes"
              name="xml"
              doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
              doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>

  <xsl:param name="oakleafBranding"
             required="false"/>

  <xsl:key name="FootnoteKey"
           match="/o:Article/o:Footnotes/o:Footnote"
           use="@id"/>

  <xsl:key name="FootnoteReferenceKey"
           match="/o:Article//o:FootnoteReference"
           use="@ref"/>

  <xsl:template match="node() | @*"/>

  <xsl:template match="dc:creator"
                mode="oakMetadataHeader">
    <xsl:element name="meta">
      <xsl:attribute name="name"
                     select="'DC.Title'"/>
      <xsl:attribute name="content"
                     select="."/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="dc:subject"
                mode="oakMetadataHeader">
    <xsl:element name="meta">
      <xsl:attribute name="name"
                     select="'DC.Subject'"/>
      <xsl:attribute name="content"
                     select="."/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="dc:description"
                mode="oakMetadataHeader">
    <xsl:element name="meta">
      <xsl:attribute name="name"
                     select="'DC.Description'"/>
      <xsl:attribute name="content"
                     select="."/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="dc:publisher"
                mode="oakMetadataHeader">
    <xsl:element name="meta">
      <xsl:attribute name="name"
                     select="'DC.Publisher'"/>
      <xsl:attribute name="content"
                     select="."/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="dc:contributor"
                mode="oakMetadataHeader">
    <xsl:element name="meta">
      <xsl:attribute name="name"
                     select="'DC.Contributor'"/>
      <xsl:attribute name="content"
                     select="."/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="dc:date"
                mode="oakMetadataHeader">
    <xsl:element name="meta">
      <xsl:attribute name="name"
                     select="'DC.Date'"/>
      <xsl:attribute name="content"
                     select="."/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="dc:type"
                mode="oakMetadataHeader">
    <xsl:element name="meta">
      <xsl:attribute name="name"
                     select="'DC.Type'"/>
      <xsl:attribute name="content"
                     select="."/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="dc:format"
                mode="oakMetadataHeader">
    <xsl:element name="meta">
      <xsl:attribute name="name"
                     select="'DC.Format'"/>
      <xsl:attribute name="content"
                     select="."/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="dc:identifier"
                mode="oakMetadataHeader">
    <xsl:element name="meta">
      <xsl:attribute name="name"
                     select="'DC.Identifier'"/>
      <xsl:attribute name="content"
                     select="."/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="dc:source"
                mode="oakMetadataHeader">
    <xsl:element name="meta">
      <xsl:attribute name="name"
                     select="'DC.Source'"/>
      <xsl:attribute name="content"
                     select="."/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="dc:language"
                mode="oakMetadataHeader">
    <xsl:element name="meta">
      <xsl:attribute name="name"
                     select="'DC.Language'"/>
      <xsl:attribute name="content"
                     select="."/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="dc:relation"
                mode="oakMetadataHeader">
    <xsl:element name="meta">
      <xsl:attribute name="name"
                     select="'DC.Relation'"/>
      <xsl:attribute name="content"
                     select="."/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="dc:coverage"
                mode="oakMetadataHeader">
    <xsl:element name="meta">
      <xsl:attribute name="name"
                     select="'DC.Coverage'"/>
      <xsl:attribute name="content"
                     select="."/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="dc:rights"
                mode="oakMetadataHeader">
    <xsl:element name="meta">
      <xsl:attribute name="name"
                     select="'DC.Rights'"/>
      <xsl:attribute name="content"
                     select="."/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="dc:title"
                mode="oakMetadataHeader"/>

  <xsl:template match="dc:title"
                mode="oakMetadataRow"/>

  <xsl:template match="dc:creator"
                mode="oakMetadataRow">
    <tr>
      <td>Creator</td>
      <td>
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="dc:subject"
                mode="oakMetadataRow"/>

  <xsl:template match="dc:description"
                mode="oakMetadataRow"/>

  <xsl:template match="dc:publisher"
                mode="oakMetadataRow"/>

  <xsl:template match="dc:contributor"
                mode="oakMetadataRow">
    <tr>
      <td>Contributor</td>
      <td>
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="dc:date"
                mode="oakMetadataRow">
    <tr>
      <td>Date</td>
      <td>
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="dc:type"
                mode="oakMetadataRow"/>

  <xsl:template match="dc:format"
                mode="oakMetadataRow"/>

  <xsl:template match="dc:identifier"
                mode="oakMetadataRow">
    <tr>
      <td>ID</td>
      <td>
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="dc:source"
                mode="oakMetadataRow"/>

  <xsl:template match="dc:language"
                mode="oakMetadataRow"/>

  <xsl:template match="dc:relation"
                mode="oakMetadataRow"/>

  <xsl:template match="dc:coverage"
                mode="oakMetadataRow"/>

  <xsl:template match="dc:rights"
                mode="oakMetadataRow"/>

  <xsl:template match="text()"
                mode="oakParagraphContent">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="o:Verbatim"
                mode="oakParagraphContent">
    <pre class="oakVerbatim">
      <xsl:value-of select="replace(., '^\s+', '')"/>
    </pre>
  </xsl:template>

  <xsl:template match="o:Link"
                mode="oakParagraphContent">
    <xsl:element name="a">
      <xsl:attribute name="href">
        <xsl:value-of select="concat('#id_', @target)"/>
      </xsl:attribute>
      <xsl:apply-templates select="child::node()"
                           mode="oakParagraphContent"/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="o:LinkExternal"
                mode="oakParagraphContent">
    <xsl:element name="a">
      <xsl:attribute name="href">
        <xsl:value-of select="@target"/>
      </xsl:attribute>
      <xsl:apply-templates select="child::node()"
                           mode="oakParagraphContent"/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="o:Term"
                mode="oakParagraphContent">
    <xsl:element name="span">
      <xsl:attribute name="class">
        <xsl:value-of select="@type"/>
      </xsl:attribute>
      <xsl:apply-templates select="child::node()"
                           mode="oakParagraphContent"/>
    </xsl:element>
  </xsl:template>

  <xsl:template name="oakMaybeType">
    <xsl:choose>
      <xsl:when test="@type">
        <xsl:attribute name="class">
          <xsl:value-of select="@type"/>
        </xsl:attribute>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="o:Column"
                mode="oakParagraphContent">
    <xsl:element name="th">
      <xsl:call-template name="oakMaybeType"/>
      <xsl:apply-templates select="child::node()"
                           mode="oakParagraphContent"/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="o:Header"
                mode="oakParagraphContent">
    <xsl:element name="thead">
      <xsl:call-template name="oakMaybeType"/>
      <tr>
        <xsl:apply-templates select="child::node()"
                             mode="oakParagraphContent"/>
      </tr>
    </xsl:element>
  </xsl:template>

  <xsl:template match="o:Cell"
                mode="oakParagraphContent">
    <xsl:element name="td">
      <xsl:call-template name="oakMaybeType"/>
      <xsl:apply-templates select="child::node()"
                           mode="oakParagraphContent"/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="o:Row"
                mode="oakParagraphContent">
    <xsl:element name="tr">
      <xsl:call-template name="oakMaybeType"/>
      <xsl:apply-templates select="child::node()"
                           mode="oakParagraphContent"/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="o:Body"
                mode="oakParagraphContent">
    <xsl:element name="tbody">
      <xsl:call-template name="oakMaybeType"/>
      <xsl:apply-templates select="child::node()"
                           mode="oakParagraphContent"/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="o:Table"
                mode="oakParagraphContent">
    <xsl:element name="table">
      <xsl:call-template name="oakMaybeType"/>
      <xsl:apply-templates select="child::node()"
                           mode="oakParagraphContent"/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="o:Item"
                mode="oakParagraphContent">
    <xsl:element name="li">
      <xsl:call-template name="oakMaybeType"/>
      <xsl:apply-templates select="child::node()"
                           mode="oakParagraphContent"/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="o:UnorderedList"
                mode="oakParagraphContent">
    <xsl:element name="ul">
      <xsl:call-template name="oakMaybeType"/>
      <xsl:apply-templates select="child::node()"
                           mode="oakParagraphContent"/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="o:OrderedList"
                mode="oakParagraphContent">
    <xsl:element name="ol">
      <xsl:call-template name="oakMaybeType"/>
      <xsl:apply-templates select="child::node()"
                           mode="oakParagraphContent"/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="o:FootnoteReference"
                mode="oakParagraphContent">
    <xsl:element name="a">
      <xsl:attribute name="id">
        <xsl:value-of select="generate-id()"/>
      </xsl:attribute>
      <xsl:attribute name="href">
        <xsl:value-of select="concat('#id_', @ref)"/>
      </xsl:attribute>
      <xsl:variable name="oakFootnote">
        <xsl:value-of select="key('FootnoteKey',@ref)"/>
      </xsl:variable>
      <xsl:variable name="oakIndex">
        <xsl:number select="key('FootnoteKey',@ref)"/>
      </xsl:variable>
      <xsl:value-of select="concat('[',normalize-space($oakIndex),']')"/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="o:Image"
                mode="oakParagraphContent">
    <xsl:element name="a">
      <xsl:attribute name="href">
        <xsl:value-of select="@source"/>
      </xsl:attribute>
      <xsl:attribute name="title">
        <xsl:value-of select="@title"/>
      </xsl:attribute>
      <xsl:element name="img">
        <xsl:attribute name="class">
          <xsl:value-of select="'oakImage'"/>
        </xsl:attribute>
        <xsl:attribute name="alt">
          <xsl:value-of select="@title"/>
        </xsl:attribute>
        <xsl:attribute name="src">
          <xsl:value-of select="@source"/>
        </xsl:attribute>
      </xsl:element>
    </xsl:element>
  </xsl:template>

  <xsl:template match="o:Subsection"
                mode="oakTableOfContents">
    <li>
      <xsl:element name="a">
        <xsl:attribute name="href">
          <xsl:value-of select="concat('#id_', @id)"/>
        </xsl:attribute>
        <xsl:variable name="oakNumber">
          <xsl:number level="multiple"
                      select="."
                      count="o:Section|o:Subsection"/>
        </xsl:variable>
        <xsl:value-of select="concat($oakNumber,' ',@title)"/>
      </xsl:element>
      <xsl:choose>
        <xsl:when test="count(o:Subsection) > 0">
          <ul>
            <xsl:apply-templates select="o:Subsection"
                                 mode="oakTableOfContents"/>
          </ul>
        </xsl:when>
      </xsl:choose>
    </li>
  </xsl:template>

  <xsl:template match="o:Section"
                mode="oakTableOfContents">
    <li>
      <xsl:element name="a">
        <xsl:attribute name="href">
          <xsl:value-of select="concat('#id_', @id)"/>
        </xsl:attribute>
        <xsl:variable name="oakNumber">
          <xsl:number level="multiple"
                      select="."
                      count="o:Section|o:Subsection"/>
        </xsl:variable>
        <xsl:value-of select="concat($oakNumber,' ',@title)"/>
      </xsl:element>
      <xsl:choose>
        <xsl:when test="count(o:Subsection) > 0">
          <ul>
            <xsl:apply-templates select="o:Subsection"
                                 mode="oakTableOfContents"/>
          </ul>
        </xsl:when>
      </xsl:choose>
    </li>
  </xsl:template>

  <xsl:template name="oakBranding">
    <xsl:choose>
      <xsl:when test="$oakleafBranding">
        <xsl:copy-of select="document($oakleafBranding)/*"/>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="o:Article">
    <xsl:result-document href="index.xhtml"
                         format="xml">
      <html xml:lang="en"
            lang="en">
        <head>
          <meta http-equiv="content-type"
                content="application/xhtml+xml; charset=utf-8"/>

          <xsl:copy-of select="document('version.xml')"/>

          <link rel="stylesheet"
                type="text/css"
                href="reset.css"/>
          <link rel="stylesheet"
                type="text/css"
                href="oakleaf.css"/>
          <link rel="stylesheet"
                type="text/css"
                href="document.css"/>

          <link rel="schema.DC"
                href="http://purl.org/dc/elements/1.1/"/>
          <xsl:apply-templates select="o:Metadata/*"
                               mode="oakMetadataHeader"/>

          <title>
            <xsl:value-of select="o:Metadata/dc:title"/>
          </title>
        </head>
        <body>
          <div id="oakBrandingHeader">
            <xsl:comment>Branding Header</xsl:comment>
            <xsl:call-template name="oakBranding"/>
          </div>

          <div id="oakHeader">
            <xsl:comment>Header</xsl:comment>
            <h1>
              <xsl:value-of select="o:Metadata/dc:title"/>
            </h1>
            <table class="oakMetadataTable">
              <xsl:apply-templates select="o:Metadata/*"
                                   mode="oakMetadataRow"/>
            </table>
          </div>

          <div id="oakOverview">
            <xsl:apply-templates select="o:Overview"/>
          </div>

          <div id="oakTableOfContents">
            <h2>Table Of Contents</h2>
            <ul>
              <xsl:apply-templates select="o:Section"
                                   mode="oakTableOfContents"/>
            </ul>
          </div>

          <div id="oakMain">
            <xsl:comment>Main Content</xsl:comment>
            <xsl:apply-templates select="o:Section|o:Paragraph"/>
          </div>

          <xsl:apply-templates select="o:Footnotes"/>

          <div id="oakFooter">
            <xsl:comment>Footer</xsl:comment>
          </div>

          <div id="oakBrandingFooter">
            <xsl:comment>Branding Header</xsl:comment>
            <xsl:call-template name="oakBranding"/>
          </div>
        </body>
      </html>
    </xsl:result-document>
  </xsl:template>

  <xsl:template match="o:Footnote">
    <div class="oakFootnoteContainer">
      <div class="oakFootnoteNumber">
        <xsl:element name="a">
          <xsl:attribute name="id">
            <xsl:value-of select="concat('id_', @id)"/>
          </xsl:attribute>
          <xsl:attribute name="href">
            <xsl:value-of select="concat('#id_', @id)"/>
          </xsl:attribute>
          <xsl:variable name="oakNumber">
            <xsl:number level="single"
                        select="."
                        count="o:Footnote"/>
          </xsl:variable>
          <xsl:value-of select="concat('[',$oakNumber,']')"/>
        </xsl:element>
      </div>
      <div class="oakFootnoteContent">
        <div>
          <xsl:apply-templates select="child::node()"
                               mode="oakParagraphContent"/>
        </div>
        <xsl:choose>
          <xsl:when test="count(key('FootnoteReferenceKey',@id)) > 0">
            <div>
              <h4>Footnote References</h4>
              <ul>
                <xsl:for-each select="key('FootnoteReferenceKey',@id)">
                  <li>
                    <xsl:element name="a">
                      <xsl:attribute name="href">
                        <xsl:value-of select="concat('#', generate-id(.))"/>
                      </xsl:attribute>
                      <xsl:number select="."
                                  count="o:Section|o:Subsection|o:Paragraph|o:FormalItem|o:FootnoteReference"
                                  level="multiple"/>
                    </xsl:element>
                  </li>
                </xsl:for-each>
              </ul>
            </div>
          </xsl:when>
        </xsl:choose>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="o:Footnotes">
    <xsl:choose>
      <xsl:when test="count(o:Footnote) > 0">
        <div id="oakFootnotes">
          <h3>Footnotes</h3>
          <xsl:apply-templates select="o:Footnote"/>
        </div>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="o:Overview">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="o:Paragraph">
    <div class="oakParagraph">
      <div class="oakParagraphNumber">
        <xsl:choose>
          <xsl:when test="@id">
            <xsl:element name="a">
              <xsl:attribute name="id">
                <xsl:value-of select="concat('id_', @id)"/>
              </xsl:attribute>
              <xsl:attribute name="href">
                <xsl:value-of select="concat('#id_', @id)"/>
              </xsl:attribute>
              <xsl:number select="."
                          count="o:Paragraph|o:FormalItem"/>
            </xsl:element>
          </xsl:when>
          <xsl:otherwise>
            <xsl:element name="a">
              <xsl:variable name="oakId">
                <xsl:value-of select="generate-id(.)"/>
              </xsl:variable>
              <xsl:attribute name="id">
                <xsl:value-of select="$oakId"/>
              </xsl:attribute>
              <xsl:attribute name="href">
                <xsl:value-of select="concat('#', $oakId)"/>
              </xsl:attribute>
              <xsl:number select="."
                          count="o:Paragraph|o:FormalItem"/>
            </xsl:element>
          </xsl:otherwise>
        </xsl:choose>
      </div>

      <div class="oakParagraphContent">
        <xsl:apply-templates select="child::node()"
                             mode="oakParagraphContent"/>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="o:FormalItem">
    <div class="oakFormalItemHeader">
      <span class="oakFormalItemNumber">
        <xsl:choose>
          <xsl:when test="@id">
            <xsl:element name="a">
              <xsl:attribute name="id">
                <xsl:value-of select="concat('id_', @id)"/>
              </xsl:attribute>
              <xsl:attribute name="href">
                <xsl:value-of select="concat('#id_', @id)"/>
              </xsl:attribute>
              <xsl:number select="."
                          count="o:Paragraph|o:FormalItem"/>
            </xsl:element>
          </xsl:when>
          <xsl:otherwise>
            <xsl:element name="a">
              <xsl:variable name="oakId">
                <xsl:value-of select="generate-id(.)"/>
              </xsl:variable>
              <xsl:attribute name="id">
                <xsl:value-of select="$oakId"/>
              </xsl:attribute>
              <xsl:attribute name="href">
                <xsl:value-of select="concat('#', $oakId)"/>
              </xsl:attribute>
              <xsl:number select="."
                          count="o:Paragraph|o:FormalItem"/>
            </xsl:element>
          </xsl:otherwise>
        </xsl:choose>
      </span>
      <span class="oakFormalItemTitle">
        <xsl:variable name="oakNumber">
          <xsl:number select="."
                      level="multiple"
                      count="o:Section|o:Subsection|o:Paragraph|o:FormalItem"/>
        </xsl:variable>
        <xsl:value-of select="concat($oakNumber,' ',@title)"/>
      </span>
    </div>

    <div class="oakFormalItemContent">
      <div class="oakFormalItemContentMargin">
        <xsl:comment>Margin</xsl:comment>
      </div>
      <div class="oakFormalItemContentMain">
        <xsl:apply-templates select="child::node()"
                             mode="oakParagraphContent"/>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="o:Section">
    <h2 class="oakSectionHeader">
      <span class="oakSectionNumber">
        <xsl:element name="a">
          <xsl:attribute name="id">
            <xsl:value-of select="concat('id_', @id)"/>
          </xsl:attribute>
          <xsl:attribute name="href">
            <xsl:value-of select="concat('#id_', @id)"/>
          </xsl:attribute>
          <xsl:number select="."/>
        </xsl:element>
      </span>
      <span class="oakSectionTitle">
        <xsl:element name="a">
          <xsl:variable name="oakId"
                        select="generate-id(.)"/>
          <xsl:attribute name="id">
            <xsl:value-of select="$oakId"/>
          </xsl:attribute>
          <xsl:attribute name="href">
            <xsl:value-of select="concat('#', $oakId)"/>
          </xsl:attribute>
          <xsl:value-of select="@title"/>
        </xsl:element>
      </span>
    </h2>

    <xsl:apply-templates select="o:Subsection|o:Paragraph|o:FormalItem"/>
  </xsl:template>

  <xsl:template match="o:Subsection">
    <h3 class="oakSubsectionHeader">
      <span class="oakSubsectionNumber">
        <xsl:element name="a">
          <xsl:attribute name="id">
            <xsl:value-of select="concat('id_', @id)"/>
          </xsl:attribute>
          <xsl:attribute name="href">
            <xsl:value-of select="concat('#id_', @id)"/>
          </xsl:attribute>
          <xsl:number level="multiple"
                      select="."
                      count="o:Section|o:Subsection"/>
        </xsl:element>
      </span>
      <span class="oakSubsectionTitle">
        <xsl:element name="a">
          <xsl:variable name="oakId"
                        select="generate-id(.)"/>
          <xsl:attribute name="id">
            <xsl:value-of select="$oakId"/>
          </xsl:attribute>
          <xsl:attribute name="href">
            <xsl:value-of select="concat('#', $oakId)"/>
          </xsl:attribute>
          <xsl:value-of select="@title"/>
        </xsl:element>
      </span>
    </h3>

    <xsl:apply-templates select="o:Subsection|o:Paragraph|o:FormalItem"/>
  </xsl:template>

</xsl:stylesheet>