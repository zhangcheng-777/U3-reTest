package com.k9507.service.impl;

import com.k9507.domain.Project;
import com.k9507.mapper.ProjectMapper;
import com.k9507.service.projectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class projectServiceImpl implements projectService {
    @Autowired
    private ProjectMapper projectMapper;

    @Override
    public List<Project> selectAll() {
        return projectMapper.selectAll();
    }
}
