<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 userCSharp" version="1.0" xmlns:s0="http://DeviceMgmtSchemas.TwinSchemaJSON" xmlns:ns0="http://hl7.org/fhir" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:ns2="http://www.w3.org/1999/xhtml" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:JSON" />
  </xsl:template>
  <xsl:template match="/s0:JSON">
    <xsl:variable name="var:v1" select="userCSharp:StringTrimLeft(&quot;http://hl7.org/fhir/uv/pocd/StructureDefinition/ChannelDevice&quot;)" />
    <xsl:variable name="var:v2" select="userCSharp:StringTrimLeft(&quot;generated&quot;)" />
    <xsl:variable name="var:v4" select="userCSharp:StringTrimLeft(&quot;urn:iso:std:iso:11073:10101&quot;)" />
    <xsl:variable name="var:v5" select="userCSharp:StringTrimLeft(&quot;69799&quot;)" />
    <xsl:variable name="var:v6" select="userCSharp:StringTrimLeft(&quot;Device/ECGVmdDevice&quot;)" />
    <ns0:Device>
      <ns0:id>
        <xsl:if test="deviceId">
          <xsl:attribute name="value">
            <xsl:value-of select="deviceId/text()" />
          </xsl:attribute>
        </xsl:if>
      </ns0:id>
      <ns0:meta>
        <ns0:profile>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v1" />
          </xsl:attribute>
        </ns0:profile>
      </ns0:meta>
      <ns0:text>
        <ns0:status>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v2" />
          </xsl:attribute>
        </ns0:status>
        <ns2:div xmlns="http://www.w3.org/1999/xhtml">
          <p><b>Generated Narrative with Details</b></p><p><b>id</b>: ECGChannelDevice</p><p><b>meta</b>: </p><p><b>status</b>: active</p><p><b>type</b>: MDC_DEV_ECG_CHAN <span style="background: LightGoldenRodYellow">(Details : {urn:iso:std:iso:11073:10101 code '69799' = '69799', given as 'MDC_DEV_ECG_CHAN'})</span></p><p>	<b>parent</b>: 
            <a href="Device-ECGVmdDevice.html">Generated Summary: id: ECGVmdDevice; status: active
             MDC_DEV_CARD_RATE_CHAN
          </a></p>
        </ns2:div>
      </ns0:text>
      <xsl:for-each select="properties">
        <xsl:for-each select="reported">
          <ns0:modelNumber>
            <xsl:if test="Model">
              <xsl:attribute name="value">
                <xsl:value-of select="Model/text()" />
              </xsl:attribute>
            </xsl:if>
          </ns0:modelNumber>
        </xsl:for-each>
      </xsl:for-each>
      <xsl:for-each select="properties">
        <xsl:for-each select="reported">
          <ns0:partNumber>
            <xsl:if test="Firmware">
              <xsl:attribute name="value">
                <xsl:value-of select="Firmware/text()" />
              </xsl:attribute>
            </xsl:if>
          </ns0:partNumber>
        </xsl:for-each>
      </xsl:for-each>
      <ns0:type>
        <ns0:coding>
          <ns0:system>
            <xsl:attribute name="value">
              <xsl:value-of select="$var:v4" />
            </xsl:attribute>
          </ns0:system>
          <ns0:code>
            <xsl:attribute name="value">
              <xsl:value-of select="$var:v5" />
            </xsl:attribute>
          </ns0:code>
          <xsl:for-each select="properties">
            <xsl:for-each select="reported">
              <ns0:display>
                <xsl:if test="Type">
                  <xsl:attribute name="value">
                    <xsl:value-of select="Type/text()" />
                  </xsl:attribute>
                </xsl:if>
              </ns0:display>
            </xsl:for-each>
          </xsl:for-each>
        </ns0:coding>
      </ns0:type>
      <ns0:version>
        <xsl:for-each select="properties">
          <xsl:for-each select="reported">
            <ns0:value>
              <xsl:if test="_x0024_version">
                <xsl:attribute name="value">
                  <xsl:value-of select="_x0024_version/text()" />
                </xsl:attribute>
              </xsl:if>
            </ns0:value>
          </xsl:for-each>
        </xsl:for-each>
      </ns0:version>
      <ns0:patient>
        <xsl:for-each select="batch">
          <xsl:for-each select="properties">
            <ns0:reference>
              <xsl:if test="patientid">
                <xsl:attribute name="value">
                  <xsl:value-of select="patientid/text()" />
                </xsl:attribute>
              </xsl:if>
            </ns0:reference>
          </xsl:for-each>
        </xsl:for-each>
      </ns0:patient>
      <ns0:location>
        <xsl:for-each select="properties">
          <xsl:for-each select="reported">
            <ns0:display>
              <xsl:if test="Location">
                <xsl:attribute name="value">
                  <xsl:value-of select="Location/text()" />
                </xsl:attribute>
              </xsl:if>
            </ns0:display>
          </xsl:for-each>
        </xsl:for-each>
      </ns0:location>
      <ns0:parent>
        <ns0:reference>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v6" />
          </xsl:attribute>
        </ns0:reference>
      </ns0:parent>
    </ns0:Device>
  </xsl:template>
  <msxsl:script language="C#" implements-prefix="userCSharp"><![CDATA[
public string StringTrimLeft(string str)
{
	if (str == null)
	{
		return "";
	}
	return str.TrimStart(null);
}



]]></msxsl:script>
</xsl:stylesheet>