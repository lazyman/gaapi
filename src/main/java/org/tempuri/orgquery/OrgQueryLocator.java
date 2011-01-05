/**
 * OrgQueryLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.tempuri.orgquery;

public class OrgQueryLocator extends org.apache.axis.client.Service implements org.tempuri.orgquery.OrgQuery {

    public OrgQueryLocator() {
    }


    public OrgQueryLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public OrgQueryLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for OrgQuerySoap12
    private java.lang.String OrgQuerySoap12_address = "http://10.123.123.125:9000/CommonService/OrgQuery.asmx";

    public java.lang.String getOrgQuerySoap12Address() {
        return OrgQuerySoap12_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String OrgQuerySoap12WSDDServiceName = "OrgQuerySoap12";

    public java.lang.String getOrgQuerySoap12WSDDServiceName() {
        return OrgQuerySoap12WSDDServiceName;
    }

    public void setOrgQuerySoap12WSDDServiceName(java.lang.String name) {
        OrgQuerySoap12WSDDServiceName = name;
    }

    public org.tempuri.orgquery.OrgQuerySoap getOrgQuerySoap12() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(OrgQuerySoap12_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getOrgQuerySoap12(endpoint);
    }

    public org.tempuri.orgquery.OrgQuerySoap getOrgQuerySoap12(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            org.tempuri.orgquery.OrgQuerySoap12Stub _stub = new org.tempuri.orgquery.OrgQuerySoap12Stub(portAddress, this);
            _stub.setPortName(getOrgQuerySoap12WSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setOrgQuerySoap12EndpointAddress(java.lang.String address) {
        OrgQuerySoap12_address = address;
    }


    // Use to get a proxy class for OrgQuerySoap
    private java.lang.String OrgQuerySoap_address = "http://10.123.123.125:9000/CommonService/OrgQuery.asmx";

    public java.lang.String getOrgQuerySoapAddress() {
        return OrgQuerySoap_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String OrgQuerySoapWSDDServiceName = "OrgQuerySoap";

    public java.lang.String getOrgQuerySoapWSDDServiceName() {
        return OrgQuerySoapWSDDServiceName;
    }

    public void setOrgQuerySoapWSDDServiceName(java.lang.String name) {
        OrgQuerySoapWSDDServiceName = name;
    }

    public org.tempuri.orgquery.OrgQuerySoap getOrgQuerySoap() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(OrgQuerySoap_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getOrgQuerySoap(endpoint);
    }

    public org.tempuri.orgquery.OrgQuerySoap getOrgQuerySoap(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            org.tempuri.orgquery.OrgQuerySoapStub _stub = new org.tempuri.orgquery.OrgQuerySoapStub(portAddress, this);
            _stub.setPortName(getOrgQuerySoapWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setOrgQuerySoapEndpointAddress(java.lang.String address) {
        OrgQuerySoap_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     * This service has multiple ports for a given interface;
     * the proxy implementation returned may be indeterminate.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (org.tempuri.orgquery.OrgQuerySoap.class.isAssignableFrom(serviceEndpointInterface)) {
                org.tempuri.orgquery.OrgQuerySoap12Stub _stub = new org.tempuri.orgquery.OrgQuerySoap12Stub(new java.net.URL(OrgQuerySoap12_address), this);
                _stub.setPortName(getOrgQuerySoap12WSDDServiceName());
                return _stub;
            }
            if (org.tempuri.orgquery.OrgQuerySoap.class.isAssignableFrom(serviceEndpointInterface)) {
                org.tempuri.orgquery.OrgQuerySoapStub _stub = new org.tempuri.orgquery.OrgQuerySoapStub(new java.net.URL(OrgQuerySoap_address), this);
                _stub.setPortName(getOrgQuerySoapWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("OrgQuerySoap12".equals(inputPortName)) {
            return getOrgQuerySoap12();
        }
        else if ("OrgQuerySoap".equals(inputPortName)) {
            return getOrgQuerySoap();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://tempuri.org/", "OrgQuery");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://tempuri.org/", "OrgQuerySoap12"));
            ports.add(new javax.xml.namespace.QName("http://tempuri.org/", "OrgQuerySoap"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("OrgQuerySoap12".equals(portName)) {
            setOrgQuerySoap12EndpointAddress(address);
        }
        else 
if ("OrgQuerySoap".equals(portName)) {
            setOrgQuerySoapEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
