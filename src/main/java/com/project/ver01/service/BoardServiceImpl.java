package com.project.ver01.service;

import com.project.ver01.domain.BoardVO;
import com.project.ver01.mapper.BoardMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{
    //spring 4.3이후 자동주입 처리 @AllArgsConstructor통해
    private BoardMapper mapper;

    @Override
    public void register(BoardVO board) {
        log.info("register...." + board);
        mapper.insertSelectKey(board);
    }

    @Override
    public BoardVO get(Long bno) {
        return null;
    }

    @Override
    public boolean modify(BoardVO boardVO) {
        return false;
    }

    @Override
    public boolean remove(Long bno) {
        return false;
    }

    @Override
    public List<BoardVO> getList() {
        return null;
    }
}
