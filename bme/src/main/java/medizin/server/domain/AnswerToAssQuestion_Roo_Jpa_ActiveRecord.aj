// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package medizin.server.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import medizin.server.domain.AnswerToAssQuestion;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AnswerToAssQuestion_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager AnswerToAssQuestion.entityManager;
    
    public static final EntityManager AnswerToAssQuestion.entityManager() {
        EntityManager em = new AnswerToAssQuestion().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AnswerToAssQuestion.countAnswerToAssQuestions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AnswerToAssQuestion o", Long.class).getSingleResult();
    }
    
    public static List<AnswerToAssQuestion> AnswerToAssQuestion.findAllAnswerToAssQuestions() {
        return entityManager().createQuery("SELECT o FROM AnswerToAssQuestion o", AnswerToAssQuestion.class).getResultList();
    }
    
    public static AnswerToAssQuestion AnswerToAssQuestion.findAnswerToAssQuestion(Long id) {
        if (id == null) return null;
        return entityManager().find(AnswerToAssQuestion.class, id);
    }
    
    public static List<AnswerToAssQuestion> AnswerToAssQuestion.findAnswerToAssQuestionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AnswerToAssQuestion o", AnswerToAssQuestion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void AnswerToAssQuestion.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AnswerToAssQuestion.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AnswerToAssQuestion attached = AnswerToAssQuestion.findAnswerToAssQuestion(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AnswerToAssQuestion.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AnswerToAssQuestion.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AnswerToAssQuestion AnswerToAssQuestion.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AnswerToAssQuestion merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}