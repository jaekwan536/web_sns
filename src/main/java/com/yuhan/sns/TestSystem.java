/*package com.yuhan.sns;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class TestSystem {
	
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("sns");
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		addCustomer(5, "lim", "yuha");
		
		emf.close();
	}
	
	public static void addCustomer(int id, String fname, String lname) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = null;
		try {
			et = em.getTransaction();
			et.begin();
			Customer cust = new Customer();
			cust.setId(id);
			cust.setfName(fname);
			cust.setlName(lname);
			em.persist(cust);
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
	
	public static void getCustomer(int id) {
		EntityManager em = emf.createEntityManager();
		String query = "SELECT c FROM Customer c WHERE c.id = :custID";
		
		TypedQuery<Customer> tq = em.createQuery(query, Customer.class);
		
		tq.setParameter("custID", id);
		
		Customer cust = null;
		
		try {
			cust = tq.getSingleResult();
			System.out.println(cust.getfName() + " " + cust.getlName());
		} catch(NoResultException e){
			e.printStackTrace();
		} finally {
			em.close();
		}
	}
	
	public static void getCustomers() {
		EntityManager em = emf.createEntityManager();
		String strQuery = "SELECT c FROM Customer c WHERE c.id IS NOT NULL";
		TypedQuery<Customer> tq = em.createQuery(strQuery, Customer.class);
		List<Customer> custs;
		try {
			custs = tq.getResultList();
			for(Customer c : custs) {
				System.out.println(c.getfName() + " " + c.getlName());
			}
		}
		catch (NoResultException e){
			e.printStackTrace();
		}
		finally {
			em.close();
		}
	}
	
	public static void changefName(int id, String fname) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = null;
		Customer cust = null;
		try {
			et = em.getTransaction();
			et.begin();
			
			cust = em.find(Customer.class, id);
			cust.setfName(fname);
			
			em.persist(cust);
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
	
	public static void deleteCustomer(int id) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = null;
		Customer cust = null;
		try {
			et = em.getTransaction();
			et.begin();
			
			cust = em.find(Customer.class, id);
			em.remove(cust);
			
			em.persist(cust);
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

}*/
