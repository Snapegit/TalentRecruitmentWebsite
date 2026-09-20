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

import com.entity.MianshiyaoqingEntity;
import com.entity.view.MianshiyaoqingView;

import com.service.MianshiyaoqingService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;

/**
 * 面试邀请
 * 后端接口
 * @author 
 * @email 
 * @date 2024-05-12 21:53:11
 */
@RestController
@RequestMapping("/mianshiyaoqing")
public class MianshiyaoqingController {
    @Autowired
    private MianshiyaoqingService mianshiyaoqingService;





    



    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,MianshiyaoqingEntity mianshiyaoqing, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("qiye")) {
			mianshiyaoqing.setQiyezhanghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("qiuzhizhe")) {
			mianshiyaoqing.setZhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<MianshiyaoqingEntity> ew = new EntityWrapper<MianshiyaoqingEntity>();

    	PageUtils page = mianshiyaoqingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, mianshiyaoqing), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前台列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,MianshiyaoqingEntity mianshiyaoqing, 
		HttpServletRequest request){
        EntityWrapper<MianshiyaoqingEntity> ew = new EntityWrapper<MianshiyaoqingEntity>();

    	PageUtils page = mianshiyaoqingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, mianshiyaoqing), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }


	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( MianshiyaoqingEntity mianshiyaoqing){
       	EntityWrapper<MianshiyaoqingEntity> ew = new EntityWrapper<MianshiyaoqingEntity>();
      	ew.allEq(MPUtil.allEQMapPre( mianshiyaoqing, "mianshiyaoqing")); 
        return R.ok().put("data", mianshiyaoqingService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(MianshiyaoqingEntity mianshiyaoqing){
        EntityWrapper< MianshiyaoqingEntity> ew = new EntityWrapper< MianshiyaoqingEntity>();
 		ew.allEq(MPUtil.allEQMapPre( mianshiyaoqing, "mianshiyaoqing")); 
		MianshiyaoqingView mianshiyaoqingView =  mianshiyaoqingService.selectView(ew);
		return R.ok("查询面试邀请成功").put("data", mianshiyaoqingView);
    }
	
    /**
     * 后台详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        MianshiyaoqingEntity mianshiyaoqing = mianshiyaoqingService.selectById(id);
        return R.ok().put("data", mianshiyaoqing);
    }

    /**
     * 前台详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        MianshiyaoqingEntity mianshiyaoqing = mianshiyaoqingService.selectById(id);
        return R.ok().put("data", mianshiyaoqing);
    }
    



    /**
     * 后台保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody MianshiyaoqingEntity mianshiyaoqing, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(mianshiyaoqing);

        mianshiyaoqingService.insert(mianshiyaoqing);
        return R.ok();
    }
    
    /**
     * 前台保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody MianshiyaoqingEntity mianshiyaoqing, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(mianshiyaoqing);

        mianshiyaoqingService.insert(mianshiyaoqing);
        return R.ok();
    }




    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody MianshiyaoqingEntity mianshiyaoqing, HttpServletRequest request){
        //ValidatorUtils.validateEntity(mianshiyaoqing);
        mianshiyaoqingService.updateById(mianshiyaoqing);//全部更新
        return R.ok();
    }


    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        mianshiyaoqingService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	
	









}
