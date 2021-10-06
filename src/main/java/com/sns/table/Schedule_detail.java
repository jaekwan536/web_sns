package com.sns.table;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="schedule_detail")
public class Schedule_detail {
	@Id
	@Column(name="seq", unique=true)
	private int seq;
	@Column(name="schedule_seq", unique=true)
	private int schedule_seq;
	@Column(name="tour_seq", unique=true)
	private int tour_seq;
	@Column(name="sort", unique=true)
	private int sort;
	
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getSchedule_seq() {
		return schedule_seq;
	}
	public void setSchedule_seq(int schedule_seq) {
		this.schedule_seq = schedule_seq;
	}
	public int getTour_seq() {
		return tour_seq;
	}
	public void setTour_seq(int tour_seq) {
		this.tour_seq = tour_seq;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
}
