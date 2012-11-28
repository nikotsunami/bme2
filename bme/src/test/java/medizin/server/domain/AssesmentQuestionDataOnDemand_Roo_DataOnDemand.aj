// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package medizin.server.domain;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import medizin.server.domain.AssesmentDataOnDemand;
import medizin.server.domain.AssesmentQuestion;
import medizin.server.domain.AssesmentQuestionDataOnDemand;
import medizin.server.domain.Person;
import medizin.server.domain.PersonDataOnDemand;
import medizin.server.domain.Question;
import medizin.server.domain.QuestionDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect AssesmentQuestionDataOnDemand_Roo_DataOnDemand {
    
    declare @type: AssesmentQuestionDataOnDemand: @Component;
    
    private Random AssesmentQuestionDataOnDemand.rnd = new SecureRandom();
    
    private List<AssesmentQuestion> AssesmentQuestionDataOnDemand.data;
    
    @Autowired
    private AssesmentDataOnDemand AssesmentQuestionDataOnDemand.assesmentDataOnDemand;
    
    @Autowired
    private PersonDataOnDemand AssesmentQuestionDataOnDemand.personDataOnDemand;
    
    @Autowired
    private QuestionDataOnDemand AssesmentQuestionDataOnDemand.questionDataOnDemand;
    
    public AssesmentQuestion AssesmentQuestionDataOnDemand.getNewTransientAssesmentQuestion(int index) {
        AssesmentQuestion obj = new AssesmentQuestion();
        setAutor(obj, index);
        setDateAdded(obj, index);
        setDateChanged(obj, index);
        setIsAssQuestionAcceptedAdmin(obj, index);
        setIsAssQuestionAcceptedAutor(obj, index);
        setIsAssQuestionAcceptedRewiever(obj, index);
        setIsAssQuestionAdminProposal(obj, index);
        setOrderAversion(obj, index);
        setOrderBversion(obj, index);
        setQuestion(obj, index);
        setRewiewer(obj, index);
        setSchwierigkeit(obj, index);
        setTrenschaerfe(obj, index);
        return obj;
    }
    
    public void AssesmentQuestionDataOnDemand.setAutor(AssesmentQuestion obj, int index) {
        Person autor = personDataOnDemand.getRandomPerson();
        obj.setAutor(autor);
    }
    
    public void AssesmentQuestionDataOnDemand.setDateAdded(AssesmentQuestion obj, int index) {
        Date dateAdded = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setDateAdded(dateAdded);
    }
    
    public void AssesmentQuestionDataOnDemand.setDateChanged(AssesmentQuestion obj, int index) {
        Date dateChanged = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setDateChanged(dateChanged);
    }
    
    public void AssesmentQuestionDataOnDemand.setIsAssQuestionAcceptedAdmin(AssesmentQuestion obj, int index) {
        Boolean isAssQuestionAcceptedAdmin = Boolean.TRUE;
        obj.setIsAssQuestionAcceptedAdmin(isAssQuestionAcceptedAdmin);
    }
    
    public void AssesmentQuestionDataOnDemand.setIsAssQuestionAcceptedAutor(AssesmentQuestion obj, int index) {
        Boolean isAssQuestionAcceptedAutor = Boolean.TRUE;
        obj.setIsAssQuestionAcceptedAutor(isAssQuestionAcceptedAutor);
    }
    
    public void AssesmentQuestionDataOnDemand.setIsAssQuestionAcceptedRewiever(AssesmentQuestion obj, int index) {
        Boolean isAssQuestionAcceptedRewiever = Boolean.TRUE;
        obj.setIsAssQuestionAcceptedRewiever(isAssQuestionAcceptedRewiever);
    }
    
    public void AssesmentQuestionDataOnDemand.setIsAssQuestionAdminProposal(AssesmentQuestion obj, int index) {
        Boolean isAssQuestionAdminProposal = Boolean.TRUE;
        obj.setIsAssQuestionAdminProposal(isAssQuestionAdminProposal);
    }
    
    public void AssesmentQuestionDataOnDemand.setOrderAversion(AssesmentQuestion obj, int index) {
        Integer orderAversion = new Integer(index);
        obj.setOrderAversion(orderAversion);
    }
    
    public void AssesmentQuestionDataOnDemand.setOrderBversion(AssesmentQuestion obj, int index) {
        Integer orderBversion = new Integer(index);
        obj.setOrderBversion(orderBversion);
    }
    
    public void AssesmentQuestionDataOnDemand.setQuestion(AssesmentQuestion obj, int index) {
        Question question = questionDataOnDemand.getRandomQuestion();
        obj.setQuestion(question);
    }
    
    public void AssesmentQuestionDataOnDemand.setRewiewer(AssesmentQuestion obj, int index) {
        Person rewiewer = personDataOnDemand.getRandomPerson();
        obj.setRewiewer(rewiewer);
    }
    
    public void AssesmentQuestionDataOnDemand.setSchwierigkeit(AssesmentQuestion obj, int index) {
        Double schwierigkeit = new Integer(index).doubleValue();
        obj.setSchwierigkeit(schwierigkeit);
    }
    
    public void AssesmentQuestionDataOnDemand.setTrenschaerfe(AssesmentQuestion obj, int index) {
        Double trenschaerfe = new Integer(index).doubleValue();
        obj.setTrenschaerfe(trenschaerfe);
    }
    
    public AssesmentQuestion AssesmentQuestionDataOnDemand.getSpecificAssesmentQuestion(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        AssesmentQuestion obj = data.get(index);
        Long id = obj.getId();
        return AssesmentQuestion.findAssesmentQuestion(id);
    }
    
    public AssesmentQuestion AssesmentQuestionDataOnDemand.getRandomAssesmentQuestion() {
        init();
        AssesmentQuestion obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return AssesmentQuestion.findAssesmentQuestion(id);
    }
    
    public boolean AssesmentQuestionDataOnDemand.modifyAssesmentQuestion(AssesmentQuestion obj) {
        return false;
    }
    
    public void AssesmentQuestionDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = AssesmentQuestion.findAssesmentQuestionEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'AssesmentQuestion' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<AssesmentQuestion>();
        for (int i = 0; i < 10; i++) {
            AssesmentQuestion obj = getNewTransientAssesmentQuestion(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
