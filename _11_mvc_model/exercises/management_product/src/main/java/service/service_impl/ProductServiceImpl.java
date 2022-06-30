package service.service_impl;

import model.Product;
import repository.IProductDao;
import repository.repository_impl.ProductDao;
import service.IProductService;
import java.util.List;

public class ProductServiceImpl implements IProductService {

    private static IProductDao productDao = new ProductDao();

    @Override
    public List<Product> findAll() {
        return productDao.findAll();
    }

    @Override
    public void save(Product product) {
        productDao.save(product);
    }

    @Override
    public Product findById(int id) {
        return productDao.findById(id);
    }

    @Override
    public void update(int id, Product product) {

    }

    @Override
    public void remove(int id) {
        productDao.remove(id);
    }
}
