package sign.login.service;

import java.util.Map;

import sign.login.bean.LoginDTO;

public interface LoginService {

	public LoginDTO getUserBy(Map<String, String> map);

	public void writeMember(Map<String, String> map);

}
