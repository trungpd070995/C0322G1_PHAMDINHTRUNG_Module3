package reponsitory;

import model.Product;

import java.util.List;

public interface IProductReponsitory {
    List<Product> findAll();

    void create(Product student);

    public void edit(int idEdit);

    List<Product> findByName(String name);

    void delete(int idDelete);
}
