package com.movie.damovie.customer.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.movie.damovie.customer.vo.CustomerMovieVO;
import com.movie.damovie.customer.vo.CustomerSeatVO;
import com.movie.damovie.customer.vo.CustomerTheaterVO;


@Repository("customerDAO")
public class CustomerDAO {
	
	@Autowired
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;

	}
	
	public int addMovie(CustomerMovieVO customerMovieVO) {
		Map<String,String> theater_num_distinct = new HashMap<String,String>();
		theater_num_distinct.put("company", customerMovieVO.getCompany());
		theater_num_distinct.put("theater_name", customerMovieVO.getTheater_name());
		
		int movieResult = 0;
		String result = "";
		List<String> distinct = sqlSession.selectList("mapper.customer.selectTheaterNum_Already", theater_num_distinct);
		for(int i =0; i< distinct.size();i++) {
			if(distinct.get(i) != null && distinct.get(i).equals(customerMovieVO.getTheater_num())) {
					sqlSession.update("mapper.customer.movieUpdate",customerMovieVO);
					result = "update";
					} 
		}
		 if(!result.equals("update")) {
			movieResult = sqlSession.insert("mapper.customer.insertMovie", customerMovieVO);
		}

		
		return movieResult;
	}
	
	public int addTheater(CustomerTheaterVO customerTheaterVO) {
		int theaterResult = sqlSession.insert("mapper.customer.insertTime", customerTheaterVO);
		System.out.println(theaterResult);
		return theaterResult;
	}
	
	public int addSeat(String company,String theater_name,String theater_num,String seatrow,String seatcol, String seat_state,String datasolt) {
		Map<String,String> seatData = new HashMap<String,String>();
		seatData.put("company", company);
		seatData.put("theater_name", theater_name);
		seatData.put("theater_num", theater_num);
		seatData.put("seatrow", seatrow);
		seatData.put("seatcol", seatcol);
		seatData.put("seat_state", seat_state);
		seatData.put("datasolt", datasolt);
		
		int seatResult = sqlSession.insert("mapper.customer.insertSeat", seatData);
		System.out.println(seatResult);
		return seatResult;
	}
	
	public List<String> theater_Seat_distinct(String company,String theater_name) throws DataAccessException {
		Map<String,String> theater_Seat_distinct = new HashMap<String,String>();
		theater_Seat_distinct.put("company", company);
		theater_Seat_distinct.put("theater_name", theater_name);
		
		List<String> distinct = sqlSession.selectList("mapper.customer.selectTheaterSeat_Already", theater_Seat_distinct);

		return distinct;
	}
	
	public String selectCompanyName_sub(String id) throws DataAccessException {
		String company = sqlSession.selectOne("mapper.customer.selectCompanyName_sub", id);

		return company;
	}
	
	public List<String> selectSeatRow_sub(String company,String theater_name,String theater_num) throws DataAccessException {
		Map<String,String> seatInfo = new HashMap<String,String>();
		seatInfo.put("company", company);
		seatInfo.put("theater_name", theater_name);
		seatInfo.put("theater_num", theater_num);
		List<String> seatRow = sqlSession.selectList("mapper.customer.selectseatRow_sub", seatInfo);

		return seatRow;
	}
	
	public List<String> selectSeatCol_sub(String company,String theater_name,String theater_num) throws DataAccessException {
		Map<String,String> seatInfo = new HashMap<String,String>();
		seatInfo.put("company", company);
		seatInfo.put("theater_name", theater_name);
		seatInfo.put("theater_num", theater_num);
		List<String> seatCol = sqlSession.selectList("mapper.customer.selectseatCol_sub", seatInfo);

		return seatCol;
	}
	
	public List<String> selectSeat_State_sub(String company,String theater_name,String theater_num) throws DataAccessException {
		Map<String,String> seatInfo = new HashMap<String,String>();
		seatInfo.put("company", company);
		seatInfo.put("theater_name", theater_name);
		seatInfo.put("theater_num", theater_num);
		List<String> seat_state = sqlSession.selectList("mapper.customer.selectseat_State_sub", seatInfo);

		return seat_state;
	}
	
	public List<String> selectTheaterName_sub(String id) throws DataAccessException {
		List<String> TheaterName = sqlSession.selectList("mapper.customer.selectTheaterName_sub", id);

		return TheaterName;
	}
	
	public List<String> selectTheaterNum_sub(String id) throws DataAccessException {
		List<String> TheaterNum = sqlSession.selectList("mapper.customer.selectTheaterNum_sub", id);

		return TheaterNum;
	}

	
	public List<String> selectTheaterNum_notTime(String company,String theater_name) throws DataAccessException {
		Map<String,String> theaterNum_nottime = new HashMap<String,String>();
		theaterNum_nottime.put("company", company);
		theaterNum_nottime.put("theater_name", theater_name);

		List<String> TheaterNum = sqlSession.selectList("mapper.customer.selectTheaterNum_notTime",theaterNum_nottime);


		return TheaterNum;

	}
	
	public List<String> selectTheaterNum_seat(String company,String theater_name) throws DataAccessException {
		Map<String,String> theaterNum_nottime = new HashMap<String,String>();
		theaterNum_nottime.put("company", company);
		theaterNum_nottime.put("theater_name", theater_name);

		List<String> TheaterNum = sqlSession.selectList("mapper.customer.selectTheaterNum_seat",theaterNum_nottime);


		return TheaterNum;

	}
	
	public List<CustomerTheaterVO> selectTheaterList(String theaterName) throws DataAccessException {
		List<CustomerTheaterVO> theaterList = sqlSession.selectList("mapper.customer.selectTheaterList", theaterName);
		
		return theaterList;

	}
	public List<CustomerMovieVO> listALL(String id, int start, int end, String searchOption, String keyword) {
		//검색옵션, 키워드 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		//BETWEEN #{start}, #{end}에 입력될 값 앱에 넣기
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("mapper.customer.listAll",map);
	}

	public int countArticle(String id, String searchOption, String keyword) {
		// 검색옵션, 키워드 맵에 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return sqlSession.selectOne("mapper.customer.countArticle", map);

	}

	public void movieDelete(CustomerMovieVO vo) {
		sqlSession.delete("mapper.customer.movieDelete",vo);
	}

	public List<String> movieList(String id) {
		return sqlSession.selectList("mapper.customer.movieList",id);
	}
	// 영화 업데이트
	public void movieUpdate(CustomerMovieVO vo) {
		sqlSession.update("mapper.customer.movieUpdate",vo);
	}
	

	public int ConfirmTimeMod(CustomerTheaterVO vo) {
		return sqlSession.update("mapper.customer.ConfirmTimeMod",vo);
	}
	public int ConfirmTimeDel(CustomerTheaterVO vo) {
		
		return sqlSession.delete("mapper.customer.ConfirmTimeDel",vo);
	}

	// 좌석 업데이트
	public void seatUpdate(String seat_state,String company,String theater_name,String theater_num,String seatrow,String seatcol) {
		Map<String,String> updateSeatInfo = new HashMap<String,String>();
		updateSeatInfo.put("seat_state", seat_state);
		updateSeatInfo.put("company", company);
		updateSeatInfo.put("theater_name", theater_name);
		updateSeatInfo.put("theater_num", theater_num);
		updateSeatInfo.put("seatrow", seatrow);
		updateSeatInfo.put("seatcol", seatcol);
		
		
		sqlSession.update("mapper.customer.seatUpdate",updateSeatInfo);
	}
	
	public void seatDelete(String company , String theater_name, String theater_num) {
		Map<String,String> theater_Seat_distinct = new HashMap<String,String>();
		theater_Seat_distinct.put("company", company);
		theater_Seat_distinct.put("theater_name", theater_name);
		theater_Seat_distinct.put("theater_num", theater_num);
		
		sqlSession.delete("mapper.customer.seatDelete",theater_Seat_distinct);
	}

}