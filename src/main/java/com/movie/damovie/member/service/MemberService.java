package com.movie.damovie.member.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.movie.damovie.member.vo.MemberVO;



public interface MemberService {

	public int addMember(MemberVO memberVO) throws DataAccessException;

	public MemberVO login(MemberVO member);
	
	public void memberUpdate(MemberVO vo)throws Exception;
	
}
