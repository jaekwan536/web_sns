package com.sns.table;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cart")
public class Cart implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id	// pk
	@Column(name="seq", unique = true) // x
	private int seq;
	@Column(name="session", unique = true)
	private int session;
	@Column(name="member_seq", unique = true)
	private int member_seq;
	@Column(name="tour_seq", unique = true)
	private int tour_seq;
	@Column(name="date")
	private Date date;
	// date 구조 변경 => NotNull=false, default = now()
	
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getSession() {
		return session;
	}
	public void setSession(int session) {
		this.session = session;
	}
	public int getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(int member_seq) {
		this.member_seq = member_seq;
	}
	public int getTour_seq() {
		return tour_seq;
	}
	public void setTour_seq(int tour_seq) {
		this.tour_seq = tour_seq;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
