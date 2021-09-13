package com.qshh.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @Description:
 * @Author qshh
 * @Date 2021/9/6 22:16
 */
@NoArgsConstructor
@Data
@AllArgsConstructor
public class Article {
    private int id;
    private int type;
    private String content;
    private String author;
    private String time;
    private String title;
}
