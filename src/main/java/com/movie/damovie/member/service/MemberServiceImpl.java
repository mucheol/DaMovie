package com.movie.damovie.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.movie.damovie.member.dao.MemberDAO;
import com.movie.damovie.member.vo.MemberVO;



@Service("memberService")
@Transactional(propagation = Propagation.REQUIRED)
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;


	@Override
	public int addMember(MemberVO memberVO) throws DataAccessException {
		return memberDAO.insertMember(memberVO);
	}

	@Override
	public MemberVO login(MemberVO member) {
		return memberDAO.loginById(member);
	}

	//Controller에서 보내는 파라미터 memeberUpdate(MemberVO vo)로 받고
	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		//받은 vo를 DAO로 전송한다.
		memberDAO.memberUpdate(vo);
	}



}
