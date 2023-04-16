package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.FafangwuziMapper;
import com.spring.entity.Fafangwuzi;
import com.spring.service.FafangwuziService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("FafangwuziService")
public class FafangwuziServiceImpl extends ServiceBase<Fafangwuzi> implements FafangwuziService {
    @Resource
    private FafangwuziMapper dao;

    @Override
    protected FafangwuziMapper getDao() {
        return dao;
    }
}
