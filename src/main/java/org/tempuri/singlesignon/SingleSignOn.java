/**
 * SingleSignOn.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.tempuri.singlesignon;

public interface SingleSignOn extends javax.xml.rpc.Service {
    public java.lang.String getSingleSignOnSoap12Address();

    public org.tempuri.singlesignon.SingleSignOnSoap getSingleSignOnSoap12() throws javax.xml.rpc.ServiceException;

    public org.tempuri.singlesignon.SingleSignOnSoap getSingleSignOnSoap12(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
    public java.lang.String getSingleSignOnSoapAddress();

    public org.tempuri.singlesignon.SingleSignOnSoap getSingleSignOnSoap() throws javax.xml.rpc.ServiceException;

    public org.tempuri.singlesignon.SingleSignOnSoap getSingleSignOnSoap(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
