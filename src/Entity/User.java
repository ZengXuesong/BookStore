package Entity;


import java.sql.Timestamp;

public class User {

    private int id;
    private String username;
    private String pwd;
    private String phone;
    private int sex;
    private  String email;
    private Timestamp create_at;
    private Timestamp login_at;
    private int state;


    public User(String username, String pwd, String phone, int sex, String email, Timestamp create_at, Timestamp login_at, int state){
        this.username = username;
        this.pwd = pwd;
        this.phone = phone;
        this.sex = sex;
        this.email = email;
        this.create_at = create_at;
        this.login_at = login_at;
        this.state = state;
    }

    public User(String username,String phone,String pwd){
        this.phone=phone;
        this.username=username;
        this.pwd=pwd;
    }



    public User(int id, String username, String pwd, String phone, int sex, String email, Timestamp create_at, Timestamp login_at, int state) {
        this.id = id;
        this.username = username;
        this.pwd = pwd;
        this.phone = phone;
        this.sex = sex;
        this.email = email;
        this.create_at = create_at;
        this.login_at = login_at;
        this.state = state;
    }

    public User(String username, String pwd) {
        this.username=username;
        this.pwd=pwd;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Timestamp getCreate_at() {
        return create_at;
    }

    public void setCreate_at(Timestamp create_at) {
        this.create_at = create_at;
    }

    public Timestamp getLogin_at() {
        return login_at;
    }

    public void setLogin_at(Timestamp login_at) {
        this.login_at = login_at;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
