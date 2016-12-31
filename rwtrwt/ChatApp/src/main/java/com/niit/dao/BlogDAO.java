package com.niit.dao;
//package com.niit.dao;

import java.util.List;

import com.niit.model.Blog;

public interface BlogDAO {
	

	public Blog findById(int b_id);

	public Blog findByName(String title);

	public void save(Blog bl);

	public void update(Blog bl);

	public void delete(int b_id);

	public void delall();

	public List<Blog> AllBlog();

   
  
}




