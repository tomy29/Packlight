package com.breizh.packlight.repository;

import com.breizh.packlight.domain.Category;
        import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Spring Data JPA repository for the Category entity.
 */
public interface CategoryRepository extends JpaRepository<Category, Long> {

}
