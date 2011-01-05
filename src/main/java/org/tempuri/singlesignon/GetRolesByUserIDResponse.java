/**
 * GetRolesByUserIDResponse.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.tempuri.singlesignon;

public class GetRolesByUserIDResponse  implements java.io.Serializable {
    private org.tempuri.singlesignon.GetRolesByUserIDResponseGetRolesByUserIDResult getRolesByUserIDResult;

    public GetRolesByUserIDResponse() {
    }

    public GetRolesByUserIDResponse(
           org.tempuri.singlesignon.GetRolesByUserIDResponseGetRolesByUserIDResult getRolesByUserIDResult) {
           this.getRolesByUserIDResult = getRolesByUserIDResult;
    }


    /**
     * Gets the getRolesByUserIDResult value for this GetRolesByUserIDResponse.
     * 
     * @return getRolesByUserIDResult
     */
    public org.tempuri.singlesignon.GetRolesByUserIDResponseGetRolesByUserIDResult getGetRolesByUserIDResult() {
        return getRolesByUserIDResult;
    }


    /**
     * Sets the getRolesByUserIDResult value for this GetRolesByUserIDResponse.
     * 
     * @param getRolesByUserIDResult
     */
    public void setGetRolesByUserIDResult(org.tempuri.singlesignon.GetRolesByUserIDResponseGetRolesByUserIDResult getRolesByUserIDResult) {
        this.getRolesByUserIDResult = getRolesByUserIDResult;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof GetRolesByUserIDResponse)) return false;
        GetRolesByUserIDResponse other = (GetRolesByUserIDResponse) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.getRolesByUserIDResult==null && other.getGetRolesByUserIDResult()==null) || 
             (this.getRolesByUserIDResult!=null &&
              this.getRolesByUserIDResult.equals(other.getGetRolesByUserIDResult())));
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
        if (getGetRolesByUserIDResult() != null) {
            _hashCode += getGetRolesByUserIDResult().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(GetRolesByUserIDResponse.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">GetRolesByUserIDResponse"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("getRolesByUserIDResult");
        elemField.setXmlName(new javax.xml.namespace.QName("http://tempuri.org/", "GetRolesByUserIDResult"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">>GetRolesByUserIDResponse>GetRolesByUserIDResult"));
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
