package com.breizh.packlight.service;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.breizh.packlight.domain.Category;
import com.breizh.packlight.domain.Hike;
import com.breizh.packlight.domain.Item;
import com.breizh.packlight.domain.ItemHike;
import com.breizh.packlight.repository.CategoryRepository;
import com.breizh.packlight.repository.HikeRepository;
import com.breizh.packlight.repository.ItemRepository;

@Service
@Transactional
public class ItemService {

	@Inject
	ItemRepository itemRepo;
	
	@Inject
	HikeRepository hikeRepo;
	
	@Inject
	CategoryRepository catRepo;
	
    private final Logger log = LoggerFactory.getLogger(ItemService.class);

    
    public void saveHikeItem(int hikeId, int itemId){
    	Hike hike = hikeRepo.findOne(new Long(1));
    	
    	Category cat = catRepo.findOne(new Long(1));
    	
    	Item item = itemRepo.findOne(new Long(70));
    	item.getItemHikes();
    	item.setLabel("test item");
    	
    	
    	
    	ItemHike ih = new ItemHike();
    	ih.setHike(hike);
    	ih.setItem(item);
    	ih.setCategory(cat);
    	item.getItemHikes().add(ih);
    	log.info("Insertion de : "+item.toString());
    	itemRepo.save(item);
    }


	public void deleteItemFromHike(Long idItem, Long idHike) {
		Hike hike = hikeRepo.findOne(idHike);
		Item item = itemRepo.findOne(idItem);
		itemRepo.deleteItemFromHike(item, hike);
		
	}
}
