package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZixunqiyeEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZixunqiyeVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZixunqiyeView;


/**
 * 咨询企业
 *
 * @author 
 * @email 
 * @date 2024-05-12 21:53:11
 */
public interface ZixunqiyeService extends IService<ZixunqiyeEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZixunqiyeVO> selectListVO(Wrapper<ZixunqiyeEntity> wrapper);
   	
   	ZixunqiyeVO selectVO(@Param("ew") Wrapper<ZixunqiyeEntity> wrapper);
   	
   	List<ZixunqiyeView> selectListView(Wrapper<ZixunqiyeEntity> wrapper);
   	
   	ZixunqiyeView selectView(@Param("ew") Wrapper<ZixunqiyeEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZixunqiyeEntity> wrapper);

   	

}

