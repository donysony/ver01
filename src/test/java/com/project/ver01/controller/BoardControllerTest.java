package com.project.ver01.controller;

import junit.framework.TestCase;
import lombok.extern.log4j.Log4j;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import javax.swing.*;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(classes = {com.project.ver01.config.RootConfig.class, com.project.ver01.config.ServletConfig.class})
@Log4j
public class BoardControllerTest {
    @Autowired
    private WebApplicationContext ctx; // 스프링 컨테이너
    private MockMvc mockMvc; // 가상의 톰캣

    @Before
    public void setup(){
        this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
    }
@Test
    public void testList() throws Exception {
        log.info(mockMvc.perform(MockMvcRequestBuilders.get("/board/list"))
                .andReturn()
                .getModelAndView()
                .getModelMap());
    }
    @Test
    public void testRegister() throws Exception {
        String resultPage = mockMvc.perform(MockMvcRequestBuilders
                .post("/board/register") // MockMvcRequestBuilder의 post()이용시 POST방식 전달 param()을 통해 전달해야하는 파라미터 지정
                .param("title", "test new title")
                .param("content", "test new content")
                .param("writer", "user00")
    ).andReturn().getModelAndView().getViewName();
        log.info(resultPage);
    }

    @Test
    public void testGet() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                .get("/board/get")
                .param("bno","4")) //특정 게시물 조회시  반드시 bno필요
                .andReturn()
                .getModelAndView()
                .getModelMap();

    }
    @Test
    public void testModify() throws Exception {
        String resultPage = mockMvc.perform(MockMvcRequestBuilders
                .post("/board/modify")
                .param("bno", "5")
                .param("title","new test title")
                .param("content","new test content")
                .param("writer","user11")
        ).andReturn().getModelAndView().getViewName();
        log.info(resultPage);
    }

    @Test
    public void testRemove() throws Exception {
        //삭제 전 DB에 게시물번호 존재여부 확인할 것 -> 없어도 정상작동이 됨 왜지????????
        // mockMvc를 이용해 파라미터로 전달시 문자열로만 처리
        //테스트 전 게시물번호 존재여부 확인 후 테스트 실행
        String resultPage = mockMvc.perform(MockMvcRequestBuilders
                .post("/board/remove")
                .param("bno", "25")
                ).andReturn().getModelAndView().getViewName();

        log.info("result : "+resultPage);
    }
}