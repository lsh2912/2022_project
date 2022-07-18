package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();   //상품 목록을 저장하기 위한 ArrayList<Product> 객체 타입의 변수 listOfProducts를 작성
	private static ProductRepository instance = new ProductRepository();
    public ProductRepository() {   //기본 생성자를 만든 후 3개의 상품정보를 설정.  ArrayList<Product> 객체 타입의 변수 listOfProducts에 저장
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
    public ArrayList<Product> getAllProducts() {   //객체 타입의 변수 listOfProducts에 저장된 모든 상품 목록을 가져오는 getAllProduct() 메소드를 작성
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


