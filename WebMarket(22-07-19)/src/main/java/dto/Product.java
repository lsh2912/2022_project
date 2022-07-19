package dto;

import java.io.Serializable;

public class Product implements Serializable {
	 private static final long serialVersionUID = -427400572038677000L;

	    private String productId;        //상품 아이디
	    private String pname;            //상품명
	    private Integer unitPrice;        //상품 가격
	    private String description;      //상품 설명
	    private String manufacturer;   //제조사
	    private String category;        //분류
	    private long unitsInStock;      //재고 수
	    private String condition;       //신상품 or 중고품 or 재생품
	    private int quantity; 			// 장바구니에 담긴 상품의 개수
	    
	    public Product() {   //기본생성자 Product() = [Source] - [Generate Constructors from Superclass] - object 선택 (기본생성자 자동 추가생성)
	        super();
	    }
	    public Product(String productId, String pname, Integer unitPrice) {   //Product() 생셩자 = [Source] - [Generate Constructors Using Fields] - productId, pname, unitPrice 선택 (생성자를 자동 추가생성)
	        this.productId = productId;
	        this.pname = pname;
	        this.unitPrice = unitPrice;
	    }
	    public String getProductId() {   //[Source] - [Generate Getters and Setters] - 모든 필드 선택 (각각의 메소드를 자동 추가생성)
	        return productId;
	    }
	    public String getPname() {
	        return pname;
	    }
	    public void setPname(String pname) {
	        this.pname = pname;
	    }
	    public void setProductId(String productId) {
	        this.productId = productId;
	    }
	    public Integer getUnitPrice() {
	        return unitPrice;
	    }
	    public void setUnitPrice(Integer unitPrice) {
	        this.unitPrice = unitPrice;
	    }
	    public String getDescription() {
	        return description;
	    }
	    public void setDescription(String description) {
	        this.description = description;
	    }
	    public String getManufacturer() {
	        return manufacturer;
	    }
	    public void setManufacturer(String manufacturer) {
	        this.manufacturer = manufacturer;
	    }
	    public String getCategory() {
	        return category;
	    }
	    public void setCategory(String category) {
	        this.category = category;
	    }
	    public long getUnitsInStock() {
	        return unitsInStock;
	    }
	    public void setUnitsInStock(long unitsInStock) {
	        this.unitsInStock = unitsInStock;
	    }
	    public String getCondition() {
	        return condition;
	    }
	    public void setCondition(String condition) {
	        this.condition = condition;
	    }
	    public int getQuantity(){
	    	return quantity;
	    }

	    public void setQuantity(int quantity){
	    	this.quantity = quantity;
	    }
}
