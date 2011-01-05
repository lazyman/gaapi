package org.tempuri.orgquery;

public class OrgQuerySoapProxy implements org.tempuri.orgquery.OrgQuerySoap {
  private String _endpoint = null;
  private org.tempuri.orgquery.OrgQuerySoap orgQuerySoap = null;
  
  public OrgQuerySoapProxy() {
    _initOrgQuerySoapProxy();
  }
  
  public OrgQuerySoapProxy(String endpoint) {
    _endpoint = endpoint;
    _initOrgQuerySoapProxy();
  }
  
  private void _initOrgQuerySoapProxy() {
    try {
      orgQuerySoap = (new org.tempuri.orgquery.OrgQueryLocator()).getOrgQuerySoap();
      if (orgQuerySoap != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)orgQuerySoap)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)orgQuerySoap)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (orgQuerySoap != null)
      ((javax.xml.rpc.Stub)orgQuerySoap)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public org.tempuri.orgquery.OrgQuerySoap getOrgQuerySoap() {
    if (orgQuerySoap == null)
      _initOrgQuerySoapProxy();
    return orgQuerySoap;
  }
  
  public org.tempuri.orgquery.GetOrgInfoResponseGetOrgInfoResult getOrgInfo(java.lang.String strOrgID) throws java.rmi.RemoteException{
    if (orgQuerySoap == null)
      _initOrgQuerySoapProxy();
    return orgQuerySoap.getOrgInfo(strOrgID);
  }
  
  public org.tempuri.orgquery.GetUserDeparmentResponseGetUserDeparmentResult getUserDeparment(java.lang.String strUserId) throws java.rmi.RemoteException{
    if (orgQuerySoap == null)
      _initOrgQuerySoapProxy();
    return orgQuerySoap.getUserDeparment(strUserId);
  }
  
  public org.tempuri.orgquery.GetSubOrgResponseGetSubOrgResult getSubOrg(java.lang.String strOrgUnitID) throws java.rmi.RemoteException{
    if (orgQuerySoap == null)
      _initOrgQuerySoapProxy();
    return orgQuerySoap.getSubOrg(strOrgUnitID);
  }
  
  public org.tempuri.orgquery.GetFatherOrgUnitResponseGetFatherOrgUnitResult getFatherOrgUnit(java.lang.String strOrgUnitID) throws java.rmi.RemoteException{
    if (orgQuerySoap == null)
      _initOrgQuerySoapProxy();
    return orgQuerySoap.getFatherOrgUnit(strOrgUnitID);
  }
  
  public org.tempuri.orgquery.GetSubUsersResponseGetSubUsersResult getSubUsers(java.lang.String strOrgUnitID) throws java.rmi.RemoteException{
    if (orgQuerySoap == null)
      _initOrgQuerySoapProxy();
    return orgQuerySoap.getSubUsers(strOrgUnitID);
  }
  
  public org.tempuri.orgquery.GetSubOrgUnitsResponseGetSubOrgUnitsResult getSubOrgUnits(java.lang.String strOrgUnitID) throws java.rmi.RemoteException{
    if (orgQuerySoap == null)
      _initOrgQuerySoapProxy();
    return orgQuerySoap.getSubOrgUnits(strOrgUnitID);
  }
  
  public org.tempuri.orgquery.GetUserInfoResponseGetUserInfoResult getUserInfo(java.lang.String strUserName) throws java.rmi.RemoteException{
    if (orgQuerySoap == null)
      _initOrgQuerySoapProxy();
    return orgQuerySoap.getUserInfo(strUserName);
  }
  
  public org.tempuri.orgquery.QueryUsersInOrgResponseQueryUsersInOrgResult queryUsersInOrg(org.tempuri.orgquery.QueryUsersInOrgStrUserCharacter strUserCharacter) throws java.rmi.RemoteException{
    if (orgQuerySoap == null)
      _initOrgQuerySoapProxy();
    return orgQuerySoap.queryUsersInOrg(strUserCharacter);
  }
  
  
}