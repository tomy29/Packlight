package com.breizh.packlight.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.breizh.packlight.domain.Hike;
import com.breizh.packlight.domain.Item;

/**
 * Spring Data JPA repository for the Item entity.
 */
public interface ItemRepository extends JpaRepository<Item, Long> {

	@Query("delete ItemHike ih where ih.pk.item = ?1 and ih.pk.hike = ?2")
	void deleteItemFromHike(Item item, Hike hike);
    
}
