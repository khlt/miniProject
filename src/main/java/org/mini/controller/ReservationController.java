package org.mini.controller;

import org.mini.service.ReservationService;
import org.mini.vo.ReservationVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/reservation/*")
@AllArgsConstructor
public class ReservationController {
	private ReservationService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list", service.getList());
	}
	
	@PostMapping("/register2")		// 게시글 저장
	public String register(ReservationVO reserve, RedirectAttributes rttr) {
		log.info("register : " + reserve);
		service.register(reserve);
		rttr.addFlashAttribute("result", reserve.getReserveno());
		return "redirect:/reservation/list#two";
	}
	
	@GetMapping({"/get","/modify"})
	public void get(@RequestParam("reserveno") Long reserveno, Model model) {
		
		log.info("/get");
		model.addAttribute("reserve", service.get(reserveno));
	}
	
	@PostMapping("/modify")
	public String modify(ReservationVO reserve, RedirectAttributes rttr) {
		log.info("reserve : " + reserve);
		
		if (service.modify(reserve)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/reservation/list#two";
		}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("reserveno") Long reserveno, RedirectAttributes rttr) {
		log.info("remove..." + reserveno);
		if (service.remove(reserveno)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/reservation/list#two";
	}
	@GetMapping("/register2")
	public void register() {
		
	}
	
	
	}



