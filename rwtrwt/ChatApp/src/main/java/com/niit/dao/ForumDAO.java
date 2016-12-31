package com.niit.dao;

import java.util.List;

import com.niit.model.Forum;

public interface ForumDAO {

Forum findById(String forumid);
    
    Forum findByName(String name);
     
    void saveforum(Forum forum);
     
    void updateforum(Forum forum);
     
    void deleteforumById(String userId);
 
    List<Forum> findAllforum(); 
     
   public boolean isExistForum(Forum forum);
}
