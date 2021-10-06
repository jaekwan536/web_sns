package com.sns.table;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tour_img")
public class Tour_img {
	@Id
	@Column(name="seq", unique=true)
	private int seq;
	@Column(name="tour_list_seq", unique=true)
	private int tour_list_seq;
	@Column(name="img_url", unique=true)
	private int img_url;
	
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getTour_list_seq() {
		return tour_list_seq;
	}
	public void setTour_list_seq(int tour_list_seq) {
		this.tour_list_seq = tour_list_seq;
	}
	public int getImg_url() {
		return img_url;
	}
	public void setImg_url(int img_url) {
		this.img_url = img_url;
	}
}