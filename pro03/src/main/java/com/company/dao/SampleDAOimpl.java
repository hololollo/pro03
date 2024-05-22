package com.company.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.dto.Sample;

@Repository
public class SampleDAOimpl implements SampleDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Sample> getSampleList() {
		return sqlSession.selectList("sample.getSampleList");
		
	}

	@Override
	public Sample getSample(int num) {
		return sqlSession.selectOne("sample.getSample", num);
	}

	@Override
	public void insSample(Sample sample) {
		sqlSession.insert("sample.insSample", sample);
		
	}

	@Override
	public void upSample(Sample sample) {
		sqlSession.update("sample.upSample", sample);
		
	}

	@Override
	public void delSample(Sample sample) {
		sqlSession.delete("sample.delSample", sample);
		
	}
	
	
}
