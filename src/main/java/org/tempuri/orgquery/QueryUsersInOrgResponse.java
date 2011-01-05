/**
 * QueryUsersInOrgResponse.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.tempuri.orgquery;

public class QueryUsersInOrgResponse  implements java.io.Serializable {
    private org.tempuri.orgquery.QueryUsersInOrgResponseQueryUsersInOrgResult queryUsersInOrgResult;

    public QueryUsersInOrgResponse() {
    }

    public QueryUsersInOrgResponse(
           org.tempuri.orgquery.QueryUsersInOrgResponseQueryUsersInOrgResult queryUsersInOrgResult) {
           this.queryUsersInOrgResult = queryUsersInOrgResult;
    }


    /**
     * Gets the queryUsersInOrgResult value for this QueryUsersInOrgResponse.
     * 
     * @return queryUsersInOrgResult
     */
    public org.tempuri.orgquery.QueryUsersInOrgResponseQueryUsersInOrgResult getQueryUsersInOrgResult() {
        return queryUsersInOrgResult;
    }


    /**
     * Sets the queryUsersInOrgResult value for this QueryUsersInOrgResponse.
     * 
     * @param queryUsersInOrgResult
     */
    public void setQueryUsersInOrgResult(org.tempuri.orgquery.QueryUsersInOrgResponseQueryUsersInOrgResult queryUsersInOrgResult) {
        this.queryUsersInOrgResult = queryUsersInOrgResult;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof QueryUsersInOrgResponse)) return false;
        QueryUsersInOrgResponse other = (QueryUsersInOrgResponse) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.queryUsersInOrgResult==null && other.getQueryUsersInOrgResult()==null) || 
             (this.queryUsersInOrgResult!=null &&
              this.queryUsersInOrgResult.equals(other.getQueryUsersInOrgResult())));
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
        if (getQueryUsersInOrgResult() != null) {
            _hashCode += getQueryUsersInOrgResult().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(QueryUsersInOrgResponse.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">QueryUsersInOrgResponse"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("queryUsersInOrgResult");
        elemField.setXmlName(new javax.xml.namespace.QName("http://tempuri.org/", "QueryUsersInOrgResult"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">>QueryUsersInOrgResponse>QueryUsersInOrgResult"));
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
