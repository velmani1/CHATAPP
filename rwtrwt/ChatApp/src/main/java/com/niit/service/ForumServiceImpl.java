package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.ForumDAO;
import com.niit.model.Forum;
@Service
public class ForumServiceImpl implements ForumService{
@Autowired
	private ForumDAO forumdao;

	public Forum findById(String forumid) {
		
		return forumdao.findById(forumid);
	}

	public Forum findByName(String name) {
		
		return forumdao.findByName(name);
	}

	public void saveforum(Forum forum) {
		
		forumdao.saveforum(forum);
	}

	public void updateforum(Forum forum) {
		forumdao.updateforum(forum);
		
	}

	public void deleteforumById(String userId) {
		
		forumdao.deleteforumById(userId);
	}

	public List<Forum> findAllforum() {
		
		return forumdao.findAllforum();
	}

	public boolean isExistForum(Forum forum) {
		
		return forumdao.isExistForum(forum);
	}

}
