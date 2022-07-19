package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();   //��ǰ ����� �����ϱ� ���� ArrayList<Product> ��ü Ÿ���� ���� listOfProducts�� �ۼ�
	private static ProductRepository instance = new ProductRepository();
    public ProductRepository() {   //�⺻ �����ڸ� ���� �� 3���� ��ǰ������ ����.  ArrayList<Product> ��ü Ÿ���� ���� listOfProducts�� ����
        Product phone = new Product("P0001", "iPhone 13 pro", 1350000);
        phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
        phone.setCategory("Smart Phone");
        phone.setManufacturer("Apple");
        phone.setUnitsInStock(1000);
        phone.setCondition("New");

        Product notebook = new Product("P0002", "Macbook pro 13", 1790000);
        notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
        notebook.setCategory("Notebook");
        notebook.setManufacturer("Apple");
        notebook.setUnitsInStock(1000);
        notebook.setCondition("New");

        Product tablet = new Product("P0003", "iPad pro", 999000);
        tablet.setDescription("212.8*125.6*6.6m, Super AMPLED display, Octa-core processor");
        tablet.setCategory("Tablet");
        tablet.setManufacturer("Apple");
        tablet.setUnitsInStock(1000);
        tablet.setCondition("Exist");

        listOfProducts.add(phone);
        listOfProducts.add(notebook);
        listOfProducts.add(tablet);
    }
    public static ProductRepository getInstance() {
    	return instance;
    }
    public ArrayList<Product> getAllProducts() {   //��ü Ÿ���� ���� listOfProducts�� ����� ��� ��ǰ ����� �������� getAllProduct() �޼ҵ带 �ۼ�
                return listOfProducts;
        }
    public Product getProductById(String productId) {
    	Product productById = null;
    	for (int i=0;i<listOfProducts.size();i++) {
    		Product product = listOfProducts.get(i);
    		if(product != null &&product.getProductId()!=null && product.getProductId().equals(productId)){
    			productById = product;
    			break;
    		}
    	}
    	return productById;
    }
    public void addProduct(Product product) {
    	listOfProducts.add(product);
    }
    
}


