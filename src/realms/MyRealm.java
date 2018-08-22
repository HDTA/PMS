package realms;

import dao.ServiceDao;
import entity.User;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;


import javax.annotation.Resource;

public class MyRealm extends AuthorizingRealm {

    @Resource(name = "ServiceDao")
    private ServiceDao dao;


    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

        String userId = (String) token.getPrincipal();
        User user = dao.findUserById(userId);
        AuthenticationInfo authenticationInfo = null;
        if(user != null){
            //ByteSource salt = null;
            ByteSource salt = ByteSource.Util.bytes(userId);
            authenticationInfo = new SimpleAuthenticationInfo(userId,user.getPassword(),salt,getName());
        }
        System.out.println(authenticationInfo);
        return authenticationInfo;
    }
}
