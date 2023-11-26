package com.opisir.bill.repository;

import com.opisir.bill.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * @Auther: dingjn
 * @Desc:
 */
@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {

    List<Category> findByType(String type);


}
