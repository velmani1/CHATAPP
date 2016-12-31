package com.niit.model;
/*package com.model;

import java.io.Serializable;
import java.util.Date;
import java.util.UUID;

import javax.annotation.Generated;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity(name="COMMENTS")
@Table
public class Comment implements Serializable {

	*//**
	 * 
	 *//*
	private static final long serialVersionUID = 2606370369553591529L;

	@Column(name = "email_id")
	private String email_id;
	private String cmnt;
	private Date commentedAt;
			
	public Comment() {
		this.c_id = "CMT" + UUID.randomUUID().toString().substring(24).toUpperCase();
	}
	@Id
	private String cid;
	
	
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getComment() {
		return cmnt;
	}
	public void setComment(String comment) {
		this.cmnt = comment;
	}
	public Date getCommentedAt() {
		return commentedAt;
	}
	public void setCommentedAt(Date commentedAt) {
		this.commentedAt = commentedAt;
	}

	
	 * Use of mapping to blog
	 * 
	@JsonBackReference
	@ManyToOne
	@JoinColumn(name = "b_id" , nullable = false)
	private Blog blog;
	
	public Blog getBlog() {
		return blog;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	@Override
	public String toString() {
		return "Comment [id=" + cid + ", email_id=" + email_id + ", cmnt=" + cmnt + ", commentedAt=" + commentedAt
				+ "]";
	}
	
	//==========================
	
	

	
	
}
*/