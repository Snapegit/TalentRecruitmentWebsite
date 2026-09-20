package com.dao;

import com.entity.MianshijieguoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.MianshijieguoVO;
import com.entity.view.MianshijieguoView;


/**
 * 面试结果
 * 
 * @author 
 * @email 
 * @date 2024-05-12 21:53:11
 */
public interface MianshijieguoDao extends BaseMapper<MianshijieguoEntity> {
	
	List<MianshijieguoVO> selectListVO(@Param("ew") Wrapper<MianshijieguoEntity> wrapper);
	
	MianshijieguoVO selectVO(@Param("ew") Wrapper<MianshijieguoEntity> wrapper);
	
	List<MianshijieguoView> selectListView(@Param("ew") Wrapper<MianshijieguoEntity> wrapper);

	List<MianshijieguoView> selectListView(Pagination page,@Param("ew") Wrapper<MianshijieguoEntity> wrapper);

	
	MianshijieguoView selectView(@Param("ew") Wrapper<MianshijieguoEntity> wrapper);
	

}
