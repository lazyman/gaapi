/**
 * OrgQuerySoap.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.tempuri.orgquery;

public interface OrgQuerySoap extends java.rmi.Remote {

    /**
     * Get Departmen Details
     */
    public org.tempuri.orgquery.GetOrgInfoResponseGetOrgInfoResult getOrgInfo(java.lang.String strOrgID) throws java.rmi.RemoteException;

    /**
     * Get User's Departmen Details
     */
    public org.tempuri.orgquery.GetUserDeparmentResponseGetUserDeparmentResult getUserDeparment(java.lang.String strUserId) throws java.rmi.RemoteException;

    /**
     * Get Org's All SubOrg And Users
     */
    public org.tempuri.orgquery.GetSubOrgResponseGetSubOrgResult getSubOrg(java.lang.String strOrgUnitID) throws java.rmi.RemoteException;

    /**
     * Get Org's Father Details
     */
    public org.tempuri.orgquery.GetFatherOrgUnitResponseGetFatherOrgUnitResult getFatherOrgUnit(java.lang.String strOrgUnitID) throws java.rmi.RemoteException;

    /**
     * Get Org's All Users
     */
    public org.tempuri.orgquery.GetSubUsersResponseGetSubUsersResult getSubUsers(java.lang.String strOrgUnitID) throws java.rmi.RemoteException;

    /**
     * Get Org's All SubOrg
     */
    public org.tempuri.orgquery.GetSubOrgUnitsResponseGetSubOrgUnitsResult getSubOrgUnits(java.lang.String strOrgUnitID) throws java.rmi.RemoteException;

    /**
     * Get User's Details
     */
    public org.tempuri.orgquery.GetUserInfoResponseGetUserInfoResult getUserInfo(java.lang.String strUserName) throws java.rmi.RemoteException;

    /**
     * Find User's By Condition
     */
    public org.tempuri.orgquery.QueryUsersInOrgResponseQueryUsersInOrgResult queryUsersInOrg(org.tempuri.orgquery.QueryUsersInOrgStrUserCharacter strUserCharacter) throws java.rmi.RemoteException;
}
