package com.yuhan.sns;

import java.sql.Date;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class CartSystem {
	
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("sns");

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		deleteCart(9);

	}

	public static void addCart(int session, int member_seq, int tour_seq) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = null;
		try {
			et = em.getTransaction();
			et.begin();
			Cart cart = new Cart();
			cart.setSession(session);
			cart.setMember_seq(member_seq);
			cart.setTour_seq(tour_seq);
			em.persist(cart);
			et.commit();
		} catch (Exception e) {
			if (et != null) {
				et.rollback();
			}
			e.printStackTrace();
		} finally {
			em.close();
		}
	}
	
	public static void getCart(int seq) {
		EntityManager em = emf.createEntityManager();
		String query = "SELECT c FROM Cart c WHERE c.id = :seq";
		
		TypedQuery<Cart> tq = em.createQuery(query, Cart.class);
		
		tq.setParameter("seq", seq);
		
		Cart cart = null;
		
		try {
			cart = tq.getSingleResult();
			System.out.println(cart.getSession() + " " + cart.getMember_seq() + 
								" " + cart.getTour_seq() + " " + cart.getDate());
		} catch(NoResultException e){
			e.printStackTrace();
		} finally {
			em.close();
		}
	}
	
	public static void deleteCart(int seq) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = null;
		Cart cart = null;
		try {
			et = em.getTransaction();
			et.begin();
			
			cart = em.find(Cart.class, seq);
			em.remove(cart);
			
			em.persist(cart);
			et.commit();
		} catch (Exception e) {
			if(et != null) {
				et.rollback();
			}
			e.printStackTrace();
		} finally {
			em.close();
		}
	}
}
