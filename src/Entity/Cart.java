package Entity;

public class Cart {
    private int id;
    private int user_id;
    private int book_id;
    private int count;
    private double all_price;

    public Cart(){}

    public Cart(int id, int user_id, int book_id, int count, double all_price) {
        this.id = id;
        this.user_id = user_id;
        this.book_id = book_id;
        this.count = count;
        this.all_price = all_price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getBook_id() {
        return book_id;
    }

    public void setBook_id(int book_id) {
        this.book_id = book_id;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public double getAll_price() {
        return all_price;
    }

    public void setAll_price(double all_price) {
        this.all_price = all_price;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", book_id=" + book_id +
                ", count=" + count +
                ", all_price=" + all_price +
                '}';
    }
}
