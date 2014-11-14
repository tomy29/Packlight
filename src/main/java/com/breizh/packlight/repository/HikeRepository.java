package com.breizh.packlight.repository;

import com.breizh.packlight.domain.Hike;
        import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Spring Data JPA repository for the Hike entity.
 */
public interface HikeRepository extends JpaRepository<Hike, Long> {

}
