package Compare;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Compare {

    public static boolean isUsername(String username){
        String regExp="^[a-zA-Z]{5,20}$";
        Pattern p=Pattern.compile(regExp);
        Matcher m=p.matcher(username);
        return m.matches();
    }

    public static boolean isPwd(String pwd){
        String regExp="^[a-zA-Z0-9]{6,20}$";
        Pattern p=Pattern.compile(regExp);
        Matcher m=p.matcher(pwd);
        return m.matches();
    }

    public static boolean isPhone(String phone){
        String regExp="^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$";
        Pattern p=Pattern.compile(regExp);
        Matcher m=p.matcher(phone);
        return m.matches();
    }

    public static boolean isEmail(String email){
        String regExp="^([a-z0-9A-Z]+[-|_|\\\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\\\.)+[a-zA-Z]{2,}$";
        Pattern p=Pattern.compile(regExp);
        Matcher m=p.matcher(email);
        return m.matches();
    }

}
