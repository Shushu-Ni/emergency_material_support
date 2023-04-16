package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.WuzixinxiMapper;
import com.spring.entity.Wuzixinxi;
import com.spring.service.WuzixinxiService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("WuzixinxiService")
public class WuzixinxiServiceImpl extends ServiceBase<Wuzixinxi> implements WuzixinxiService {
    @Resource
    private WuzixinxiMapper dao;

    @Override
    protected WuzixinxiMapper getDao() {
        return dao;
    }
}
