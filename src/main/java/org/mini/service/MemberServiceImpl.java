package org.mini.service;

import org.mini.mapper.MemberMapper;
import org.mini.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MemberServiceImpl implements MemberService {
   @Autowired
   MemberMapper mapper;
   
   //회원가입
   @Override
   public void register(MemberVO vo) throws Exception {
      log.info("vo ; "+vo.getAddress());
      mapper.register(vo);
   }
   //아이디 중복체크
   @Override
   public int idCheck(String userId) throws Exception {
      
      return mapper.idCheck(userId);
   }
   
   //로그인
   @Override
   public MemberVO login(MemberVO vo) throws Exception{
      MemberVO VO = mapper.login(vo);
      return VO;
   }
   
   @Override
   public MemberVO loginNew(String userId)throws Exception{
      MemberVO VO = mapper.loginNew(userId);
      
      return VO;
   }
   
   //마이페이지 수정
   @Override
   public void mypage(MemberVO vo)throws Exception {
      mapper.mypage(vo);
   }
   
   //회원탈퇴
   @Override
   public void memberDelete(MemberVO vo)throws Exception{
      mapper.memberDelete(vo);
   }
   
}