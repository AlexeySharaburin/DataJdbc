package ru.netology.jdbc.model;

public class Product {

    private String name;
    private String product_name;

    public Product(String name, String product_name) {
        this.name = name;
        this.product_name = product_name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    @Override
    public String toString() {
        return "Product{" +
                "name='" + name + '\'' +
                ", product_name='" + product_name + '\'' +
                '}';
    }
}
