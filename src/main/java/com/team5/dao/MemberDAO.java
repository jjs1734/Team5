package com.team5.dao;
//로그인, 회원가입, 회원탈퇴, 회원정보

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.team5.db.DBConnection;
import com.team5.dto.MemberDTO;

public class MemberDAO  {
	
	DBConnection db = DBConnection.getInstance();
	
	public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
			try {
				if(con != null) {
					con.close();
				}
				if(pstmt!=null) {
					pstmt.close();
				}
				if(rs!=null) {
					rs.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	
	public List<MemberDTO> list(){
		List<MemberDTO> result = new ArrayList<MemberDTO>();
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM member";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberDTO d = new MemberDTO();
				d.setMno(rs.getInt(1));
				d.setMid(rs.getString(2));
				d.setMpw(rs.getString(3));
				d.setMname(rs.getString(4));
				d.setMdate(rs.getString(5));
				d.setMgrade(rs.getInt(6));
				result.add(d);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn, pstmt, rs);
		}
		
		return result;
	}

}
