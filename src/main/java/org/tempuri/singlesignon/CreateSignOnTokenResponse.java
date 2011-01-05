/**
 * CreateSignOnTokenResponse.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.tempuri.singlesignon;

public class CreateSignOnTokenResponse  implements java.io.Serializable {
    private org.tempuri.singlesignon.CreateSignOnTokenResponseCreateSignOnTokenResult createSignOnTokenResult;

    public CreateSignOnTokenResponse() {
    }

    public CreateSignOnTokenResponse(
           org.tempuri.singlesignon.CreateSignOnTokenResponseCreateSignOnTokenResult createSignOnTokenResult) {
           this.createSignOnTokenResult = createSignOnTokenResult;
    }


    /**
     * Gets the createSignOnTokenResult value for this CreateSignOnTokenResponse.
     * 
     * @return createSignOnTokenResult
     */
    public org.tempuri.singlesignon.CreateSignOnTokenResponseCreateSignOnTokenResult getCreateSignOnTokenResult() {
        return createSignOnTokenResult;
    }


    /**
     * Sets the createSignOnTokenResult value for this CreateSignOnTokenResponse.
     * 
     * @param createSignOnTokenResult
     */
    public void setCreateSignOnTokenResult(org.tempuri.singlesignon.CreateSignOnTokenResponseCreateSignOnTokenResult createSignOnTokenResult) {
        this.createSignOnTokenResult = createSignOnTokenResult;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof CreateSignOnTokenResponse)) return false;
        CreateSignOnTokenResponse other = (CreateSignOnTokenResponse) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.createSignOnTokenResult==null && other.getCreateSignOnTokenResult()==null) || 
             (this.createSignOnTokenResult!=null &&
              this.createSignOnTokenResult.equals(other.getCreateSignOnTokenResult())));
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
        if (getCreateSignOnTokenResult() != null) {
            _hashCode += getCreateSignOnTokenResult().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(CreateSignOnTokenResponse.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">CreateSignOnTokenResponse"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("createSignOnTokenResult");
        elemField.setXmlName(new javax.xml.namespace.QName("http://tempuri.org/", "CreateSignOnTokenResult"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">>CreateSignOnTokenResponse>CreateSignOnTokenResult"));
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
