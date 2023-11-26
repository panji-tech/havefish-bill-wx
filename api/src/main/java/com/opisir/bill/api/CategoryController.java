package com.opisir.bill.api;


import com.opisir.bill.core.interceptors.ScopeLevel;
import com.opisir.bill.model.Category;
import com.opisir.bill.service.CategoryService;
import com.opisir.bill.vo.CategoryVO;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("category")
public class CategoryController {

    @Resource
    private CategoryService categoryService;

    /**
     * 添加流水.
     */
    @PostMapping("/list/income")
    public List<CategoryVO> incomeList() {
        return categoryService.findIncomeCategoryList().stream()
                .map(CategoryController::convCategoryVO).collect(Collectors.toList());

    }

    private static CategoryVO convCategoryVO(Category category) {
        CategoryVO categoryVO = new CategoryVO();
        categoryVO.setId(category.getId());
        categoryVO.setText(category.getName());
        categoryVO.setImage(category.getIcon());
        return categoryVO;
    }

    @ScopeLevel
    @PostMapping("/list/consume")
    public List<CategoryVO> consumeList() {
        return categoryService.findConsumeCategoryList().stream()
                .map(CategoryController::convCategoryVO).collect(Collectors.toList());
    }
}
