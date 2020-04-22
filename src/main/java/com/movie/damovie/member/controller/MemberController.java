package com.movie.damovie.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.movie.damovie.member.service.MemberService;
import com.movie.damovie.member.vo.MemberVO;


@Controller("memberController")
@EnableAspectJAutoProxy
public class MemberController extends MultiActionController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private MemberVO memberVO;


	@RequestMapping(value="/member/addMember.do", method=RequestMethod.POST)
	public ModelAndView addMember(
		@ModelAttribute("member") MemberVO member,	
		HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
				
		int result = 0;
		result = memberService.addMember(member);
		ModelAndView mav = new ModelAndView("redirect:/member/loginForm.do");
		return mav;
	}
	
	
	@RequestMapping(value= "/member/*Form.do", method=RequestMethod.GET)
	public ModelAndView form(@RequestParam(value="result", required=false) String result,
			@RequestParam(value="action", required=false) String action, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		//String viewName = getViewName(request);
		String viewName = (String)request.getAttribute("viewName");
		HttpSession session = request.getSession();
		session.setAttribute("action", action);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("result", result);
		mav.setViewName(viewName);
		return mav;
	}
	
	
	@RequestMapping(value="/member/login.do", method=RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("member") MemberVO member, RedirectAttributes rAttr,
			HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();
		memberVO = memberService.login(member);
		if(memberVO != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", memberVO);
			session.setAttribute("isLogon", true);
			String action = (String)session.getAttribute("action");
			session.removeAttribute("action");
			if(action !=null) {
				mav.setViewName("redirect:" + action);
			} else {
				mav.setViewName("redirect:/main.do");
			}
		} else {
			rAttr.addAttribute("result","loginFailed");
			mav.setViewName("redirect:/member/loginForm.do");
		}
		return mav;
	}
	
	@RequestMapping(value="/member/logout.do", method=RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		session.removeAttribute("isLogon");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main.do");
		return mav;
	}
	
	
	//https://melonpeach.tistory.com/42 참고 업데이트만듬
	@RequestMapping(value="/mypage/memberUpdateView.do", method=RequestMethod.GET)
	public String registerUpdateView() throws Exception{
		return"mypage/memberUpdateView.do";
	}
	@RequestMapping(value="/mypage/memberUpdate.do",method= RequestMethod.POST)
	public String registerUpdate(MemberVO vo, HttpSession session)throws Exception{
		memberService.memberUpdate(vo);
		//세션 끊고
		session.invalidate();
		//로그인페이지로 돌아가기
		return "redirect:/";
	}
	
	
}
