package Entity;

public class Search {
    private int id;
    private int user_id;
    private String search_name;

    public Search(int id, int user_id, String search_name) {
        this.id = id;
        this.user_id = user_id;
        this.search_name = search_name;
    }

    public int getId() {
        return id;
    }

    public Search setId(int id) {
        this.id = id;
        return this;
    }

    public int getUser_id() {
        return user_id;
    }

    public Search setUser_id(int user_id) {
        this.user_id = user_id;
        return this;
    }

    public String getSearch_name() {
        return search_name;
    }

    public Search setSearch_name(String search_name) {
        this.search_name = search_name;
        return this;
    }

    @Override
    public String toString() {
        return "Search{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", search_name='" + search_name + '\'' +
                '}';
    }
}
