package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dao.MemberDAO;
import com.company.dto.Member;

@Service
public class MemberServiceImpl implements MemberService{
    @Autowired
    private MemberDAO memberDAO;

	@Override
	public List<Member> getMemberList() {
		return memberDAO.getMemberList();
	}

	@Override
	public Member getMember(String id) {
		return memberDAO.getMember(id);
	}

	@Override
	public void insMember(Member member) {
		 memberDAO.insMember(member);
	}

	@Override
	public void changePw(Member member) {
        memberDAO.changePw(member);
	}

	@Override
	public void changeInfo(Member member) {
        memberDAO.changeInfo(member);
	}

	@Override
	public void delMember(String id) {
        memberDAO.delMember(id);
	}

	@Override
	public boolean loginCheck(String id) {
		return memberDAO.loginCheck(id);
	}

	@Override
	public boolean idCheck(String id) {
		return memberDAO.idCheck(id);
	}
    
}
