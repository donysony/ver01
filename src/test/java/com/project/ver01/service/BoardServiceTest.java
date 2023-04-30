package com.project.ver01.service;

import junit.framework.TestCase;
import lombok.extern.log4j.Log4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.assertNotNull;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.project.ver01.config.RootConfig.class})
@Log4j
public class BoardServiceTest {
    @Autowired
    private BoardService service;

    @Test
    public void testExist(){
        //객체가 제대로 주입이 가능한지 확인하는 작업
        log.info(service);
        //주입되었다면 BoardService객체와 DB관련 로그 출력
        assertNotNull(service);
    }
    public void testRegister() {
    }

    public void testGet() {
    }

    public void testModify() {
    }

    public void testRemove() {
    }

    public void testGetList() {
    }
}