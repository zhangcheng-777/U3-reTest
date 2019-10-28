package com.k9507.service.impl;

import com.k9507.domain.Workorder;
import com.k9507.mapper.WorkorderMapper;
import com.k9507.service.WorkorderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WorkorderServiceImpl implements WorkorderService {
    @Autowired
    private WorkorderMapper workorderMapper;
    @Override
    public int insert(Workorder record) {
        return workorderMapper.insert(record);
    }

    @Override
    public List<Workorder> selectAll() {
        return workorderMapper.selectAll();
    }
}
