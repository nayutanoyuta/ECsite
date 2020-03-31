package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite.dto.UserListDTO;
import com.internousdev.ecsite.util.DBConnector;


public class UserListDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();


	public List<UserListDTO> getUserList () throws SQLException {

		List<UserListDTO> userListDTOList = new ArrayList<UserListDTO>();

		String sql ="SELECT * FROM login_user_transaction ORDER BY id";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				UserListDTO dto = new UserListDTO();
				dto.setLoginUserId(rs.getString("login_id"));
				dto.setLoginPassword(rs.getString("login_pass"));
				dto.setUserName(rs.getString("user_name"));
				dto.setInsert_date(rs.getString("insert_date"));
				dto.setUpdate_date(rs.getString("update_date"));
				userListDTOList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return userListDTOList;
	}

}
