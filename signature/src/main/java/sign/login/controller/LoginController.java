package sign.login.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import sign.login.bean.LoginDTO;
import sign.login.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	
	//로그인 페이지
	@RequestMapping(value="/shop/page/login", method=RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/shop/page/login.jsp");
		mav.setViewName("/shop/page/index");
		return mav;
	}
	
	//sns 로그인
	@RequestMapping(value="/shop/page/snsLogin")
	@ResponseBody //json형태로 받을수있음
	public void snsLogin(@RequestParam Map<String, String> map,
	           HttpSession session) {

	  System.out.println("map = "+map);
	  LoginDTO loginDTO = loginService.getUserBy(map);

	  if(loginDTO == null) {
	    System.out.println("데이터 없음");
	    loginService.writeMember(map);
	  } else {
	    System.out.println("데이터 있음");
	  }

	  LoginDTO loginDTO1 = loginService.getUserBy(map);
	  session.setAttribute("memId", loginDTO1.getId());
	  session.setAttribute("memNickName", loginDTO1.getNickName());
	  session.setAttribute("memEmail", loginDTO1.getEmail());

	  System.out.println("session = " + session);
	  
	}
	
	//서명하기
	@RequestMapping(value="/shop/page/goSign")
	@ResponseBody //json형태로 받을수있음
	public ModelAndView goSign(@RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		System.out.println("goSign 진입" + map);
		
		loginService.signWrite(map);
		
		mav.setViewName("/shop/page/goSign");
		return mav;
		
	}
}





