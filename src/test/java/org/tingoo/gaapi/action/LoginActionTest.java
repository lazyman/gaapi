package org.tingoo.gaapi.action;

import junit.framework.TestCase;

public class LoginActionTest extends TestCase {
	private LoginAction loginAction;

	public void setUp() throws Exception {
		loginAction = new LoginAction();
	}

	public void testLogin() {
		loginAction.setUsername("98212402");
		loginAction.setPassword("d87357533");
		
		assertEquals("login", loginAction.login());

		
		loginAction.setPassword("111111");
		assertEquals("fail", loginAction.login());
	}

}
