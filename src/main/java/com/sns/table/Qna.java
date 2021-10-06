package com.sns.table;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="qna")
public class Qna {
	@Id
	@Column(name="seq", unique=true)
	private int seq;
	@Column(name="member_seq", unique=true)
	private int member_seq;
	@Column(name="qna_title", unique=true)
	private String qna_title;
	@Column(name="qna_content", unique=true)	// ?modify text
	private String qna_content;
	@Column(name="qna_hit", unique=true)
	private int qna_hit;
	@Column(name="qna_date", unique=true)
	private Date qna_date;
	// date 구조 변경 => NotNull=false, default = now()
	@Column(name="manager_id", unique=true)
	private String manager_id;
	@Column(name="answer_content", unique=true)	// ?modify text
	private String answer_content;
	@Column(name="answer_date", unique=true)
	private Date answer_date;
	// date 구조 변경 => NotNull=false, default = now()
	
	
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
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_content() {
		return qna_content;
	}
	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}
	public int getQna_hit() {
		return qna_hit;
	}
	public void setQna_hit(int qna_hit) {
		this.qna_hit = qna_hit;
	}
	public Date getQna_date() {
		return qna_date;
	}
	public void setQna_date(Date qna_date) {
		this.qna_date = qna_date;
	}
	public String getManager_id() {
		return manager_id;
	}
	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}
	public String getAnswer_content() {
		return answer_content;
	}
	public void setAnswer_content(String answer_content) {
		this.answer_content = answer_content;
	}
	public Date getAnswer_date() {
		return answer_date;
	}
	public void setAnswer_date(Date answer_date) {
		this.answer_date = answer_date;
	}
}
