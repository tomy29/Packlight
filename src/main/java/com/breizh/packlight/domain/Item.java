package com.breizh.packlight.domain;


import static javax.persistence.GenerationType.IDENTITY;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "T_ITEM")
public class Item implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String label;
	private Long weight;
	private Set<ItemHike> itemHikes = new HashSet<ItemHike>(0);

	public Item() {
	}

	

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "label", length = 100)
	public String getLabel() {
		return this.label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	@Column(name = "weight")
	public Long getWeight() {
		return this.weight;
	}

	public void setWeight(Long weight) {
		this.weight = weight;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "pk.item", cascade=CascadeType.ALL)
	public Set<ItemHike> getItemHikes() {
		return this.itemHikes;
	}

	public void setItemHikes(Set<ItemHike> itemhikes) {
		this.itemHikes = itemhikes;
	}

}