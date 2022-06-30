package reponsitory;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductReponsitoryImpl implements IProductReponsitory{

    static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "Iphone", 100, "Con hang", "Apple"));
        productList.add(new Product(2, "Xiaomi", 200, "Het hang", "Redmi"));
        productList.add(new Product(3, "Samsung", 300, "Co hang", "Samsung"));
        productList.add(new Product(4, "Vivo", 400, "Het hang", "Vivo"));
        productList.add(new Product(5, "Q-mobile", 500, "Co hang", "Q"));
    }

    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void create(Product product) {
        productList.add(product);
    }

    @Override
    public void edit(int idEdit) {

    }


    @Override
    public List<Product> findByName(String name) {
        List<Product> searchList = new ArrayList<>();
        for (Product item :
                productList) {
            if (item.getName().contains(name)){
                searchList.add(item);
            }
        }
        return searchList;
    }

    @Override
    public void delete(int idDelete) {
        for (Product product: productList) {
            if (product.getId() == idDelete){
                productList.remove(product);
                break;
            }
        }
    }
}
