package com.sns.table;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="schedule")
public class Schedule {
	@Id
	@Column(name="seq", unique = true)
	private int seq;
	@Column(name="member_seq", unique = true)
	private int member_seq;
	@Column(name="schedule_name", unique = true)
	private String schedule_name;
	@Column(name="plan_date", unique = true)
	private Date plan_date;
	// date 구조 변경 => NotNull=false, default = now()
	@Column(name="plan_hit", unique = true)
	private int plan_hit;
	@Column(name="on_off", unique = true)
	private int on_off;
	
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(int member_seq) {
		this.member_seq = member_seq;
	}
	public String getSchedule_name() {
		return schedule_name;
	}
	public void setSchedule_name(String schedule_name) {
		this.schedule_name = schedule_name;
	}
	public Date getPlan_date() {
		return plan_date;
	}
	public void setPlan_date(Date plan_date) {
		this.plan_date = plan_date;
	}
	public int getPlan_hit() {
		return plan_hit;
	}
	public void setPlan_hit(int plan_hit) {
		this.plan_hit = plan_hit;
	}
	public int getOn_off() {
		return on_off;
	}
	public void setOn_off(int on_off) {
		this.on_off = on_off;
	}
}
