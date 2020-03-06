package sign.login.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sign.login.bean.LoginDTO;
import sign.login.dao.LoginDAO;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginDAO loginDAO;
	
	@Override
	public LoginDTO getUserBy(Map<String, String> map) {
		return loginDAO.getUserBy(map);
	}

	@Override
	public void writeMember(Map<String, String> map) {
		loginDAO.writeMember(map);
	}

}
