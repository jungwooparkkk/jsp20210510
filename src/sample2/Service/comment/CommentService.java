package sample2.Service.comment;

import java.sql.Connection;
import java.util.List;

import sample2.bean.Comment;
import sample2.dao.CommentDao;
import sample2.util.DBconnection;


public class CommentService {

private static CommentDao dao;
	
	static {
		dao = new CommentDao();
	}

	public void add(Comment commentBean) {
		Connection con = DBconnection.getConnection();
		
		dao.insert(commentBean, con);
		DBconnection.close(con);
	}

	public List<Comment> list(int boardId) {
		Connection con = DBconnection.getConnection();
		
		List<Comment> list = dao.list(boardId, con);
		
		DBconnection.close(con);
		return list;
	}

	public void modify(Comment comment) {
		Connection con = DBconnection.getConnection();
		
		dao.modify(comment, con);
		
		DBconnection.close(con);
	}

	public void remove(int id) {
		Connection con = DBconnection.getConnection();
		
		dao.remove(id, con);
		
		DBconnection.close(con);
		
	}

	
}