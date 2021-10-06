package com.sns.sql;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import com.sns.table.Member;

public class MemberSystem {
	
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("sns");

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		getMember(1);
	}
	
	
	public static void getMember(int seq) {
		EntityManager em = emf.createEntityManager();
		String query = "SELECT c FROM Member c WHERE c.seq = :seq";
		
		TypedQuery<Member> tq = em.createQuery(query, Member.class);
		
		tq.setParameter("seq", seq);
		
		Member member = null;
		
		try {
			member = tq.getSingleResult();
			System.out.println(member.getSeq() + " " + member.getId() + " " + member.getPassword() + 
								" " + member.getName() + " " + member.getTel() + " " + member.getEmail()
								+ " " + member.getGender() + " " + member.getAge());
		} catch(NoResultException e){
			e.printStackTrace();
		} finally {
			em.close();
		}
	}
	
}


