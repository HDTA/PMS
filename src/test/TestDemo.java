package test;

import entity.User;
import org.apache.commons.dbcp.BasicDataSource;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class TestDemo {

    @Test
    public void demo(){
        ApplicationContext ac = new FileSystemXmlApplicationContext("web/WEB-INF/dispatcher-servlet.xml");


        ApplicationContext a = new ClassPathXmlApplicationContext("classpath:resources/mybatis.xml");


        Object source = a.getBean("mapperScannerConfigurer");
        System.out.println(source);
    }

    @Test
    public void MD5() {
        String id = "1";
        String password = "java";
        ByteSource salt = ByteSource.Util.bytes(id);
        SimpleHash hash = new SimpleHash("MD5",password,salt,100);
        System.out.println(hash);
    }

    @Test
    public void use(){
        User user = new User();
        user.setUsername("333");
        System.out.println(user.getUsername());
    }
}
