package com.qshh.service.impl;

import com.qshh.mapper.ArticleMapper;
import com.qshh.pojo.Article;
import com.qshh.service.ArticleService;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Description:
 * @Author qshh
 * @Date 2021/9/6 22:49
 */
@Service("articleService")
public class ArticleServiceImpl implements ArticleService {

    // service层调用dao层
    @Resource
    private ArticleMapper articleMapper;

    @Override
    public List<Article> selectByType(@RequestParam("type") String type) {
        return articleMapper.selectByType(type);
    }

    @Override
    public String getContentById(int id) {
        return articleMapper.getContentById(id);
    }

    @Override
    public int addArticle(Article article) {
        return articleMapper.addArticle(article);
    }

    @Override
    public int delete(int id) {
        return articleMapper.delete(id);
    }

    @Override
    public List<Article> allArticle() {
        return articleMapper.allArticle();
    }

    @Override
    public Article selectById(int id) {
        return articleMapper.selectById(id);
    }

    @Override
    public int updateArticle(Article article) {
        return articleMapper.updateArticle(article);
    }
}
