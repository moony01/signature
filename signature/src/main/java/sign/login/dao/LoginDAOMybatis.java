package sign.login.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import sign.login.bean.LoginDTO;

@Transactional
@Repository("loginDAO")
public class LoginDAOMybatis implements LoginDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public LoginDTO getUserBy(Map<String, String> map) {
		return sqlSession.selectOne("loginSQL.getUserBy", map);
	}

	@Override
	public void writeMember(Map<String, String> map) {
		sqlSession.insert("loginSQL.writeMember", map);
	}

	@Override
	public void signWrite(Map<String, String> map) {
		sqlSession.insert("loginSQL.signWrite", map);
	}


	
	
}
