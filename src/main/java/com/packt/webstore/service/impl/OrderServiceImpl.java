package com.packt.webstore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.packt.webstore.model.Product;
import com.packt.webstore.repository.ProductRepository;
import com.packt.webstore.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private ProductRepository productRepository;
	
	public void processOrder(String productId, int quantity) {
		Product productById = productRepository.getProductById(productId);
		
		if (productById.getUnitsInStock() < quantity){	
			throw new IllegalArgumentException("Out of stock. Available Units in stock " + productById.getUnitsInStock());
		}
		productById.setUnitsInStock(productById.getUnitsInStock() - quantity);	
	}
	
}
