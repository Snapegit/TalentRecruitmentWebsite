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


import com.dao.MianshijieguoDao;
import com.entity.MianshijieguoEntity;
import com.service.MianshijieguoService;
import com.entity.vo.MianshijieguoVO;
import com.entity.view.MianshijieguoView;

@Service("mianshijieguoService")
public class MianshijieguoServiceImpl extends ServiceImpl<MianshijieguoDao, MianshijieguoEntity> implements MianshijieguoService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<MianshijieguoEntity> page = this.selectPage(
                new Query<MianshijieguoEntity>(params).getPage(),
                new EntityWrapper<MianshijieguoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<MianshijieguoEntity> wrapper) {
		  Page<MianshijieguoView> page =new Query<MianshijieguoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<MianshijieguoVO> selectListVO(Wrapper<MianshijieguoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public MianshijieguoVO selectVO(Wrapper<MianshijieguoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<MianshijieguoView> selectListView(Wrapper<MianshijieguoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public MianshijieguoView selectView(Wrapper<MianshijieguoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
