package com.k9507.mapper;

import com.k9507.domain.Project;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ProjectMapper {
    @Select("select * from project")
    List<Project> selectAll();

    int deleteByPrimaryKey(Integer id);

    int insert(Project record);

    int insertSelective(Project record);

    Project selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Project record);

    int updateByPrimaryKey(Project record);
}