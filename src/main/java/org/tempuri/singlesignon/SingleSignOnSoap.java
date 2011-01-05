/**
 * SingleSignOnSoap.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.tempuri.singlesignon;

public interface SingleSignOnSoap extends java.rmi.Remote {

    /**
     * Identify User Authority
     */
    public org.tempuri.singlesignon.IdentifyUserAuthorityResponseIdentifyUserAuthorityResult identifyUserAuthority(java.lang.String strUserName, java.lang.String strPassWord, java.lang.String strAppID) throws java.rmi.RemoteException;

    /**
     * Get User AppSystems Can Access
     */
    public org.tempuri.singlesignon.GetUserAppSystemsResponseGetUserAppSystemsResult getUserAppSystems(java.lang.String strUserId) throws java.rmi.RemoteException;

    /**
     * Get Roles By UserID
     */
    public org.tempuri.singlesignon.GetRolesByUserIDResponseGetRolesByUserIDResult getRolesByUserID(java.lang.String strUserId, java.lang.String strAppID) throws java.rmi.RemoteException;

    /**
     * Create SignOn Token
     */
    public org.tempuri.singlesignon.CreateSignOnTokenResponseCreateSignOnTokenResult createSignOnToken(java.lang.String strUserName) throws java.rmi.RemoteException;

    /**
     * Identify SignOn Token
     */
    public org.tempuri.singlesignon.IdentifySignOnTokenResponseIdentifySignOnTokenResult identifySignOnToken(java.lang.String strTokenID) throws java.rmi.RemoteException;

    /**
     * Delete SingnOn Token
     */
    public org.tempuri.singlesignon.DeleteSingnOnTokenResponseDeleteSingnOnTokenResult deleteSingnOnToken(java.lang.String strTokenID) throws java.rmi.RemoteException;
}
