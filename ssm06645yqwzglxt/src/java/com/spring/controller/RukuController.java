package com.spring.controller;

import com.spring.dao.RukuMapper;
import com.spring.entity.Ruku;
import com.spring.service.RukuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;
import util.Request;
import util.Info;
import dao.Query;
import java.util.*;



import com.spring.entity.Wuzixinxi;
import com.spring.service.WuzixinxiService;

/**
 * 入库 */
@Controller
public class RukuController extends BaseController
{
    @Autowired
    private RukuMapper dao;
    @Autowired
    private RukuService service;

    @Autowired
    private WuzixinxiService serviceRead;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/ruku_list")
    public String list()
    {
        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }

        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        Example example = new Example(Ruku.class); //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();          // 创建一个扩展搜索条件类
        String where = " 1=1 ";   // 创建初始条件为：1=1
        where += getWhere();      // 从方法中获取url 上的参数，并写成 sql条件语句
        criteria.andCondition(where);   // 将条件写进上面的扩展条件类中
        if(sort.equals("desc")){        // 判断前台提交的sort 参数是否等于  desc倒序  是则使用倒序，否则使用正序
            example.orderBy(order).desc();  // 把sql 语句设置成倒序
        }else{
            example.orderBy(order).asc();   // 把 sql 设置成正序
        }
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));  // 获取前台提交的URL参数 page  如果没有则设置为1
        page = Math.max(1 , page);  // 取两个数的最大值，防止page 小于1
        List<Ruku> list = service.selectPageExample(example , page , 12);   // 获取当前页的行数
        // 将列表写给界面使用
        assign("list" , list);
        assign("orderby" , order);  // 把当前排序结果写进前台
        assign("sort" , sort);      // 把当前排序结果写进前台
        assign("where" , where);    // 把当前条件写给前台
        return "ruku_list";   // 使用视图文件：WebRoot\ruku_list.jsp
    }



    /**
     *  获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere()
    {
        String where = " ";
        // 判断URL 参数wuzixinxiid是否大于0
        if( Request.getInt("wuzixinxiid") > 0 ) {
            // 大于0 则写入条件
            where += " AND wuzixinxiid='"+Request.getInt("wuzixinxiid")+"' ";
        }
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
            if(!Request.get("bianhao").equals("")) {
            where += " AND bianhao LIKE '%"+Request.get("bianhao")+"%' ";
        }
                if(!Request.get("mingcheng").equals("")) {
            where += " AND mingcheng LIKE '%"+Request.get("mingcheng")+"%' ";
        }
                if(!Request.get("leixing").equals("")) {
            where += " AND leixing ='"+Request.get("leixing")+"' ";
        }
                if(!Request.get("rukuleixing").equals("")) {
            where += " AND rukuleixing ='"+Request.get("rukuleixing")+"' ";
        }
                if(!Request.get("rukuren").equals("")) {
            where += " AND rukuren LIKE '%"+Request.get("rukuren")+"%' ";
        }
            return where;
    }

    /**
     * 入库人列表
     */
    @RequestMapping("/ruku_list_rukuren")
    public String listrukuren()
    {
        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }

        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        
        Example example = new Example(Ruku.class);  //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();           // 创建一个扩展搜索条件类
        // 初始化一个条件，条件为：入库人=当前登录用户
        String where = " rukuren='"+session.getAttribute("username")+"' ";
        where += getWhere();

        criteria.andCondition(where);   // 将条件写入
        if(sort.equals("desc")){        // 注释同list
            example.orderBy(order).desc(); // 注释同list
        }else{
            example.orderBy(order).asc(); // 注释同list
        }

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1 , page); // 注释同list

            List<Ruku> list = service.selectPageExample(example , page , 12);
        
        request.setAttribute("list" , list);
                assign("orderby" , order);
        assign("sort" , sort);
        assign("where" , where);
        return "ruku_list_rukuren";
    }




        @RequestMapping("/ruku_add")
    public String add()
    {
        int id = Request.getInt("id");  // 根据id 获取 物资信息模块中的数据
        Wuzixinxi readMap = serviceRead.find(id);
        // 将数据行写入给前台jsp页面
        request.setAttribute("readMap" , readMap);
        return "ruku_add";
    }



    @RequestMapping("/ruku_updt")
    public String updt()
    {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Ruku mmm = service.find(id);
        request.setAttribute("mmm" , mmm);
        request.setAttribute("updtself" , 0);
        return "ruku_updt";
    }
    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/rukuinsert")
    public String insert()
    {
        String tmp="";
        Ruku post = new Ruku();  // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setBianhao(Request.get("bianhao"));

        post.setMingcheng(Request.get("mingcheng"));

        post.setLeixing(Request.get("leixing"));

        post.setDanhao(Request.get("danhao"));

        post.setRukuleixing(Request.get("rukuleixing"));

        post.setRukushuliang(Request.getInt("rukushuliang"));

        post.setRukushijian(Request.get("rukushijian"));

        post.setWuzitigongfang(Request.get("wuzitigongfang"));

        post.setCaozuorenyuan(Request.get("caozuorenyuan"));

        post.setLianxifangshi(Request.get("lianxifangshi"));

        post.setJutiweizhi(Request.get("jutiweizhi"));

        post.setBeizhu(Request.get("beizhu"));

        post.setRukuren(Request.get("rukuren"));

        post.setWuzixinxiid(Request.getInt("wuzixinxiid"));

        
        post.setAddtime(Info.getDateStr()); // 设置添加时间
                service.insert(post); // 插入数据
        int charuid = post.getId().intValue();
        Query.execute("update wuzixinxi set kucun=kucun+'"+request.getParameter("rukushuliang")+"' where id='"+request.getParameter("wuzixinxiid")+"'");



        return showSuccess("保存成功" , Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
    * 更新内容
    * @return
    */
    @RequestMapping("/rukuupdate")
    public String update()
    {
        // 创建实体类
        Ruku post = new Ruku();
        // 将前台表单数据填充到实体类
        if(!Request.get("bianhao").equals(""))
        post.setBianhao(Request.get("bianhao"));
                if(!Request.get("mingcheng").equals(""))
        post.setMingcheng(Request.get("mingcheng"));
                if(!Request.get("leixing").equals(""))
        post.setLeixing(Request.get("leixing"));
                if(!Request.get("danhao").equals(""))
        post.setDanhao(Request.get("danhao"));
                if(!Request.get("rukuleixing").equals(""))
        post.setRukuleixing(Request.get("rukuleixing"));
                if(!Request.get("rukushuliang").equals(""))
        post.setRukushuliang(Request.getInt("rukushuliang"));
            if(!Request.get("rukushijian").equals(""))
        post.setRukushijian(Request.get("rukushijian"));
                if(!Request.get("wuzitigongfang").equals(""))
        post.setWuzitigongfang(Request.get("wuzitigongfang"));
                if(!Request.get("caozuorenyuan").equals(""))
        post.setCaozuorenyuan(Request.get("caozuorenyuan"));
                if(!Request.get("lianxifangshi").equals(""))
        post.setLianxifangshi(Request.get("lianxifangshi"));
                if(!Request.get("jutiweizhi").equals(""))
        post.setJutiweizhi(Request.get("jutiweizhi"));
                if(!Request.get("beizhu").equals(""))
        post.setBeizhu(Request.get("beizhu"));
                if(!Request.get("rukuren").equals(""))
        post.setRukuren(Request.get("rukuren"));
        
        post.setId(Request.getInt("id"));
                service.update(post); // 更新数据
        int charuid = post.getId().intValue();
                        return showSuccess("保存成功" , Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }
    /**
     *  后台详情
     */
    @RequestMapping("/ruku_detail")
    public String detail()
    {
        int id = Request.getInt("id");
        Ruku map = service.find(id);  // 根据前台url 参数中的id获取行数据
        request.setAttribute("map" , map);  // 把数据写到前台
        return "ruku_detail";  // 详情页面：WebRoot\ruku_detail.jsp
    }
        /**
    *  删除
    */
    @RequestMapping("/ruku_delete")
    public String delete()
    {
        if(!checkLogin()){
            return showError("尚未登录");
        }
        int id = Request.getInt("id");  // 根据id 删除某行数据
        HashMap map = Query.make("ruku").find(id);

                service.delete(id);// 根据id 删除某行数据
                return showSuccess("删除成功",request.getHeader("referer"));//弹出删除成功，并跳回上一页
    }
}
