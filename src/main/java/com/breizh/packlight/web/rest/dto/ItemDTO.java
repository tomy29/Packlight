package com.breizh.packlight.web.rest.dto;

import java.util.HashSet;
import java.util.Set;

public class ItemDTO {

	private Long id;
	private String label;
	private Long weight;
	private boolean onMe;
	private Long idHike;
	private Long categoryId;
	
	private Set<ItemHikeDTO> itemHikes = new HashSet<ItemHikeDTO>(0);

	
	public ItemDTO() {
    }

    public ItemDTO(String label, Long weight) {
        this.setLabel(label);
        this.weight = weight;
    }
    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getWeight(){
		return this.weight;
	}
	
	public void setWeight(Long weight){
		this.weight = weight;
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

	public boolean isOnMe() {
		return onMe;
	}

	public void setOnMe(boolean onMe) {
		this.onMe = onMe;
	}

	public Long getIdHike() {
		return idHike;
	}

	public void setIdHike(Long idHike) {
		this.idHike = idHike;
	}

	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

}
