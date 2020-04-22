package com.movie.damovie.member.dao;

import java.sql.SQLException;

import org.springframework.dao.DataAccessException;

import com.movie.damovie.member.vo.MemberVO;



public interface MemberDAO {

	public int insertMember(MemberVO memberVO) throws DataAccessException;

	public MemberVO loginById(MemberVO member);

	public void memberUpdate(MemberVO vo)throws Exception;

	
	
}
