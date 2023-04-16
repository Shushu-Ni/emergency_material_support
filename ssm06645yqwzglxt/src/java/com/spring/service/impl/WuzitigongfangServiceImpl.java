package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.WuzitigongfangMapper;
import com.spring.entity.Wuzitigongfang;
import com.spring.service.WuzitigongfangService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("WuzitigongfangService")
public class WuzitigongfangServiceImpl extends ServiceBase<Wuzitigongfang> implements WuzitigongfangService {
    @Resource
    private WuzitigongfangMapper dao;

    @Override
    protected WuzitigongfangMapper getDao() {
        return dao;
    }
}
