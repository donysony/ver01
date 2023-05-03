package com.project.ver01.service;

import com.project.ver01.domain.BoardVO;

import java.util.List;

public interface BoardService {
    public void register(BoardVO board);

    public BoardVO get(Long bno);

    public boolean modify(BoardVO boardVO);

    public boolean remove(Long bno);

    public List<BoardVO> getList();
    public boolean increaseViewCnt(Long bno);
}
