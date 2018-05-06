package com.hiber;

import com.hiber.entity.ContactEntity;
import com.hiber.utils.HibernateSessionFactory;
import org.hibernate.Session;

public class main {
    public static void main(String[] args) {
        System.out.println("Hibernate tutorial");

        Session session = HibernateSessionFactory.getSessionFactory().openSession();

        session.beginTransaction();

        ContactEntity contactEntity = new ContactEntity();
        ContactEntity contactEntity2 = new ContactEntity();

        System.out.println("Hibernate tutorial " + contactEntity.getId());
        System.out.println("Hibernate tutorial " + contactEntity2.getId());

        contactEntity.setBirthDate(new java.util.Date());
        contactEntity.setFirstName("one");
        contactEntity.setLastName("one");

        contactEntity2.setBirthDate(new java.util.Date());
        contactEntity2.setFirstName("two");
        contactEntity2.setLastName("two");

        session.save(contactEntity);
        session.save(contactEntity2);
        session.getTransaction().commit();

        session.close();

    }
}
