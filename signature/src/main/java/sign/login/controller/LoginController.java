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
	
	//로그인
	@RequestMapping(value="/shop/page/login", method=RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/shop/page/login.jsp");
		mav.setViewName("/shop/page/index");
		return mav;
	}
	
	@RequestMapping(value="/shop/page/snsLogin")
	@ResponseBody //json형태로 받을수있음
	public void snsLogin(@RequestParam Map<String, String> map,
						 HttpSession session) {
		
		//map.put("id", id);
		//map.put("nickName", nickName);
		//map.put("email", email);
		System.out.println("map = "+map);
		LoginDTO loginDTO = loginService.getUserBy(map);
		
		if(loginDTO == null) {
			//loginService.writeMember(map);	
			System.out.println("데이터 없음");
		}
		System.out.println("데이터 있음");
	}
}





