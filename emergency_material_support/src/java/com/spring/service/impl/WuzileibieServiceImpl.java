package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.WuzileibieMapper;
import com.spring.entity.Wuzileibie;
import com.spring.service.WuzileibieService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("WuzileibieService")
public class WuzileibieServiceImpl extends ServiceBase<Wuzileibie> implements WuzileibieService {
    @Resource
    private WuzileibieMapper dao;

    @Override
    protected WuzileibieMapper getDao() {
        return dao;
    }
}
