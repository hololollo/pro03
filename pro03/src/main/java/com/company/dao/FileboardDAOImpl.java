package com.company.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.dto.Fileboard;

@Repository
public class FileboardDAOImpl implements FileboardDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public Fileboard getTotalCount() {
		return sqlSession.selectOne("fileboard.getTotalCount");
	}

	@Override
	public List<Fileboard> getFileboardList() {
		return sqlSession.selectList("fileboard.getFileboardList");
	}

	@Override
	public Fileboard getFileboard(int no) {
		return sqlSession.selectOne("fileboard.getFileboard", no);
	}

	@Override
	public void upFileboard(Fileboard fileboard) {
		sqlSession.insert("fileboard.upFileboard", fileboard);
	}

	@Override
	public void delFileboard(int no) {
		sqlSession.delete("fileboard.delFileboard", no);
	}

	@Override
	public void changeInfo(Fileboard fileboard) {
		sqlSession.update("fileboard.changeInfo", fileboard);
	}
	
}
