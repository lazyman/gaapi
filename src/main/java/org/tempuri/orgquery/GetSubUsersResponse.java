/**
 * GetSubUsersResponse.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.tempuri.orgquery;

public class GetSubUsersResponse  implements java.io.Serializable {
    private org.tempuri.orgquery.GetSubUsersResponseGetSubUsersResult getSubUsersResult;

    public GetSubUsersResponse() {
    }

    public GetSubUsersResponse(
           org.tempuri.orgquery.GetSubUsersResponseGetSubUsersResult getSubUsersResult) {
           this.getSubUsersResult = getSubUsersResult;
    }


    /**
     * Gets the getSubUsersResult value for this GetSubUsersResponse.
     * 
     * @return getSubUsersResult
     */
    public org.tempuri.orgquery.GetSubUsersResponseGetSubUsersResult getGetSubUsersResult() {
        return getSubUsersResult;
    }


    /**
     * Sets the getSubUsersResult value for this GetSubUsersResponse.
     * 
     * @param getSubUsersResult
     */
    public void setGetSubUsersResult(org.tempuri.orgquery.GetSubUsersResponseGetSubUsersResult getSubUsersResult) {
        this.getSubUsersResult = getSubUsersResult;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof GetSubUsersResponse)) return false;
        GetSubUsersResponse other = (GetSubUsersResponse) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.getSubUsersResult==null && other.getGetSubUsersResult()==null) || 
             (this.getSubUsersResult!=null &&
              this.getSubUsersResult.equals(other.getGetSubUsersResult())));
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
        if (getGetSubUsersResult() != null) {
            _hashCode += getGetSubUsersResult().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(GetSubUsersResponse.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">GetSubUsersResponse"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("getSubUsersResult");
        elemField.setXmlName(new javax.xml.namespace.QName("http://tempuri.org/", "GetSubUsersResult"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">>GetSubUsersResponse>GetSubUsersResult"));
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
