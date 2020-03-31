package com.internousdev.ecsite.action;

import com.opensymphony.xwork2.ActionSupport;

public class UserDeleteConfirmAction extends ActionSupport {

	private String loginUserId;

	public String execute() {

		return SUCCESS;
	}

	public String getLoginUserId() {
		return loginUserId;
	}
	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}

}
