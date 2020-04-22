package com.movie.damovie.member.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.movie.damovie.member.vo.MemberVO;


@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {

	
	@Autowired
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}



	@Override
	public int insertMember(MemberVO memberVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.member.insertMember", memberVO);
		return result;
	}

	@Override
	public MemberVO loginById(MemberVO member) {
		MemberVO vo = sqlSession.selectOne("mapper.member.loginById", member);
		return vo;
	}



	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		//vo에 담긴 파라미터들은 member.xml에 member라는 namespace에
		//아이디가 memberUpdate인 쿼리에 파라미터 넣기
		sqlSession.update("member.memberUpdate",vo);
	}




}
