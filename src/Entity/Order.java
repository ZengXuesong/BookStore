package Entity;

import java.sql.Timestamp;

public class Order {

    private int id;
    private int user_id;
    private int book_id;
    private int count;
    private Timestamp add_date;
    private String username;
    private String address;
    private String phone;
    private double all_price;
    private String remark;
    private int state;

    public Order(){}

    public Order(int id, int user_id, int book_id, int count, Timestamp add_date, String username, String address, String phone, double all_price, String remark, int state) {
        this.id = id;
        this.user_id = user_id;
        this.book_id = book_id;
        this.count = count;
        this.add_date = add_date;
        this.username = username;
        this.address = address;
        this.phone = phone;
        this.all_price = all_price;
        this.remark = remark;
        this.state = state;
    }

    public int getId() {
        return id;
    }

    public Order setId(int id) {
        this.id = id;
        return this;
    }

    public int getUser_id() {
        return user_id;
    }

    public Order setUser_id(int user_id) {
        this.user_id = user_id;
        return this;
    }

    public int getBook_id() {
        return book_id;
    }

    public Order setBook_id(int book_id) {
        this.book_id = book_id;
        return this;
    }

    public int getCount() {
        return count;
    }

    public Order setCount(int count) {
        this.count = count;
        return this;
    }

    public Timestamp getAdd_date() {
        return add_date;
    }

    public Order setAdd_date(Timestamp add_date) {
        this.add_date = add_date;
        return this;
    }

    public String getUsername() {
        return username;
    }

    public Order setUsername(String username) {
        this.username = username;
        return this;
    }

    public String getAddress() {
        return address;
    }

    public Order setAddress(String address) {
        this.address = address;
        return this;
    }

    public String getPhone() {
        return phone;
    }

    public Order setPhone(String phone) {
        this.phone = phone;
        return this;
    }

    public double getAll_price() {
        return all_price;
    }

    public Order setAll_price(double all_price) {
        this.all_price = all_price;
        return this;
    }

    public String getRemark() {
        return remark;
    }

    public Order setRemark(String remark) {
        this.remark = remark;
        return this;
    }

    public int getState() {
        return state;
    }

    public Order setState(int state) {
        this.state = state;
        return this;
    }
}
