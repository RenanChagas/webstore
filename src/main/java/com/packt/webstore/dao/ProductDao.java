package com.packt.webstore.dao;

import org.springframework.stereotype.Repository;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.packt.webstore.model.Product;
import com.packt.webstore.repository.ProductRepository;

@Repository
public class ProductDao implements ProductRepository{

	private List<Product> listOfProducts = new ArrayList<Product>();
	
	public ProductDao(){
		Product iphone = new Product("P1234","iPhone 5s", new BigDecimal(500));
		iphone.setDescription("Apple iPhone 5s smartphone with 4.00 inch 640x1136 display");
		iphone.setCategory("SmartPhone");
		iphone.setManufacturer("Apple");
		iphone.setUnitsInStock(1000);
		
		Product laptop_dell = new Product("P1235","Dell Inspiron", new BigDecimal(700));
		laptop_dell.setDescription("Dell Inspiron 14 inch Laptop (Black) with 3rd generation i5");
		laptop_dell.setCategory("Laptop");
		laptop_dell.setManufacturer("Dell");
		laptop_dell.setUnitsInStock(1000);
		
		Product tablet_nexus = new Product("P1236","Nexus 7", new BigDecimal(300));
		tablet_nexus.setDescription("Google Nexys 7 is the lightest 7 inch tablet");
		tablet_nexus.setCategory("Tablet");
		tablet_nexus.setManufacturer("Google");
		tablet_nexus.setUnitsInStock(1000);
		
		listOfProducts.add(iphone);
		listOfProducts.add(laptop_dell);
		listOfProducts.add(tablet_nexus);
		
	}
	
	public List<Product> getAllProducts() {
		return listOfProducts;
	}

	public Product getProductById(String productId) {
		Product productById = null;
		
		for (Product product : listOfProducts){
			if (product!=null && product.getProductId()!= null && product.getProductId().equals(productId)){
				productById = product;
				break;
			}
		}
		if (productById == null){
			throw new IllegalArgumentException("No products found with the product id: " +productId);
		}
		return productById;
	}

	public List<Product> getProductsByCategory(String category) {
		List<Product> productsByCategory = new ArrayList<Product>();
		
		for (Product product : listOfProducts){
			if (category.equalsIgnoreCase(product.getCategory())){
				productsByCategory.add(product);
			}
		}
		
		return productsByCategory;
	}

	public Set<Product> getProductsByFilter(Map<String, List<String>> filterParams) {
		Set<Product> productsByBrand = new HashSet<Product>();
		Set<Product> productsByCategory = new HashSet<Product>();
		
		Set<String> criterias = filterParams.keySet();
		
		if(criterias.contains("brand")){
			for (String brandName : filterParams.get("brand")){
				for(Product product: listOfProducts){
					if (brandName.equalsIgnoreCase(product.getManufacturer())){
						productsByBrand.add(product);
					}
				}
			}
		}
		
		if (criterias.contains("category")){
			for (String category : filterParams.get("category")){
				productsByCategory.addAll(this.getProductsByCategory(category));
			}
		}
		productsByCategory.retainAll(productsByBrand);
		return productsByCategory;
	}
	
	

}
