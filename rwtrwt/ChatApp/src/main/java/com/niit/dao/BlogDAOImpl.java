package com.niit.dao;
import com.niit.dao.BlogDAO;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Blog;
import com.niit.model.Forum;
import com.niit.model.Friend;

@Repository("blogDAO")
@Transactional
public class BlogDAOImpl implements BlogDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public Blog findById(int b_id) {
		return (Blog) this.sessionFactory.getCurrentSession().get(Blog.class, b_id);
	}
public Blog findByName(String title) {
		return (Blog) this.sessionFactory.getCurrentSession().get(Blog.class, title);
	}
	public void save(Blog bl) {
		sessionFactory.getCurrentSession().saveOrUpdate(bl);
	}
	public void update(Blog bl) {
		sessionFactory.getCurrentSession().saveOrUpdate(bl);
	}

	public void delete(int b_id) {
		sessionFactory.getCurrentSession().delete(b_id);
	}

	@SuppressWarnings("unchecked")
	public void delall() {
			Query q=sessionFactory.getCurrentSession().createQuery("delete * from Blog");
			
		}
	
	public List<Blog> AllBlog() {
		String queryStr = "SELECT NEW com.model.BlogListModel("
				+ "b.id, b.title, b.content, b.createdAt, count(elements(b.comments))" + ")" + " FROM Blog as b"
				+ " ORDER BY b.createdAt";
		Session session = this.sessionFactory.getCurrentSession();
		Criteria crit = session.createCriteria(Blog.class);
		ProjectionList projList = Projections.projectionList();
		projList.add(Projections.property("title"), "title");
		projList.add(Projections.property("createdAt"), "createdAt");
		projList.add(Projections.property("content"), "content");
		crit.setResultTransformer(Transformers.aliasToBean(Blog.class));
		crit.addOrder(Order.asc("createdAt"));
		List<Blog> results = crit.list();
		return results;
	}
	

}
