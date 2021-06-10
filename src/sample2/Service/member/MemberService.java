package sample2.Service.member;

import java.sql.Connection;

import sample2.bean.Member;
import sample2.dao.BoardDao;
import sample2.dao.CommentDao;
import sample2.dao.MemberDao;
import sample2.util.DBconnection;

public class MemberService {
	private BoardDao bdao;
	private MemberDao mdao;
	private CommentDao cdao;
	
	public MemberService() {
		this.bdao = new BoardDao();
		this.mdao = new MemberDao();
		this.cdao = new CommentDao();
	}
	
	public Member getMember(String id) {
		
		Connection con = null;
		
		try {
			con = DBconnection.getConnection();
			Member member = this.mdao.getMember(id, con);
			int numBoard = this.bdao.getNumberOfBoard(id, con);
			int numComment = this.cdao.getNumberOfComment(id, con);
			
			member.setNumberOfBoard(numBoard);
			member.setNumberOfComment(numComment);
			
			return member;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(con);
		}
		return null;
	}
	
	public void remove(String id) {
		Connection con = null;
		try {
		con = DBconnection.getConnection();
		con.setAutoCommit(false);
		
		this.bdao.removeByMember(id, con);
		this.mdao.remove(id, con);
		
		con.commit();
		} catch (Exception e) {
			e.printStackTrace();
			DBconnection.rollback(con);
		}finally {
			DBconnection.close(con);
		}
	}
}
