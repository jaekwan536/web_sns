package com.sns.table;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="review")
public class Review {
	@Id
	@Column(name="seq", unique=true)
	private int seq;
	@Column(name="tour_seq", unique=true)
	private int tour_seq;
	@Column(name="member_seq", unique=true)
	private int member_seq;
	@Column(name="title", unique=true)
	private String title;
	@Column(name="content", unique=true)
	private String content;
	@Column(name="star", unique=true)
	private int star;	// default 0 ?
	@Column(name="review_hit", unique=true)
	private int review_hit;
	@Column(name="review_date", unique=true)
	private Date review_date;
	// date 구조 변경 => NotNull=false, default = now()
	
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getTour_seq() {
		return tour_seq;
	}
	public void setTour_seq(int tour_seq) {
		this.tour_seq = tour_seq;
	}
	public int getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(int member_seq) {
		this.member_seq = member_seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public int getReview_hit() {
		return review_hit;
	}
	public void setReview_hit(int review_hit) {
		this.review_hit = review_hit;
	}
	public Date getReview_date() {
		return review_date;
	}
	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}
}
