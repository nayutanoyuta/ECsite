package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.ecsite.dto.UserListDTO;
import com.internousdev.ecsite.util.DBConnector;


public class UserDetailsDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();


	public UserListDTO getUserList(String loginUserId) throws SQLException {

		UserListDTO dto = new UserListDTO();

		String sql ="SELECT * FROM login_user_transaction WHERE login_id = ?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginUserId);
			ResultSet rs = ps.executeQuery();

			while(rs.next()) {

				dto.setId(rs.getString("id"));
				dto.setLoginUserId(rs.getString("login_id"));
				dto.setLoginPassword(rs.getString("login_pass"));
				dto.setUserName(rs.getString("user_name"));
				dto.setInsert_date(rs.getString("insert_date"));
				dto.setUpdate_date(rs.getString("update_date"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return dto;
	}

}
