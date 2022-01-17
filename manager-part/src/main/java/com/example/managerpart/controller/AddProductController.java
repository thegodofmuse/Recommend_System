package com.example.managerpart.controller;

import com.example.managerpart.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class AddProductController {
    private String dirPath = "";
    //简介图片地址
    private String simplePath = "";
    //详细详细图片地址
    private StringBuilder detailsPath = new StringBuilder();

    @Autowired
    private IProductService service;
}
