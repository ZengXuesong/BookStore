package Entity;

public class BookDetail{

    private int id;
    private int book_id;
    private String publish_home;
    private String author;
    private int page_count;
    private int sale_count;
    private double discount;

    public BookDetail(){}

    public BookDetail(int id, int book_id, String publish_home, String author, int page_count, int sale_count, double discount) {
        this.id = id;
        this.book_id = book_id;
        this.publish_home = publish_home;
        this.author = author;
        this.page_count = page_count;
        this.sale_count = sale_count;
        this.discount = discount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getBook_id() {
        return book_id;
    }

    public void setBook_id(int book_id) {
        this.book_id = book_id;
    }

    public String getPublish_home() {
        return publish_home;
    }

    public void setPublish_home(String publish_home) {
        this.publish_home = publish_home;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getPage_count() {
        return page_count;
    }

    public void setPage_count(int page_count) {
        this.page_count = page_count;
    }

    public int getSale_count() {
        return sale_count;
    }

    public void setSale_count(int sale_count) {
        this.sale_count = sale_count;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    @Override
    public String toString() {
        return "BookDetail{" +
                "id=" + id +
                ", book_id=" + book_id +
                ", publish_home='" + publish_home + '\'' +
                ", author='" + author + '\'' +
                ", page_count=" + page_count +
                ", sale_count=" + sale_count +
                ", discount=" + discount +
                '}';
    }
}
