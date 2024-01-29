package com.team5.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;

import org.mariadb.jdbc.export.Prepare;

import com.poseidon.dto.MemberDTO;

//로그인, 회원가입, 회원탈퇴, 회원정보
public class MemberDAO  {

	public MemberDTO list()) {
		Connection con = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT count(*) FROM member";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getMid());
			pstmt.setString(2, dto.getMpw());

			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setCount(rs.getInt("count"));
				dto.setMname(rs.getString("mname"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rs, pstmt, con);
		}

		return dto;
	}
