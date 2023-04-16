package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.QuanguoyiqingMapper;
import com.spring.entity.Quanguoyiqing;
import com.spring.service.QuanguoyiqingService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("QuanguoyiqingService")
public class QuanguoyiqingServiceImpl extends ServiceBase<Quanguoyiqing> implements QuanguoyiqingService {
    @Resource
    private QuanguoyiqingMapper dao;

    @Override
    protected QuanguoyiqingMapper getDao() {
        return dao;
    }
}
