package com.breizh.packlight.domain;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.joda.time.LocalDate;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "T_HIKE")
public class Hike implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String label;
	private LocalDate beginDate;
	private String startingTown;
	private Long duration;
	
	private Set<ItemHike> itemHikes = new HashSet<ItemHike>(0);

	public Hike() {
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

	@Column(name = "label", nullable = false, length = 100)
	public String getLabel() {
		return this.label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	
//    private User user;
//    
//    @JsonIgnore
//    @ManyToOne
//	public User getUser() {
//		return user;
//	}
//
//
//	public void setUser(User user) {
//		this.user = user;
//	}


	@OneToMany(fetch = FetchType.EAGER, mappedBy = "pk.hike")
	public Set<ItemHike> getItemHikes() {
		return this.itemHikes;
	}

	public void setItemHikes(Set<ItemHike> itemHikes) {
		this.itemHikes = itemHikes;
	}

	@Column(name = "beginDate")
	public LocalDate getBeginDate() {
		return beginDate;
	}


	public void setBeginDate(LocalDate beginDate) {
		this.beginDate = beginDate;
	}

	@Column(name = "startingTown", nullable = false, length = 100)
	public String getStartingTown() {
		return startingTown;
	}


	public void setStartingTown(String startingTown) {
		this.startingTown = startingTown;
	}

	@Column(name = "duration")
	public Long getDuration() {
		return duration;
	}


	public void setDuration(Long duration) {
		this.duration = duration;
	}



}