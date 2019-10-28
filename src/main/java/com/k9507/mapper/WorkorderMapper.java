package com.k9507.mapper;

import com.k9507.domain.Workorder;

import java.util.List;

public interface WorkorderMapper {
    List<Workorder> selectAll();

    int deleteByPrimaryKey(Integer id);

    int insert(Workorder record);

    int insertSelective(Workorder record);

    Workorder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Workorder record);

    int updateByPrimaryKey(Workorder record);
}