package com.dao;

import com.entity.ZixunqiyeEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZixunqiyeVO;
import com.entity.view.ZixunqiyeView;


/**
 * 咨询企业
 * 
 * @author 
 * @email 
 * @date 2024-05-12 21:53:11
 */
public interface ZixunqiyeDao extends BaseMapper<ZixunqiyeEntity> {
	
	List<ZixunqiyeVO> selectListVO(@Param("ew") Wrapper<ZixunqiyeEntity> wrapper);
	
	ZixunqiyeVO selectVO(@Param("ew") Wrapper<ZixunqiyeEntity> wrapper);
	
	List<ZixunqiyeView> selectListView(@Param("ew") Wrapper<ZixunqiyeEntity> wrapper);

	List<ZixunqiyeView> selectListView(Pagination page,@Param("ew") Wrapper<ZixunqiyeEntity> wrapper);

	
	ZixunqiyeView selectView(@Param("ew") Wrapper<ZixunqiyeEntity> wrapper);
	

}
