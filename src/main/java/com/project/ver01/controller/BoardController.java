package com.project.ver01.controller;

import com.project.ver01.domain.BoardVO;
import com.project.ver01.service.BoardService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
    //BoardController은 BoardService에 의존적이므로 @AllArgsConstructor이용해 생성자 자동 주입
    private BoardService service;

    @GetMapping("/list")
    public void list(Model model) {

        log.info("list");
        List<BoardVO> list = service.getList();
        model.addAttribute("list",list );
    }

    @GetMapping("/register")
    public void register(){
        //입력페이지를 보여주는 역할
    }

    @PostMapping("/register")
    public String register(BoardVO board, RedirectAttributes rttr) {
        log.info("register : " + board);
        service.register(board);
        log.info("result : "+board.getBno());
        rttr.addFlashAttribute("result", board.getBno());
        //rttr.addAttribute("result", board.getBno()); // 새롭게 등록된 게시물의 번호를 같이 전달하기 위해
        return "redirect:/board/list";

    }

    @GetMapping({"/get","/modify"})
    public void get(@RequestParam("bno") Long bno, Model model) {
        //게시물 조회
        log.info("/get or modify");
        model.addAttribute("board", service.get(bno));
    }

    @PostMapping("/modify")
    public String modify(BoardVO board, RedirectAttributes rttr) {
        log.info("modify : " + board);
        // board를 수정했다면
        if(service.modify(board) ){
            rttr.addFlashAttribute("result" + "success");
        }
        return "redirect:/board/list";
    }

    @PostMapping("/remove")
    public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr) {
        log.info("remove : " + bno);
        if(service.remove(bno)){
        //board를 삭제시 true이면
            rttr.addFlashAttribute("result" + "success");
        }
        return "redirect:/board/list";
    }
}
