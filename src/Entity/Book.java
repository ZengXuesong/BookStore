package Entity;

import java.util.Date;

public class Book {

    private int id;
    private String name;
    private int type_id;
    private double price;
    private String image_url;
    private String descript;
    private int state;
    private int browse_times;
    private int sale_count;
    private int admin_id;
    private Date creat_at;
    private String type_name;
    private String admin_name;



    public Book(){}

    public Book(int id, String name, int type_id, double price, String image_url, String descript, int state, int browse_times, int sale_count,int admin_id, Date creat_at) {
        this.id = id;
        this.name = name;
        this.type_id = type_id;
        this.price = price;
        this.image_url = image_url;
        this.descript = descript;
        this.state = state;
        this.browse_times = browse_times;
        this.sale_count=sale_count;
        this.admin_id = admin_id;
        this.creat_at = creat_at;
    }

    public int getId() {
        return id;
    }

    public Book setId(int id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public Book setName(String name) {
        this.name = name;
        return this;
    }

    public int getType_id() {
        return type_id;
    }

    public Book setType_id(int type_id) {
        this.type_id = type_id;
        return this;
    }

    public double getPrice() {
        return price;
    }

    public Book setPrice(double price) {
        this.price = price;
        return this;
    }

    public String getImage_url() {
        return image_url;
    }

    public Book setImage_url(String image_url) {
        this.image_url = image_url;
        return this;
    }

    public String getDescript() {
        return descript;
    }

    public Book setDescript(String descript) {
        this.descript = descript;
        return this;
    }

    public int getState() {
        return state;
    }

    public Book setState(int state) {
        this.state = state;
        return this;
    }

    public int getBrowse_times() {
        return browse_times;
    }

    public Book setBrowse_times(int browse_times) {
        this.browse_times = browse_times;
        return this;
    }

    public int getSale_count() {
        return browse_times;
    }

    public Book setSale_count(int sale_count) {
        this.sale_count = sale_count;
        return this;
    }

    public int getAdmin_id() {
        return admin_id;
    }

    public Book setAdmin_id(int admin_id) {
        this.admin_id = admin_id;
        return this;
    }

    public Date getCreat_at() {
        return creat_at;
    }

    public Book setCreat_at(Date creat_at) {
        this.creat_at = creat_at;
        return this;
    }

    public String getType_name() {
        return type_name;
    }

    public Book setType_name(String type_name) {
        this.type_name = type_name;
        return this;
    }

    public String getAdmin_name() {
        return admin_name;
    }

    public Book setAdmin_name(String admin_name) {
        this.admin_name = admin_name;
        return this;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", type_id=" + type_id +
                ", admin_id=" + admin_id +
                ", price=" + price +
                ", image_url='" + image_url + '\'' +
                ", descript='" + descript + '\'' +
                ", browse_times=" + browse_times +
                ", creat_at=" + creat_at +
                ", state=" + state +
                '}';
    }
}
