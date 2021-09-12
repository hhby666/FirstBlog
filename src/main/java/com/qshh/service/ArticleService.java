/**
 * @author qshh
 * @date 2021/9/6 22:48
 */
package com.qshh.service;

import com.qshh.pojo.Article;

import java.util.List;

public interface ArticleService {

    List<Article> selectByType(String type);
    String getContentById(int id);
    int addArticle(Article article);
    int delete(int id);
    List<Article> allArticle();
    Article selectById(int id);
}
