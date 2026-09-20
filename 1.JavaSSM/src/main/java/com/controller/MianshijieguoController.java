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

import com.entity.MianshijieguoEntity;
import com.entity.view.MianshijieguoView;

import com.service.MianshijieguoService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;

/**
 * 面试结果
 * 后端接口
 * @author 
 * @email 
 * @date 2024-05-12 21:53:11
 */
@RestController
@RequestMapping("/mianshijieguo")
public class MianshijieguoController {
    @Autowired
    private MianshijieguoService mianshijieguoService;





    



    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,MianshijieguoEntity mianshijieguo, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("qiye")) {
			mianshijieguo.setQiyezhanghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("qiuzhizhe")) {
			mianshijieguo.setZhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<MianshijieguoEntity> ew = new EntityWrapper<MianshijieguoEntity>();

    	PageUtils page = mianshijieguoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, mianshijieguo), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前台列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,MianshijieguoEntity mianshijieguo, 
		HttpServletRequest request){
        EntityWrapper<MianshijieguoEntity> ew = new EntityWrapper<MianshijieguoEntity>();

    	PageUtils page = mianshijieguoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, mianshijieguo), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }


	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( MianshijieguoEntity mianshijieguo){
       	EntityWrapper<MianshijieguoEntity> ew = new EntityWrapper<MianshijieguoEntity>();
      	ew.allEq(MPUtil.allEQMapPre( mianshijieguo, "mianshijieguo")); 
        return R.ok().put("data", mianshijieguoService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(MianshijieguoEntity mianshijieguo){
        EntityWrapper< MianshijieguoEntity> ew = new EntityWrapper< MianshijieguoEntity>();
 		ew.allEq(MPUtil.allEQMapPre( mianshijieguo, "mianshijieguo")); 
		MianshijieguoView mianshijieguoView =  mianshijieguoService.selectView(ew);
		return R.ok("查询面试结果成功").put("data", mianshijieguoView);
    }
	
    /**
     * 后台详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        MianshijieguoEntity mianshijieguo = mianshijieguoService.selectById(id);
        return R.ok().put("data", mianshijieguo);
    }

    /**
     * 前台详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        MianshijieguoEntity mianshijieguo = mianshijieguoService.selectById(id);
        return R.ok().put("data", mianshijieguo);
    }
    



    /**
     * 后台保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody MianshijieguoEntity mianshijieguo, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(mianshijieguo);

        mianshijieguoService.insert(mianshijieguo);
        return R.ok();
    }
    
    /**
     * 前台保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody MianshijieguoEntity mianshijieguo, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(mianshijieguo);

        mianshijieguoService.insert(mianshijieguo);
        return R.ok();
    }




    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody MianshijieguoEntity mianshijieguo, HttpServletRequest request){
        //ValidatorUtils.validateEntity(mianshijieguo);
        mianshijieguoService.updateById(mianshijieguo);//全部更新
        return R.ok();
    }


    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        mianshijieguoService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	
	









}
