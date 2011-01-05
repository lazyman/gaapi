/**
 * DeleteSingnOnTokenResponse.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.tempuri.singlesignon;

public class DeleteSingnOnTokenResponse  implements java.io.Serializable {
    private org.tempuri.singlesignon.DeleteSingnOnTokenResponseDeleteSingnOnTokenResult deleteSingnOnTokenResult;

    public DeleteSingnOnTokenResponse() {
    }

    public DeleteSingnOnTokenResponse(
           org.tempuri.singlesignon.DeleteSingnOnTokenResponseDeleteSingnOnTokenResult deleteSingnOnTokenResult) {
           this.deleteSingnOnTokenResult = deleteSingnOnTokenResult;
    }


    /**
     * Gets the deleteSingnOnTokenResult value for this DeleteSingnOnTokenResponse.
     * 
     * @return deleteSingnOnTokenResult
     */
    public org.tempuri.singlesignon.DeleteSingnOnTokenResponseDeleteSingnOnTokenResult getDeleteSingnOnTokenResult() {
        return deleteSingnOnTokenResult;
    }


    /**
     * Sets the deleteSingnOnTokenResult value for this DeleteSingnOnTokenResponse.
     * 
     * @param deleteSingnOnTokenResult
     */
    public void setDeleteSingnOnTokenResult(org.tempuri.singlesignon.DeleteSingnOnTokenResponseDeleteSingnOnTokenResult deleteSingnOnTokenResult) {
        this.deleteSingnOnTokenResult = deleteSingnOnTokenResult;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof DeleteSingnOnTokenResponse)) return false;
        DeleteSingnOnTokenResponse other = (DeleteSingnOnTokenResponse) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.deleteSingnOnTokenResult==null && other.getDeleteSingnOnTokenResult()==null) || 
             (this.deleteSingnOnTokenResult!=null &&
              this.deleteSingnOnTokenResult.equals(other.getDeleteSingnOnTokenResult())));
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
        if (getDeleteSingnOnTokenResult() != null) {
            _hashCode += getDeleteSingnOnTokenResult().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(DeleteSingnOnTokenResponse.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">DeleteSingnOnTokenResponse"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("deleteSingnOnTokenResult");
        elemField.setXmlName(new javax.xml.namespace.QName("http://tempuri.org/", "DeleteSingnOnTokenResult"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://tempuri.org/", ">>DeleteSingnOnTokenResponse>DeleteSingnOnTokenResult"));
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
