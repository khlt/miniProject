package org.mini.controller;



import javax.servlet.http.HttpSession;

import org.mini.service.MemberService;
import org.mini.vo.MemberVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/member/*")
public class MemberController {

   private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
   
   
   @Autowired
   MemberService service;
   
   // 회원가입 get
   @RequestMapping(value = "/register", method = RequestMethod.GET)
   public void getRegister() throws Exception {
      logger.info("get register");
   }
   
   // 회원가입 post
   @RequestMapping(value = "/register", method = RequestMethod.POST)
   public String postRegister(MemberVO vo) throws Exception {
      logger.info("post register");
      service.register(vo);
      log.info("vo :" +vo.getUserId());
      log.info("vo :"+vo.getUserPwd());
      
      return "redirect:/member/login";
   }
   // 아이디 중복 검사
      @RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
      @ResponseBody   
      public String memberIdChkPOST(String userId) throws Exception{
         
         logger.info("memberIdChk() 진입");
         
         int result = service.idCheck(userId);
         
         logger.info("결과값 = " + result);
         
         if(result != 0) {      
            return "fail";   // 중복 아이디가 존재            
         } else {            
            return "success";   // 중복 아이디 x            
         }
      }
   
   //로그인
   @RequestMapping(value = "/login", method = RequestMethod.GET)
   public void getLogin() throws Exception {
      logger.info("get login");
   }
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String postLogin(MemberVO vo, HttpSession session) throws Exception {
       MemberVO login = service.login(vo);
    if(login!=null) {
       session.setAttribute("login", login);
       return "redirect:/member/main2";
    }
    return "redirect:/member/login";
    }
    
    @RequestMapping(value = "/main", method = RequestMethod.GET)
      public void getMain() throws Exception {
         logger.info("get main");
      }
    
    @RequestMapping(value = "/main2", method = RequestMethod.GET)
       public void getMain2() throws Exception {
          logger.info("get main2");
    }
       
    //로그아웃
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String getLogout(HttpSession session) throws Exception{
    	session.invalidate();
    	logger.info("get logout");
    	return "redirect:/member/main";
    }
   
    //마이페이지 수정
    @RequestMapping(value="/mypage", method = RequestMethod.GET)
    public void getMypage(Model model, HttpSession session) throws Exception{
       MemberVO vo=(MemberVO)session.getAttribute("login"); //세션에서 꺼내서... userId.....;
       //userId를 이용해서 db에서 겟을 해서
       MemberVO newVo = service.loginNew(vo.getUserId());
       log.info("new : " +newVo.getUserPwd());
       model.addAttribute("member" ,newVo);
       
       logger.info("get mypage");
    }

    @RequestMapping(value="/mypage", method = RequestMethod.POST)
    public String postMypage(MemberVO vo, HttpSession session) throws Exception{
      logger.info("post mypage");
       service.mypage(vo);    
       session.setAttribute("loginNew", vo);
       return "redirect:/member/main2";
    }
   
      
      // 회원 탈퇴 post
      @RequestMapping(value="/memberDelete", method = RequestMethod.GET)
      public void removeGET(Model model, HttpSession session) throws Exception {
         MemberVO vo=(MemberVO)session.getAttribute("loginNew");
         MemberVO newVo = service.loginNew(vo.getUserId());
         model.addAttribute("member" ,newVo);
         logger.info("GET delete");
      }
      
      @RequestMapping(value="/memberDelete", method = RequestMethod.POST)
      public String removePOST(MemberVO vo, HttpSession session, RedirectAttributes ra) throws Exception {
         logger.info("POST delete");
         
         MemberVO user = (MemberVO)session.getAttribute("loginNew");
         
         String oldPwd = user.getUserPwd();
         String newPwd = vo.getUserPwd();
         
         if(oldPwd.equals(newPwd)) {
            service.memberDelete(vo);
            ra.addFlashAttribute("msg", "removeOK");
            session.invalidate();  //삭제 정상 후 메인으로
            return "redirect:/member/main";
         } else {
            ra.addFlashAttribute("msg", "removeFalse");
            return "redirect:/member/memberDelete";
         }
      }
   
   
}