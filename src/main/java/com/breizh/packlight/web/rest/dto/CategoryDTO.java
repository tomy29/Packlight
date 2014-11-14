package com.breizh.packlight.web.rest.dto;

import java.util.HashSet;
import java.util.Set;

public class CategoryDTO {

	private Long id;
	private String label;
	
	private Set<ItemHikeDTO> itemHikes = new HashSet<ItemHikeDTO>(0);

	
	public CategoryDTO() {
    }

    public CategoryDTO(String label) {
        this.setLabel(label);
    }
    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public Set<ItemHikeDTO> getItemHikes() {
		return itemHikes;
	}

	public void setItemHikes(Set<ItemHikeDTO> itemHikes) {
		this.itemHikes = itemHikes;
	}

	

    

    
}
