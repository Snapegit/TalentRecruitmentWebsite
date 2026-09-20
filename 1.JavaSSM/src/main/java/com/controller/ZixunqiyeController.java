package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.ZixunqiyeEntity;
import com.entity.view.ZixunqiyeView;

import com.service.ZixunqiyeService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;

/**
 * 咨询企业
 * 后端接口
 * @author 
 * @email 
 * @date 2024-05-12 21:53:11
 */
@RestController
@RequestMapping("/zixunqiye")
public class ZixunqiyeController {
    @Autowired
    private ZixunqiyeService zixunqiyeService;





    



    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ZixunqiyeEntity zixunqiye, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("qiye")) {
			zixunqiye.setQiyezhanghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("qiuzhizhe")) {
			zixunqiye.setZhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<ZixunqiyeEntity> ew = new EntityWrapper<ZixunqiyeEntity>();

    	PageUtils page = zixunqiyeService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zixunqiye), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前台列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ZixunqiyeEntity zixunqiye, 
		HttpServletRequest request){
        EntityWrapper<ZixunqiyeEntity> ew = new EntityWrapper<ZixunqiyeEntity>();

    	PageUtils page = zixunqiyeService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zixunqiye), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }


	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ZixunqiyeEntity zixunqiye){
       	EntityWrapper<ZixunqiyeEntity> ew = new EntityWrapper<ZixunqiyeEntity>();
      	ew.allEq(MPUtil.allEQMapPre( zixunqiye, "zixunqiye")); 
        return R.ok().put("data", zixunqiyeService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ZixunqiyeEntity zixunqiye){
        EntityWrapper< ZixunqiyeEntity> ew = new EntityWrapper< ZixunqiyeEntity>();
 		ew.allEq(MPUtil.allEQMapPre( zixunqiye, "zixunqiye")); 
		ZixunqiyeView zixunqiyeView =  zixunqiyeService.selectView(ew);
		return R.ok("查询咨询企业成功").put("data", zixunqiyeView);
    }
	
    /**
     * 后台详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ZixunqiyeEntity zixunqiye = zixunqiyeService.selectById(id);
        return R.ok().put("data", zixunqiye);
    }

    /**
     * 前台详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ZixunqiyeEntity zixunqiye = zixunqiyeService.selectById(id);
        return R.ok().put("data", zixunqiye);
    }
    



    /**
     * 后台保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ZixunqiyeEntity zixunqiye, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(zixunqiye);

        zixunqiyeService.insert(zixunqiye);
        return R.ok();
    }
    
    /**
     * 前台保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ZixunqiyeEntity zixunqiye, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(zixunqiye);

        zixunqiyeService.insert(zixunqiye);
        return R.ok();
    }




    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody ZixunqiyeEntity zixunqiye, HttpServletRequest request){
        //ValidatorUtils.validateEntity(zixunqiye);
        zixunqiyeService.updateById(zixunqiye);//全部更新
        return R.ok();
    }


    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        zixunqiyeService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	
	









}
