package models;

import java.io.Serializable;

/**
 * Created by Huy Trinh on 0020/20/02/2016.
 */
public class Categories implements Serializable {
    private int id;
    private String name;
    private String status;
    private boolean isDelete;

    public Categories() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public boolean isDelete() {
        return isDelete;
    }

    public void setDelete(boolean delete) {
        isDelete = delete;
    }
}
