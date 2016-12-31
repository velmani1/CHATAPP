package com.niit.model;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity(name="BLOG")
@Table
public class Blog implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2669625616518078597L;
	@Id
	@Column(name = "email_id")
	private String email_id;
	@Column (name= "b_id")
	private String id;
	private String title;
	private String content;
	@Column(name = "created_at")
	private Date createdAt;
	private String status;
	

   
	/*
	 * Blog Comments 
	 * */
	
	public String getid() {
		return id;
	}


	public void setid(String id) {
		this.id = id;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	public String getEmail_id() {
		return email_id;
	}


	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}



	/*@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "blog")
	@JsonManagedReference
	private Set<Comment> comments = new HashSet<>();
	
	
	public Set<Comment> getComments() {
		return comments;
	}


	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}
	*/
	//==============================
	

	public Blog() {
		this.id = "BLOG" + UUID.randomUUID().toString().substring(24).toUpperCase();				
	}
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	


	@Override
	public String toString() {
		return "Blog [id=" + id + ", title=" + title + ", content=" + content + ", createdAt=" + createdAt + ", status="
				+ status + ", email_id=" + email_id + "]";
	}
		
	
}
