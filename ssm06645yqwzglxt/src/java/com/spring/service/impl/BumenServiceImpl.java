package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.BumenMapper;
import com.spring.entity.Bumen;
import com.spring.service.BumenService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("BumenService")
public class BumenServiceImpl extends ServiceBase<Bumen> implements BumenService {
    @Resource
    private BumenMapper dao;

    @Override
    protected BumenMapper getDao() {
        return dao;
    }
}
