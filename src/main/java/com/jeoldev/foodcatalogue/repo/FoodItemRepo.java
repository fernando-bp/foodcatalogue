package com.jeoldev.foodcatalogue.repo;

import com.jeoldev.foodcatalogue.entity.FoodItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FoodItemRepo extends JpaRepository<FoodItem, Long> {
    List<FoodItem> findByRestaurantId(Long restaurantId);
}
