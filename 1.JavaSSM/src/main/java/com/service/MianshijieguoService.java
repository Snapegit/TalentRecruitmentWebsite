package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.MianshijieguoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.MianshijieguoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.MianshijieguoView;


/**
 * 面试结果
 *
 * @author 
 * @email 
 * @date 2024-05-12 21:53:11
 */
public interface MianshijieguoService extends IService<MianshijieguoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<MianshijieguoVO> selectListVO(Wrapper<MianshijieguoEntity> wrapper);
   	
   	MianshijieguoVO selectVO(@Param("ew") Wrapper<MianshijieguoEntity> wrapper);
   	
   	List<MianshijieguoView> selectListView(Wrapper<MianshijieguoEntity> wrapper);
   	
   	MianshijieguoView selectView(@Param("ew") Wrapper<MianshijieguoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<MianshijieguoEntity> wrapper);

   	

}

