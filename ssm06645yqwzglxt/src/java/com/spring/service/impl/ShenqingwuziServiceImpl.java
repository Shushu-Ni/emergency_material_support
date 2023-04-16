package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.ShenqingwuziMapper;
import com.spring.entity.Shenqingwuzi;
import com.spring.service.ShenqingwuziService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("ShenqingwuziService")
public class ShenqingwuziServiceImpl extends ServiceBase<Shenqingwuzi> implements ShenqingwuziService {
    @Resource
    private ShenqingwuziMapper dao;

    @Override
    protected ShenqingwuziMapper getDao() {
        return dao;
    }
}
