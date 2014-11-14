package com.breizh.packlight.domain;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * A Category.
 */
@Entity
@Table(name = "T_CATEGORY")
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class Category implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 7843786101092545604L;

	private Set<ItemHike> itemHikes = new HashSet<ItemHike>(0);
	
	
    private Long id;

    @Column(name = "label")
    private String label;

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
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
    
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "pk.category", cascade=CascadeType.ALL)
	public Set<ItemHike> getItemHikes() {
		return this.itemHikes;
	}

	public void setItemHikes(Set<ItemHike> itemhikes) {
		this.itemHikes = itemhikes;
	}


    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }

        Category category = (Category) o;

        if (id != null ? !id.equals(category.id) : category.id != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return (int) (id ^ (id >>> 32));
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", label='" + label + "'" +
                '}';
    }
}
