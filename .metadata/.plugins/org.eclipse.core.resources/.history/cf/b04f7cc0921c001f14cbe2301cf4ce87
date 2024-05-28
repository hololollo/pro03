package com.company.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.dto.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Member> getMemberList() {
		return sqlSession.selectList("member.getMemberList");
	}

	@Override
	public Member getMember(String id) {
		return sqlSession.selectOne("member.getMember", id);
	}

	@Override
	public void insMember(Member member) {
		sqlSession.insert("member.insMember", member);
	}

	@Override
	public void changePw(Member member) {
        sqlSession.update("member.changePw", member);
	}
	
	
	@Override
	public void changeInfo(Member member) {
        sqlSession.update("member.changeInfo", member);
	}

	@Override
	public void delMember(String id) {
        sqlSession.delete("member.delMember", id);
	}

	@Override
	public boolean loginCheck(String id) {
		int count = sqlSession.selectOne("member.changeInfo", id);
	    return count == 0;
	}

	@Override
	public boolean idCheck(String id) {
        int count = sqlSession.selectOne("member.idCheck", id);
        return count == 0;
	}
	
	
}
