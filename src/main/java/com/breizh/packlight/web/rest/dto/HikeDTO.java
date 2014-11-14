package com.breizh.packlight.web.rest.dto;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.joda.time.LocalDate;

import com.breizh.packlight.domain.ItemHike;

public class HikeDTO {

	private Long id;
	private String label;
	private LocalDate beginDate;
	private String startingTown;
	private Long duration;
	
	private Set<ItemHikeDTO> itemHikes = new HashSet<ItemHikeDTO>(0);

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

	public LocalDate getBeginDate() {
		return beginDate;
	}

	public void setBeginDate(LocalDate beginDate) {
		this.beginDate = beginDate;
	}

	public String getStartingTown() {
		return startingTown;
	}

	public void setStartingTown(String startingTown) {
		this.startingTown = startingTown;
	}

	public Long getDuration() {
		return duration;
	}

	public void setDuration(Long duration) {
		this.duration = duration;
	}

	public Set<ItemHikeDTO> getItemHikes() {
		return itemHikes;
	}

	public void setItemHikes(Set<ItemHikeDTO> itemHikes) {
		this.itemHikes = itemHikes;
	}

	public HikeDTO() {
    }

    public HikeDTO(String label, LocalDate beginDate, String startingTown, Long duration) {
        this.label = label;
        this.beginDate = beginDate;
        this.startingTown = startingTown;
        this.duration = duration;
    }

	@Override
	public String toString() {
		return "HikeDTO [id=" + id + ", label=" + label + ", beginDate="
				+ beginDate + ", startingTown=" + startingTown + ", duration="
				+ duration + "]";
	}

    

    
}
