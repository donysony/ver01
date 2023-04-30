package com.project.ver01.mapper;

import com.project.ver01.domain.BoardVO;

import lombok.extern.log4j.Log4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.assertTrue;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.project.ver01.config.RootConfig.class})
@Log4j
public class BoardMapperTest  {

    @Autowired
    private BoardMapper mapper;

    @Test
    public void testGetList() {
        mapper.getList().forEach(board -> log.info(board));
    }

    @Test
    public void testInsert(){
        BoardVO board = new BoardVO();

        board.setTitle("새로 작성하는 글");
        board.setContent("안녕 내용");
        board.setWriter("경선^^");
        mapper.insert(board);
        log.info("board에 대한 info를 알려드립니다 : 이를 적용하는 이유는 lombok이 만들어주는 toString()을 이용해 bno멤버변수의 값을 알아보기 위해"+board);
    }
    @Test
    public void testInsertSelectKey(){
        BoardVO board = new BoardVO();
        board.setTitle("새로 작성하는 글 select key");
        board.setContent("안녕 내용 select key");
        board.setWriter("new 경선^^");
        mapper.insertSelectKey(board);
        log.info("board : "+board);
    }

    @Test
    public void testRead(){
        BoardVO board = mapper.read(1L);
        log.info(board);
    }


    @Test
    public void testDelete(){

//        log.info("DELETE COUNT : "+mapper.delete(1L));
        assertTrue(mapper.delete(2L) == 1);
    }

    @Test
    public void testUpdate(){
        BoardVO board = new BoardVO();
        //실행전 존재하는 번호인지 확인
        board.setBno(5L);
        board.setTitle("수정된 제목");
        board.setContent("수정된 내용");
        board.setWriter("user경선aa");

        int count = mapper.update(board);
        log.info("update count : " + count);
    }


}