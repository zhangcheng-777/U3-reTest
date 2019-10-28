package com.k9507.service;

import com.k9507.domain.Workorder;

import java.util.List;

public interface WorkorderService {
    int insert(Workorder record);
    List<Workorder> selectAll();
}
