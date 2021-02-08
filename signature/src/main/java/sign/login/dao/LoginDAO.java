package sign.login.dao;

import java.util.Map;

import sign.login.bean.LoginDTO;

public interface LoginDAO {

	public LoginDTO getUserBy(Map<String, String> map);
	
	public void writeMember(Map<String, String> map);

	public void signWrite(Map<String, String> map);

	public void memberSignCheck(Map<String, String> map);
}
