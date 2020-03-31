package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserDetailsDAO;
import com.internousdev.ecsite.dto.UserListDTO;
import com.opensymphony.xwork2.ActionSupport;


public class UserDetailsAction extends ActionSupport implements SessionAware {

	private String loginUserId;
	private UserListDTO userListDTO = new UserListDTO();
	private Map<String, Object> session;


	public String execute() throws SQLException {

		UserDetailsDAO userDetailsDAO = new UserDetailsDAO();
		userListDTO = userDetailsDAO.getUserList(loginUserId);
		if(userListDTO.getLoginUserId() == null) {
			userListDTO = null;
		}

		String result = SUCCESS;
		return result;
	}


	public String getLoginUserId() {
		return loginUserId;
	}
	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}

	public UserListDTO getUserListDTO() {
		return userListDTO;
	}
	public void setUserListDTO(UserListDTO userListDTO) {
		this.userListDTO = userListDTO;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public Map<String, Object> getSession() {
		return session;
	}


}

