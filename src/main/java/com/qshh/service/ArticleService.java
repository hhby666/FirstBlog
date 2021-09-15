/**
 * @author qshh
 * @date 2021/9/6 22:48
 */
package com.qshh.service;

import com.qshh.pojo.Article;

import java.util.List;
import java.util.Map;

public interface ArticleService {

    List<Map<String, Object>> selectByType(int type);
    String getContentById(int id);
    int addArticle(Article article);
    int delete(int id);
    List<Article> allArticle();
    Article selectById(int id);
    int updateArticle(Article article);
    String selectNameById(int id);
}
