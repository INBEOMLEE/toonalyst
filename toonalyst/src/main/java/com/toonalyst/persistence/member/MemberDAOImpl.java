package com.toonalyst.persistence.member;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.toonalyst.domain.member.MemberDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class MemberDAOImpl implements MemberDAO{

	
	@Inject
	private SqlSession sqlSession;
	
	// 로그인 기능 구현
	@Override
	public MemberDTO login(MemberDTO mDto) {
		return sqlSession.selectOne("member.login", mDto);
	}
	// 회원가입 기능 구현
	@Override
	public void create(MemberDTO mDto) {
		sqlSession.insert("member.create", mDto);
	}
	// 아이디 중복 체크
	@Override
	public int selectOne(String id) {
		return sqlSession.selectOne("member.selectOne", id);
	}
	@Override
	public MemberDTO updateView(String id) {
		return sqlSession.selectOne("member.updateView", id);
	}
	@Override
	public void updatePlay(MemberDTO mDto) {
		sqlSession.update("member.updatePlay", mDto);
	}
	@Override
	public void pwUpdatePlay(HashMap<String, String> map) {
		sqlSession.update("member.pwUpdatePlay", map);
	}
	@Override
	public int pwCheck(HashMap<String, String> map) {
		return sqlSession.selectOne("member.pwCheck", map);
	}

}
