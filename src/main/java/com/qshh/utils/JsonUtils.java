package com.qshh.utils;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;

/**
 * @Description:
 * @Author qshh
 * @Date 2021/9/7 10:56
 */
public class JsonUtils {

    // 将对象转为json字符串
    public static String toJson(Object object) throws JsonProcessingException {
        ObjectMapper objectMapper = new ObjectMapper();
        return objectMapper.writeValueAsString(object);
    }
    //将json字符串解析为对象
    public static Object toObject (String jsonString, Object object) throws IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        return objectMapper.readValue(jsonString, object.getClass());
    }
}
