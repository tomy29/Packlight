package com.breizh.packlight.web.rest.dto;


public class ItemHikeDTO {

	private ItemDTO item;
	private HikeDTO hike;
	private boolean onMe = false;
	private String comment;
	private Long quantity;
	


    public ItemDTO getItem() {
		return item;
	}



	public void setItem(ItemDTO item) {
		this.item = item;
	}



	public HikeDTO getHike() {
		return hike;
	}



	public void setHike(HikeDTO hike) {
		this.hike = hike;
	}



	public boolean isOnMe() {
		return onMe;
	}



	public void setOnMe(boolean onMe) {
		this.onMe = onMe;
	}



	public String getComment() {
		return comment;
	}



	public void setComment(String comment) {
		this.comment = comment;
	}



	public Long getQuantity() {
		return quantity;
	}



	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}



	public ItemHikeDTO(){
    }
    

    
}
