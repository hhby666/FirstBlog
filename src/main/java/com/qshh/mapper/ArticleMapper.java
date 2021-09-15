/**
 * @author qshh
 * @date 2021/9/6 22:24
 */
package com.qshh.mapper;

import com.qshh.pojo.Article;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Component("articleMapper")
public interface ArticleMapper {

    /**
     * @decription 根据类型名字 查找所有文章
     * @param type
     * @return List<Article>
     */
    List<Map<String, Object>> selectByType(@Param("type") int type);

    /**
     * @decription 根据前端传入的id查找文章内容
     * @param id
     * @return content
     */
    String getContentById(@Param("id") int id);

    /**
     * description: 将文章插入数据库中
     * @param article
     * @return resultNum
     */
    int addArticle(Article article);

    /**
     * @Description: 删除文章
     * @param id
     * @return
     */
    int delete(@Param("id") int id);

    List<Article> allArticle();

    Article selectById(@Param("id") int id);

    int updateArticle(Article article);

    /*
    根据type_id 查type_name
     */
    String selectNameById(@Param("id") int id);

}
