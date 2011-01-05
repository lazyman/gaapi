package org.tempuri.singlesignon;

public class SingleSignOnSoapProxy implements org.tempuri.singlesignon.SingleSignOnSoap {
  private String _endpoint = null;
  private org.tempuri.singlesignon.SingleSignOnSoap singleSignOnSoap = null;
  
  public SingleSignOnSoapProxy() {
    _initSingleSignOnSoapProxy();
  }
  
  public SingleSignOnSoapProxy(String endpoint) {
    _endpoint = endpoint;
    _initSingleSignOnSoapProxy();
  }
  
  private void _initSingleSignOnSoapProxy() {
    try {
      singleSignOnSoap = (new org.tempuri.singlesignon.SingleSignOnLocator()).getSingleSignOnSoap();
      if (singleSignOnSoap != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)singleSignOnSoap)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)singleSignOnSoap)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (singleSignOnSoap != null)
      ((javax.xml.rpc.Stub)singleSignOnSoap)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public org.tempuri.singlesignon.SingleSignOnSoap getSingleSignOnSoap() {
    if (singleSignOnSoap == null)
      _initSingleSignOnSoapProxy();
    return singleSignOnSoap;
  }
  
  public org.tempuri.singlesignon.IdentifyUserAuthorityResponseIdentifyUserAuthorityResult identifyUserAuthority(java.lang.String strUserName, java.lang.String strPassWord, java.lang.String strAppID) throws java.rmi.RemoteException{
    if (singleSignOnSoap == null)
      _initSingleSignOnSoapProxy();
    return singleSignOnSoap.identifyUserAuthority(strUserName, strPassWord, strAppID);
  }
  
  public org.tempuri.singlesignon.GetUserAppSystemsResponseGetUserAppSystemsResult getUserAppSystems(java.lang.String strUserId) throws java.rmi.RemoteException{
    if (singleSignOnSoap == null)
      _initSingleSignOnSoapProxy();
    return singleSignOnSoap.getUserAppSystems(strUserId);
  }
  
  public org.tempuri.singlesignon.GetRolesByUserIDResponseGetRolesByUserIDResult getRolesByUserID(java.lang.String strUserId, java.lang.String strAppID) throws java.rmi.RemoteException{
    if (singleSignOnSoap == null)
      _initSingleSignOnSoapProxy();
    return singleSignOnSoap.getRolesByUserID(strUserId, strAppID);
  }
  
  public org.tempuri.singlesignon.CreateSignOnTokenResponseCreateSignOnTokenResult createSignOnToken(java.lang.String strUserName) throws java.rmi.RemoteException{
    if (singleSignOnSoap == null)
      _initSingleSignOnSoapProxy();
    return singleSignOnSoap.createSignOnToken(strUserName);
  }
  
  public org.tempuri.singlesignon.IdentifySignOnTokenResponseIdentifySignOnTokenResult identifySignOnToken(java.lang.String strTokenID) throws java.rmi.RemoteException{
    if (singleSignOnSoap == null)
      _initSingleSignOnSoapProxy();
    return singleSignOnSoap.identifySignOnToken(strTokenID);
  }
  
  public org.tempuri.singlesignon.DeleteSingnOnTokenResponseDeleteSingnOnTokenResult deleteSingnOnToken(java.lang.String strTokenID) throws java.rmi.RemoteException{
    if (singleSignOnSoap == null)
      _initSingleSignOnSoapProxy();
    return singleSignOnSoap.deleteSingnOnToken(strTokenID);
  }
  
  
}