package com.entity.view;

import com.entity.ZixunqiyeEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 咨询企业
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-05-12 21:53:11
 */
@TableName("zixunqiye")
public class ZixunqiyeView  extends ZixunqiyeEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZixunqiyeView(){
	}
 
 	public ZixunqiyeView(ZixunqiyeEntity zixunqiyeEntity){
 	try {
			BeanUtils.copyProperties(this, zixunqiyeEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}



}
