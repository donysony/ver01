package com.project.ver01.service;

import com.project.ver01.domain.BoardVO;
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
    @Test
    public void testRegister() {
        BoardVO board = new BoardVO();
        board.setTitle("new title");
        board.setContent("new content");
        board.setWriter("newbie");
        service.register(board);

        log.info("생성된 게시물의 번호 : " + board.getBno());

    }
@Test
    public void testGet() {
        log.info(service.get(3L));
    }
@Test
    public void testModify() {
        BoardVO board  = service.get(3L); // 게시물 번호로 board를 가져옴

    //문제! 1L라는 게시물번호가 없어도 null값을 반환하지 않고 빈 테이블을 보여주네
        if (board == null) {
            return ;
        }
        board.setTitle("수정 title");
        board.setContent("수정 Content");

        log.info("Modify result : "+service.modify(board));
    }
@Test
    public void testRemove() {
        //게시물이 존재하는지 확인
        if(service.get(3L) != null){
            log.info("Remove result : "+service.remove(3L));
        }

    }
@Test
    public void testGetList() {

        service.getList().forEach(board -> log.info(board));
    }

    @Test
    public void testViewCnt(){
        //아~~~모르겠다아아아아아아ㅏ앙ㅇ
    }
}