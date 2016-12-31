package com.niit.controller;
//package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.niit.dao.BlogDAO;
import com.niit.model.Blog;


@RestController
public class BlogController {
	@Autowired
	private BlogDAO blogDAO; // DAO which will do all data
								// retrieval/manipulation work

	// -------------------Retrieve All
	// Users--------------------------------------------------------

	@GetMapping(value = "/blogs")
	public ResponseEntity<List<Blog>> AllBlog() {
		List<Blog> blogs = blogDAO.AllBlog();
		if (blogs.isEmpty()) {
			return new ResponseEntity<List<Blog>>(HttpStatus.NO_CONTENT);// You
																					// many
																					// decide
																					// to
																					// return
																					// HttpStatus.NOT_FOUND
		}
		return new ResponseEntity<List<Blog>>(blogs, HttpStatus.OK);
	}
}
