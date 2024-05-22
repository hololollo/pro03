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
	public Fileboard getFileboard(int bno) {
		return sqlSession.selectOne("fileboard.getFileboard", bno);
	}

	@Override
	public void upFileboard(Fileboard fileboard) {
		sqlSession.insert("fileboard.upFileboard", fileboard);
	}

	@Override
	public void delFileboard(int bno) {
		sqlSession.delete("fileboard.delFileboard", bno);
	}

	@Override
	public void changeInfo(Fileboard fileboard) {
		sqlSession.update("fileboard.changeInfo", fileboard);
	}
	
}
