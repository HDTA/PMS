package utils;

import net.sf.json.JSONObject;

import java.util.HashMap;

/**
 * 解析json的工具类
 */
public class JsonParse {

    /**
     *
     * @param data ajax传递的json字符串参数
     * @param key json对象的key
     * @return 对应key的字符串
     */
    public static String parseJson(String data,String key){
        JSONObject jsonData = JSONObject.fromObject(data);

        return jsonData.getString(key);
    }


    /**
     *
     * @param data java对象
     * @return json字符串
     */
    public static <T> String parseJson(T data){
        JSONObject jsonData = JSONObject.fromObject(data);

        return jsonData.toString();
    }


    public static  String parseError(String errorMsg){
        HashMap<String,String > error = new HashMap<>();
        error.put("error", errorMsg);
        JSONObject jsonData = JSONObject.fromObject(error);

        return jsonData.toString();
    }


}
