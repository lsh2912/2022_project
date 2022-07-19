package dto;

import java.io.Serializable;

public class Product implements Serializable {
	 private static final long serialVersionUID = -427400572038677000L;

	    private String productId;        //��ǰ ���̵�
	    private String pname;            //��ǰ��
	    private Integer unitPrice;        //��ǰ ����
	    private String description;      //��ǰ ����
	    private String manufacturer;   //������
	    private String category;        //�з�
	    private long unitsInStock;      //��� ��
	    private String condition;       //�Ż�ǰ or �߰�ǰ or ���ǰ
	    private int quantity; 			// ��ٱ��Ͽ� ��� ��ǰ�� ����
	    
	    public Product() {   //�⺻������ Product() = [Source] - [Generate Constructors from Superclass] - object ���� (�⺻������ �ڵ� �߰�����)
	        super();
	    }
	    public Product(String productId, String pname, Integer unitPrice) {   //Product() ������ = [Source] - [Generate Constructors Using Fields] - productId, pname, unitPrice ���� (�����ڸ� �ڵ� �߰�����)
	        this.productId = productId;
	        this.pname = pname;
	        this.unitPrice = unitPrice;
	    }
	    public String getProductId() {   //[Source] - [Generate Getters and Setters] - ��� �ʵ� ���� (������ �޼ҵ带 �ڵ� �߰�����)
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
