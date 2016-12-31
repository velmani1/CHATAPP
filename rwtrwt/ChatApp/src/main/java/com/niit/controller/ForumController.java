package com.niit.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.niit.model.Forum;
import com.niit.service.ForumService;

@RestController
public class ForumController {

	
	@Autowired
	private ForumService forumservice;
	
	  
    
   
  
  
     
    //-------------------Retrieve Single user's forum--------------------------------------------------------
      
    @RequestMapping(value = "/forum/{forumid}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Forum> getForum(@PathVariable("forumid") String forumid) {
        System.out.println("Fetching forum with id " + forumid);
        Forum forum = forumservice.findById(forumid);
        if (forum == null) {
            System.out.println("User with id " + forumid + " not found");
            return new ResponseEntity<Forum>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<Forum>(forum, HttpStatus.OK);
    }
  
      
      
    //-------------------Create a Forum--------------------------------------------------------
      
    @RequestMapping(value = "/forum/", method = RequestMethod.POST)
    public ResponseEntity<Void> createBlog(@RequestBody Forum forum,    UriComponentsBuilder ucBuilder) {
        System.out.println("Creating forum " + forum.getForum_id());
  
        
  
        forumservice.saveforum(forum);
  
        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(ucBuilder.path("/forum/{forumid}").buildAndExpand(forum.getForum_id()).toUri());
        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
    }
  
     
      
    //------------------- Update a Forum --------------------------------------------------------
      
    @RequestMapping(value = "/forum/{forumid}", method = RequestMethod.PUT)
    public ResponseEntity<Forum> updateForum(@PathVariable("forumid") String forumid, @RequestBody Forum forum) {
        System.out.println("Updating question " + forumid);
          
       Forum currentUserForum  = forumservice.findById(forumid);
          
        if (currentUserForum==null) {
            System.out.println("User with id " + forumid + " not found");
            return new ResponseEntity<Forum>(HttpStatus.NOT_FOUND);
        }
  
        currentUserForum.setForum_id(forum.getForum_id());
        currentUserForum.setParticipants(forum.getParticipants());
        currentUserForum.setDate_careated(forum.getDate_careated());
        currentUserForum.setDate_modified(forum.getDate_modified());
          
        forumservice.updateforum(currentUserForum);
        return new ResponseEntity<Forum>(currentUserForum, HttpStatus.OK);
    }
  
     
     
    //------------------- Delete a Forum --------------------------------------------------------
      
    @RequestMapping(value = "/forum/{forumid}", method = RequestMethod.DELETE)
    public ResponseEntity<Forum> deleteUser(@PathVariable("forum_id") String forumid) {
        System.out.println("Fetching & Deleting Forum with id " + forumid);
  
        Forum forum = forumservice.findById(forumid);
        if (forum == null) {
            System.out.println("Unable to delete. Forum with id " + forumid + " not found");
            return new ResponseEntity<Forum>(HttpStatus.NOT_FOUND);
        }
  
        forumservice.deleteforumById(forumid);
        return new ResponseEntity<Forum>(HttpStatus.NO_CONTENT);
    }
  
}
