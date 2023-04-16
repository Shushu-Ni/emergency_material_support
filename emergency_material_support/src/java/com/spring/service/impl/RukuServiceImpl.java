package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.RukuMapper;
import com.spring.entity.Ruku;
import com.spring.service.RukuService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("RukuService")
public class RukuServiceImpl extends ServiceBase<Ruku> implements RukuService {
    @Resource
    private RukuMapper dao;

    @Override
    protected RukuMapper getDao() {
        return dao;
    }
}
