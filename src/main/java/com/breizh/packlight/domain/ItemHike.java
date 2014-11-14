package com.breizh.packlight.domain;

import javax.persistence.AssociationOverride;
import javax.persistence.AssociationOverrides;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "t_item_hike")
@AssociationOverrides({
		@AssociationOverride(name = "pk.item", joinColumns = @JoinColumn(name = "iditem")),
		@AssociationOverride(name = "pk.hike", joinColumns = @JoinColumn(name = "idlist")),
		@AssociationOverride(name = "pk.category", joinColumns = @JoinColumn(name = "idCategory"))})
public class ItemHike implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ItemHikeId pk = new ItemHikeId();
	private boolean onMe = false;
	private Long quantity;
	private String comment;
	
	
	public ItemHike() {
	}

	@EmbeddedId
	public ItemHikeId getPk() {
		return pk;
	}

	public void setPk(ItemHikeId pk) {
		this.pk = pk;
	}

	@Transient
	public Item getItem() {
		return getPk().getItem();
	}

	public void setItem(Item item) {
		getPk().setItem(item);
	}

	@Transient
	public Hike getHike() {
		return getPk().getHike();
	}

	public void setHike(Hike hike) {
		getPk().setHike(hike);
	}

	@Transient
	public Category getCategory() {
		return getPk().getCategory();
	}

	public void setCategory(Category cat) {
		getPk().setCategory(cat);
	}

	public boolean isOnMe() {
		return onMe;
	}

	public void setOnMe(boolean onMe) {
		this.onMe = onMe;
	}

	public Long getQuantity() {
		return quantity;
	}

	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		ItemHike that = (ItemHike) o;

		if (getPk() != null ? !getPk().equals(that.getPk())
				: that.getPk() != null)
			return false;

		return true;
	}

	public int hashCode() {
		return (getPk() != null ? getPk().hashCode() : 0);
	}
}