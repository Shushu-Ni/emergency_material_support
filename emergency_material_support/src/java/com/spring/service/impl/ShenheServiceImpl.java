package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.ShenheMapper;
import com.spring.entity.Shenhe;
import com.spring.service.ShenheService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("ShenheService")
public class ShenheServiceImpl extends ServiceBase<Shenhe> implements ShenheService {
    @Resource
    private ShenheMapper dao;

    @Override
    protected ShenheMapper getDao() {
        return dao;
    }
}
