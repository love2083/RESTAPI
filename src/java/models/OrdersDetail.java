package models;

import java.io.Serializable;

/**
 * Created by Huy Trinh on 0020/20/02/2016.
 */
public class OrdersDetail implements Serializable {
    private int id;
    private int orderID;
    private int productID;
    private int quantity;
    private float total;

    public OrdersDetail() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }
}
