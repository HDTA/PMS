package realms;

import java.util.LinkedHashMap;

public class filterChainDefinitionMapFactory {

    public LinkedHashMap<String,String> filterChainDefinitionMapBuilder(){
        LinkedHashMap<String,String> map = new LinkedHashMap<>();

        map.put("/js/**","anon");
        map.put("/css/**","anon");
        map.put("/img/**","anon");

        map.put("/login.jsp","anon");
        map.put("/login.do","anon");
        map.put("/ajax.do","anon");
        map.put("/code.do","anon");
        map.put("/value.do","anon");
        map.put("/**","authc");
        //map.put("/**","anon");
        return map;
    }

}
