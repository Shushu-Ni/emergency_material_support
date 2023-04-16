package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.JiankangdakaMapper;
import com.spring.entity.Jiankangdaka;
import com.spring.service.JiankangdakaService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("JiankangdakaService")
public class JiankangdakaServiceImpl extends ServiceBase<Jiankangdaka> implements JiankangdakaService {
    @Resource
    private JiankangdakaMapper dao;

    @Override
    protected JiankangdakaMapper getDao() {
        return dao;
    }
}
