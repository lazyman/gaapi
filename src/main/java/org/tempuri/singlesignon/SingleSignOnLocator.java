/**
 * SingleSignOnLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.tempuri.singlesignon;

public class SingleSignOnLocator extends org.apache.axis.client.Service implements org.tempuri.singlesignon.SingleSignOn {

    public SingleSignOnLocator() {
    }


    public SingleSignOnLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public SingleSignOnLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for SingleSignOnSoap12
    private java.lang.String SingleSignOnSoap12_address = "http://10.123.123.125:9000/CommonService/SingleSignOn.asmx";

    public java.lang.String getSingleSignOnSoap12Address() {
        return SingleSignOnSoap12_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String SingleSignOnSoap12WSDDServiceName = "SingleSignOnSoap12";

    public java.lang.String getSingleSignOnSoap12WSDDServiceName() {
        return SingleSignOnSoap12WSDDServiceName;
    }

    public void setSingleSignOnSoap12WSDDServiceName(java.lang.String name) {
        SingleSignOnSoap12WSDDServiceName = name;
    }

    public org.tempuri.singlesignon.SingleSignOnSoap getSingleSignOnSoap12() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(SingleSignOnSoap12_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getSingleSignOnSoap12(endpoint);
    }

    public org.tempuri.singlesignon.SingleSignOnSoap getSingleSignOnSoap12(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            org.tempuri.singlesignon.SingleSignOnSoap12Stub _stub = new org.tempuri.singlesignon.SingleSignOnSoap12Stub(portAddress, this);
            _stub.setPortName(getSingleSignOnSoap12WSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setSingleSignOnSoap12EndpointAddress(java.lang.String address) {
        SingleSignOnSoap12_address = address;
    }


    // Use to get a proxy class for SingleSignOnSoap
    private java.lang.String SingleSignOnSoap_address = "http://10.123.123.125:9000/CommonService/SingleSignOn.asmx";

    public java.lang.String getSingleSignOnSoapAddress() {
        return SingleSignOnSoap_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String SingleSignOnSoapWSDDServiceName = "SingleSignOnSoap";

    public java.lang.String getSingleSignOnSoapWSDDServiceName() {
        return SingleSignOnSoapWSDDServiceName;
    }

    public void setSingleSignOnSoapWSDDServiceName(java.lang.String name) {
        SingleSignOnSoapWSDDServiceName = name;
    }

    public org.tempuri.singlesignon.SingleSignOnSoap getSingleSignOnSoap() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(SingleSignOnSoap_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getSingleSignOnSoap(endpoint);
    }

    public org.tempuri.singlesignon.SingleSignOnSoap getSingleSignOnSoap(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            org.tempuri.singlesignon.SingleSignOnSoapStub _stub = new org.tempuri.singlesignon.SingleSignOnSoapStub(portAddress, this);
            _stub.setPortName(getSingleSignOnSoapWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setSingleSignOnSoapEndpointAddress(java.lang.String address) {
        SingleSignOnSoap_address = address;
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
            if (org.tempuri.singlesignon.SingleSignOnSoap.class.isAssignableFrom(serviceEndpointInterface)) {
                org.tempuri.singlesignon.SingleSignOnSoap12Stub _stub = new org.tempuri.singlesignon.SingleSignOnSoap12Stub(new java.net.URL(SingleSignOnSoap12_address), this);
                _stub.setPortName(getSingleSignOnSoap12WSDDServiceName());
                return _stub;
            }
            if (org.tempuri.singlesignon.SingleSignOnSoap.class.isAssignableFrom(serviceEndpointInterface)) {
                org.tempuri.singlesignon.SingleSignOnSoapStub _stub = new org.tempuri.singlesignon.SingleSignOnSoapStub(new java.net.URL(SingleSignOnSoap_address), this);
                _stub.setPortName(getSingleSignOnSoapWSDDServiceName());
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
        if ("SingleSignOnSoap12".equals(inputPortName)) {
            return getSingleSignOnSoap12();
        }
        else if ("SingleSignOnSoap".equals(inputPortName)) {
            return getSingleSignOnSoap();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://tempuri.org/", "SingleSignOn");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://tempuri.org/", "SingleSignOnSoap12"));
            ports.add(new javax.xml.namespace.QName("http://tempuri.org/", "SingleSignOnSoap"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("SingleSignOnSoap12".equals(portName)) {
            setSingleSignOnSoap12EndpointAddress(address);
        }
        else 
if ("SingleSignOnSoap".equals(portName)) {
            setSingleSignOnSoapEndpointAddress(address);
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
