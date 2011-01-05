/**
 * IdentifySignOnTokenResponse.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.tempuri.singlesignon;

public class IdentifySignOnTokenResponse  implements java.io.Serializable {
    private org.tempuri.singlesignon.IdentifySignOnTokenResponseIdentifySignOnTokenResult identifySignOnTokenResult;

    public IdentifySignOnTokenResponse() {
    }

    public IdentifySignOnTokenResponse(
           org.tempuri.singlesignon.IdentifySignOnTokenResponseIdentifySignOnTokenResult identifySignOnTokenResult) {
           this.identifySignOnTokenResult = identifySignOnTokenResult;
    }


    /**
     * Gets the identifySignOnTokenResult value for this IdentifySignOnTokenResponse.
     * 
     * @return identifySignOnTokenResult
     */
    public org.tempuri.singlesignon.IdentifySignOnTokenResponseIdentifySignOnTokenResult getIdentifySignOnTokenResult() {
        return identifySignOnTokenResult;
    }


    /**
     * Sets the identifySignOnTokenResult value for this IdentifySignOnTokenResponse.
     * 
     * @param identifySignOnTokenResult
     */
    public void setIdentifySignOnTokenResult(org.tempuri.singlesignon.IdentifySignOnTokenResponseIdentifySignOnTokenResult identifySignOnTokenResult) {
        this.identifySignOnTokenResult = identifySignOnTokenResult;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof IdentifySignOnTokenResponse)) return false;
        IdentifySignOnTokenResponse other = (IdentifySignOnTokenResponse) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.identifySignOnTokenResult==null && other.getIdentifySignOnTokenResult()==null) || 
             (this.identifySignOnTokenResult!=null &&
              this.identifySignOnTokenResult.equals(other.getIdentifySignOnTokenResult())));
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
        if (getIdentifySignOnTokenResult() != null) {
            _hashCode += getIdentifySignOnTokenResult().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(IdentifySignOnTokenResponse.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">IdentifySignOnTokenResponse"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("identifySignOnTokenResult");
        elemField.setXmlName(new javax.xml.namespace.QName("http://tempuri.org/", "IdentifySignOnTokenResult"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">>IdentifySignOnTokenResponse>IdentifySignOnTokenResult"));
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
