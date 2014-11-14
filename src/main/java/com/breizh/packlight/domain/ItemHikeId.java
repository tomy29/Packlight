package com.breizh.packlight.domain;

import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;

@Embeddable
public class ItemHikeId implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 309281001799054021L;
	private Item item;
    private Hike hike;
    private Category cat;

	@ManyToOne
	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	@ManyToOne
	public Hike getHike() {
		return hike;
	}

	public void setHike(Hike hike) {
		this.hike = hike;
	}

	
	@ManyToOne
	public Category getCategory() {
		return cat;
	}

	public void setCategory(Category cat) {
		this.cat = cat;
	}
	
	public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ItemHikeId that = (ItemHikeId) o;

        if (item != null ? !item.equals(that.item) : that.item != null) return false;
        if (hike != null ? !hike.equals(that.hike) : that.hike != null)
            return false;

        return true;
    }

    public int hashCode() {
        int result;
        result = (item != null ? item.hashCode() : 0);
        result = 31 * result + (hike != null ? hike.hashCode() : 0);
        return result;
    }
    
}