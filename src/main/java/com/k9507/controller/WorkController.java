package com.k9507.controller;

import com.k9507.domain.Project;
import com.k9507.domain.Workorder;
import com.k9507.service.WorkorderService;
import com.k9507.service.projectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.List;

@Controller
public class WorkController {
    @Autowired
    private projectService projectService;
    @Autowired
    private WorkorderService workorderService;

    @RequestMapping("/project")
    public String getProject(Model model){
        List<Project> projects = projectService.selectAll();
        model.addAttribute("projects",projects);
        return "index";
    }

    @RequestMapping("/showAdd")
    public String show(@RequestParam Integer pro, Model model){
        model.addAttribute("projectId",pro);
        return "add";
    }

    @RequestMapping("/add")
    public String add(@RequestParam Integer projectId,@RequestParam String executor,@RequestParam String description,@RequestParam Integer orderLevel,Model model){
        Workorder workorder=new Workorder();
        workorder.setExecutor(executor);
        workorder.setDescription(description);
        workorder.setOrderlevel(orderLevel);
        workorder.setProjectid(projectId);
        workorder.setCreatedate(new Date());
        int insert = workorderService.insert(workorder);
        return "list";
    }

    @RequestMapping("/list")
    public String list(Model model){
        List<Workorder> workorders = workorderService.selectAll();
        model.addAttribute("workorders",workorders);
        model.addAttribute("msg","保存成功");
        return "list";
    }
}
