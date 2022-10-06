package org.mini.service;


import org.mini.vo.MemberVO;

public interface MemberService {
   //회원가입
   public void register(MemberVO vo) throws Exception;
   // 아이디 중복 검사
   public int idCheck(String userId) throws Exception;
   
   //로그인
   public MemberVO login(MemberVO vo) throws Exception;
   
   //로그인정보수정용
   public MemberVO loginNew(String userId) throws Exception;
   
   //마이페이지 수정
   public void mypage(MemberVO vo) throws Exception;
   
   //회원 탈퇴
   public void memberDelete(MemberVO vo)throws Exception;
      
   
}