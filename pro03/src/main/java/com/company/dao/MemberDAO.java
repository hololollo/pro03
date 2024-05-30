package com.company.dao;

import java.util.List;

import com.company.dto.Member;

public interface MemberDAO {
	public List<Member> getMemberList();
	public Member getMember(String id)  throws IllegalArgumentException;
	public int memberCount();
	public void insMember(Member member);
	public void changePw(String id, String pw);
    public void changeInfo(Member member);
	public void delMember(String id);
	boolean loginCheck(String id);
	boolean idCheck(String id);
}
