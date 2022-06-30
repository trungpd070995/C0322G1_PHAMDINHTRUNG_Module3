package service;

import model.Product;
import reponsitory.IProductReponsitory;
import reponsitory.ProductReponsitoryImpl;

import java.util.List;

public class ProductServiceImpl implements IProductService {

    private IProductReponsitory productReponsitory = new ProductReponsitoryImpl();

    @Override
    public List<Product> findAll() {
        return productReponsitory.findAll();
    }

    @Override
    public void create(Product product) {
        productReponsitory.create(product);
    }

    @Override
    public void edit(int idEdit) {

    }

    @Override
    public List<Product> findByName(String name) {
        return productReponsitory.findByName(name);
    }

    @Override
    public void delete(int idDelete) {
        this.productReponsitory.delete(idDelete);
    }

}
