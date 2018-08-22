package entity;

import lombok.*;

/**
 * 登录实体类
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {

    private Integer id;
    private String account;
    private String username;
    private String password;
    private String role;
    private String tel;
    private String email;
    private Byte sex;
    private String birthday;
    private String address;
    private String info;


}
