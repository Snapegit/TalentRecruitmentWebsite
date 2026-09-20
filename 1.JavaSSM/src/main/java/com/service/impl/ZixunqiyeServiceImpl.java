package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ZixunqiyeDao;
import com.entity.ZixunqiyeEntity;
import com.service.ZixunqiyeService;
import com.entity.vo.ZixunqiyeVO;
import com.entity.view.ZixunqiyeView;

@Service("zixunqiyeService")
public class ZixunqiyeServiceImpl extends ServiceImpl<ZixunqiyeDao, ZixunqiyeEntity> implements ZixunqiyeService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZixunqiyeEntity> page = this.selectPage(
                new Query<ZixunqiyeEntity>(params).getPage(),
                new EntityWrapper<ZixunqiyeEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZixunqiyeEntity> wrapper) {
		  Page<ZixunqiyeView> page =new Query<ZixunqiyeView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<ZixunqiyeVO> selectListVO(Wrapper<ZixunqiyeEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZixunqiyeVO selectVO(Wrapper<ZixunqiyeEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZixunqiyeView> selectListView(Wrapper<ZixunqiyeEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZixunqiyeView selectView(Wrapper<ZixunqiyeEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
