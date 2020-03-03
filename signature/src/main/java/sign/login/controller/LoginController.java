package sign.login.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
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
	public void snsLogin(@RequestParam String id,
						 @RequestParam String nickName,
						 @RequestParam String email,
						 Map<String, String> map,
						 HttpSession session) {
		
		map.put("id", id);
		map.put("nickName", nickName);
		map.put("email", email);
		System.out.println("map = "+map);
		
		//dto 생성할차례
	}
}
