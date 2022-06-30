package service;

import model.Product;

import java.util.List;

public interface IProductService {

    List<Product> findAll();

    void create(Product product);

    void edit(int idEdit);

    List<Product> findByName(String name);

    void delete(int idDelete);
}
