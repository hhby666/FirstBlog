package com.qshh.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.qshh.pojo.Article;
import com.qshh.service.ArticleService;
import com.qshh.utils.JsonUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @Description:
 * @Author qshh
 * @Date 2021/9/6 22:58
 */
@Controller("articleController")
public class ArticleController {

    //调用service层

    @Resource(name = "articleService")
    private ArticleService articleService;

    @ResponseBody
    @RequestMapping("/selectByType")
    public String selectByType(String type) throws JsonProcessingException {
        List<Article> articleList = articleService.selectByType(type);
        return JsonUtils.toJson(articleList);
    }

    @RequestMapping("/toDetail")
    public String toDetail(int id, Model model){
        Article article = articleService.selectById(id);
        model.addAttribute("content", article.getContent());
        model.addAttribute("author", article.getAuthor());
        model.addAttribute("type", articleService.selectNameById(article.getType()));
        model.addAttribute("time", article.getTime());
        model.addAttribute("title", article.getTitle());
        //为什么在controller层直接跳转到detail.jsp时，detail.jsp中的内容直接会在iframe中显示，而不是另外跳转到单独页面呢
        return "detail";
    }

    @RequestMapping("/toAddArticle")
    public String toAddArticle(){
        return "editor";
    }

    @RequestMapping("/addArticle")
    @ResponseBody
    //一定要用@RequestBody修饰实体类 来接受前端传来的json数据-----(加了报错。。。###尴尬了，之前好像一直是表单方式提交的，ajax一直报canceled）
    //@RequestBody接受的是一个json对象的字符串，而不是Json对象，在请求时往往都是Json对象，用JSON.stringify(data)的方式就能将对象变成json字符串。
    //前端请求传Json对象则后端使用@RequestParam；
    //前端请求传Json对象的字符串则后端使用@RequestBody。

//    用springmvc @RequestBody注解做提交json字符串自动绑定到pojo入参,一定一定要导包
    public String addArticle(@RequestBody Article article){
        //格式化当前时间为 timestamp类型，存入数据库
        SimpleDateFormat df = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
        String dateTime = df.format(new Date());
        article.setTime(dateTime);
        System.out.println(article.toString());
        articleService.addArticle(article);
        return "success";
    }


    /*index页面 通过a标签 请求：/toUpdate?id=...的方式到这来
    这里再将id传到update.jsp页面，
    update.jsp再通过ajax将id传回/update请求
    /update处理前端数据,返回修改后的数据
    点击提交按钮，走/updateArticle,实现更新后的文章提交*/

    @RequestMapping("/toUpdate")
    public String toUpdate(int id, Model model){
        model.addAttribute("id", id);
        return "update";
    }

    @ResponseBody
    @RequestMapping("/update")
    public String update(int id) throws JsonProcessingException {
        System.out.println("id====="+id);
        Article article =articleService.selectById(id);
        System.out.println(JsonUtils.toJson(article));
        return JsonUtils.toJson(article);
    }

    @ResponseBody
    @RequestMapping("/updateArticle")
    public String updateArticle(@RequestBody Article article){
        //格式化当前时间为 timestamp类型，存入数据库
        SimpleDateFormat df = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
        String dateTime = df.format(new Date());
        article.setTime(dateTime);
        System.out.println(article.toString());
        articleService.updateArticle(article);
        return "success";
    }

    @ResponseBody
    @RequestMapping("/delete")
    public String delete(int id){
        articleService.delete(id);
        return "";
    }

    @ResponseBody
    @RequestMapping("/allArticle")
    public String allArticle() throws JsonProcessingException {
        List<Article> allArticleList = articleService.allArticle();
        return JsonUtils.toJson(allArticleList);
    }

}
