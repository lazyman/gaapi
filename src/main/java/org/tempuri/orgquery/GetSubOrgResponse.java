/**
 * GetSubOrgResponse.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.tempuri.orgquery;

public class GetSubOrgResponse  implements java.io.Serializable {
    private org.tempuri.orgquery.GetSubOrgResponseGetSubOrgResult getSubOrgResult;

    public GetSubOrgResponse() {
    }

    public GetSubOrgResponse(
           org.tempuri.orgquery.GetSubOrgResponseGetSubOrgResult getSubOrgResult) {
           this.getSubOrgResult = getSubOrgResult;
    }


    /**
     * Gets the getSubOrgResult value for this GetSubOrgResponse.
     * 
     * @return getSubOrgResult
     */
    public org.tempuri.orgquery.GetSubOrgResponseGetSubOrgResult getGetSubOrgResult() {
        return getSubOrgResult;
    }


    /**
     * Sets the getSubOrgResult value for this GetSubOrgResponse.
     * 
     * @param getSubOrgResult
     */
    public void setGetSubOrgResult(org.tempuri.orgquery.GetSubOrgResponseGetSubOrgResult getSubOrgResult) {
        this.getSubOrgResult = getSubOrgResult;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof GetSubOrgResponse)) return false;
        GetSubOrgResponse other = (GetSubOrgResponse) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.getSubOrgResult==null && other.getGetSubOrgResult()==null) || 
             (this.getSubOrgResult!=null &&
              this.getSubOrgResult.equals(other.getGetSubOrgResult())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getGetSubOrgResult() != null) {
            _hashCode += getGetSubOrgResult().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(GetSubOrgResponse.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">GetSubOrgResponse"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("getSubOrgResult");
        elemField.setXmlName(new javax.xml.namespace.QName("http://tempuri.org/", "GetSubOrgResult"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">>GetSubOrgResponse>GetSubOrgResult"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
