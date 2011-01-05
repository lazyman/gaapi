/**
 * GetFatherOrgUnitResponse.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.tempuri.orgquery;

public class GetFatherOrgUnitResponse  implements java.io.Serializable {
    private org.tempuri.orgquery.GetFatherOrgUnitResponseGetFatherOrgUnitResult getFatherOrgUnitResult;

    public GetFatherOrgUnitResponse() {
    }

    public GetFatherOrgUnitResponse(
           org.tempuri.orgquery.GetFatherOrgUnitResponseGetFatherOrgUnitResult getFatherOrgUnitResult) {
           this.getFatherOrgUnitResult = getFatherOrgUnitResult;
    }


    /**
     * Gets the getFatherOrgUnitResult value for this GetFatherOrgUnitResponse.
     * 
     * @return getFatherOrgUnitResult
     */
    public org.tempuri.orgquery.GetFatherOrgUnitResponseGetFatherOrgUnitResult getGetFatherOrgUnitResult() {
        return getFatherOrgUnitResult;
    }


    /**
     * Sets the getFatherOrgUnitResult value for this GetFatherOrgUnitResponse.
     * 
     * @param getFatherOrgUnitResult
     */
    public void setGetFatherOrgUnitResult(org.tempuri.orgquery.GetFatherOrgUnitResponseGetFatherOrgUnitResult getFatherOrgUnitResult) {
        this.getFatherOrgUnitResult = getFatherOrgUnitResult;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof GetFatherOrgUnitResponse)) return false;
        GetFatherOrgUnitResponse other = (GetFatherOrgUnitResponse) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.getFatherOrgUnitResult==null && other.getGetFatherOrgUnitResult()==null) || 
             (this.getFatherOrgUnitResult!=null &&
              this.getFatherOrgUnitResult.equals(other.getGetFatherOrgUnitResult())));
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
        if (getGetFatherOrgUnitResult() != null) {
            _hashCode += getGetFatherOrgUnitResult().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(GetFatherOrgUnitResponse.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">GetFatherOrgUnitResponse"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("getFatherOrgUnitResult");
        elemField.setXmlName(new javax.xml.namespace.QName("http://tempuri.org/", "GetFatherOrgUnitResult"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">>GetFatherOrgUnitResponse>GetFatherOrgUnitResult"));
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
