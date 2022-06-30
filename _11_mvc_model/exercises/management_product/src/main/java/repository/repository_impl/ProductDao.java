package repository.repository_impl;

import model.Product;
import repository.IProductDao;
import java.util.ArrayList;
import java.util.List;

public class ProductDao implements IProductDao {

    private static List<Product> productList;

    static {
        productList = new ArrayList<>();
        productList.add( new Product(1, "Iphone 13", 2000, "Pink", "Apple"));
        productList.add( new Product(2, "Xiaomi 11 Pro", 800, "Yello", "Xiaomi"));
        productList.add( new Product(3, "ROG Phone 5", 1000, "Grey", "Asus"));
        productList.add( new Product(4, "Redmi Note 10", 700, "Green", "Xiaomi"));
        productList.add( new Product(5, "Samsung S20 Ultra", 1200, "White", "Samsung"));
    }

    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void save(Product product) {
        productList.add(product);
    }

    @Override
    public Product findById(int id) {
        for (Product element : productList) {
            if (element.getId() == id){
                return element;
            }
        }
        return null;
    }

    @Override
    public void update(int id, Product product) {
        for (Product element: productList ){
            if (element.getId() == product.getId()){
                productList.set(productList.indexOf(element),product);
                break;
            }
        }
    }

    @Override
    public void remove(int id) {
        for (Product element: productList ){
            if (element.getId() == id){
                productList.remove(productList.indexOf(element));
                break;
            }
        }
    }
}
