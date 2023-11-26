package com.opisir.bill.service;

import com.opisir.bill.model.Category;
import com.opisir.bill.repository.CategoryRepository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CategoryService {

    @Resource
    private CategoryRepository categoryRepository;


   public List<Category> findIncomeCategoryList(){
        return categoryRepository.findByType("income");
    }

    public List<Category> findConsumeCategoryList(){
        return categoryRepository.findByType("consume");
    }

}
