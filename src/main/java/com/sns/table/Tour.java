package com.sns.table;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tour")
public class Tour {
	@Id
	@Column(name="seq", unique=true)
	private int seq;
	@Column(name="place_name", unique=true)
	private String place_name;
	@Column(name="thumbnail", unique=true)
	private String thumbnail;	//대표 이미지 url ?resuorce 경로 ?
	@Column(name="keyword", unique=true)
	private String keyword;
	@Column(name="place_url", unique=true)
	private String place_url;	// 설명 url
	@Column(name="place_hit", unique=true)
	private int place_hit;
	@Column(name="tour_url", unique=true)
	private String tour_url;		// 관광지 주소 ?? 이게 머야 address?
	@Column(name="simple_content", unique=true)
	private String simple_content;
	
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getPlace_name() {
		return place_name;
	}
	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getPlace_url() {
		return place_url;
	}
	public void setPlace_url(String place_url) {
		this.place_url = place_url;
	}
	public int getPlace_hit() {
		return place_hit;
	}
	public void setPlace_hit(int place_hit) {
		this.place_hit = place_hit;
	}
	public String getTour_url() {
		return tour_url;
	}
	public void setTour_url(String tour_url) {
		this.tour_url = tour_url;
	}
	public String getSimple_content() {
		return simple_content;
	}
	public void setSimple_content(String simple_content) {
		this.simple_content = simple_content;
	}
	
}
