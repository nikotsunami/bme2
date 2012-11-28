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
import medizin.client.shared.Validity;
import medizin.server.domain.Answer;
import medizin.server.domain.AnswerDataOnDemand;
import medizin.server.domain.Person;
import medizin.server.domain.PersonDataOnDemand;
import medizin.server.domain.QuestionDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect AnswerDataOnDemand_Roo_DataOnDemand {
    
    declare @type: AnswerDataOnDemand: @Component;
    
    private Random AnswerDataOnDemand.rnd = new SecureRandom();
    
    private List<Answer> AnswerDataOnDemand.data;
    
    @Autowired
    private PersonDataOnDemand AnswerDataOnDemand.personDataOnDemand;
    
    @Autowired
    private QuestionDataOnDemand AnswerDataOnDemand.questionDataOnDemand;
    
    public Answer AnswerDataOnDemand.getNewTransientAnswer(int index) {
        Answer obj = new Answer();
        setAnswerText(obj, index);
        setAutor(obj, index);
        setDateAdded(obj, index);
        setDateChanged(obj, index);
        setIsAnswerAcceptedAdmin(obj, index);
        setIsAnswerAcceptedAutor(obj, index);
        setIsAnswerAcceptedReviewWahrer(obj, index);
        setIsAnswerActive(obj, index);
        setIsPicture(obj, index);
        setPicturePath(obj, index);
        setRewiewer(obj, index);
        setValidity(obj, index);
        return obj;
    }
    
    public void AnswerDataOnDemand.setAnswerText(Answer obj, int index) {
        String answerText = "answerText_" + index;
        if (answerText.length() > 999) {
            answerText = answerText.substring(0, 999);
        }
        obj.setAnswerText(answerText);
    }
    
    public void AnswerDataOnDemand.setAutor(Answer obj, int index) {
        Person autor = personDataOnDemand.getRandomPerson();
        obj.setAutor(autor);
    }
    
    public void AnswerDataOnDemand.setDateAdded(Answer obj, int index) {
        Date dateAdded = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setDateAdded(dateAdded);
    }
    
    public void AnswerDataOnDemand.setDateChanged(Answer obj, int index) {
        Date dateChanged = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setDateChanged(dateChanged);
    }
    
    public void AnswerDataOnDemand.setIsAnswerAcceptedAdmin(Answer obj, int index) {
        Boolean isAnswerAcceptedAdmin = Boolean.TRUE;
        obj.setIsAnswerAcceptedAdmin(isAnswerAcceptedAdmin);
    }
    
    public void AnswerDataOnDemand.setIsAnswerAcceptedAutor(Answer obj, int index) {
        Boolean isAnswerAcceptedAutor = Boolean.TRUE;
        obj.setIsAnswerAcceptedAutor(isAnswerAcceptedAutor);
    }
    
    public void AnswerDataOnDemand.setIsAnswerAcceptedReviewWahrer(Answer obj, int index) {
        Boolean isAnswerAcceptedReviewWahrer = Boolean.TRUE;
        obj.setIsAnswerAcceptedReviewWahrer(isAnswerAcceptedReviewWahrer);
    }
    
    public void AnswerDataOnDemand.setIsAnswerActive(Answer obj, int index) {
        Boolean isAnswerActive = Boolean.TRUE;
        obj.setIsAnswerActive(isAnswerActive);
    }
    
    public void AnswerDataOnDemand.setIsPicture(Answer obj, int index) {
        Boolean isPicture = Boolean.TRUE;
        obj.setIsPicture(isPicture);
    }
    
    public void AnswerDataOnDemand.setPicturePath(Answer obj, int index) {
        String picturePath = "picturePath_" + index;
        if (picturePath.length() > 255) {
            picturePath = picturePath.substring(0, 255);
        }
        obj.setPicturePath(picturePath);
    }
    
    public void AnswerDataOnDemand.setRewiewer(Answer obj, int index) {
        Person rewiewer = personDataOnDemand.getRandomPerson();
        obj.setRewiewer(rewiewer);
    }
    
    public void AnswerDataOnDemand.setValidity(Answer obj, int index) {
        Validity validity = Validity.class.getEnumConstants()[0];
        obj.setValidity(validity);
    }
    
    public Answer AnswerDataOnDemand.getSpecificAnswer(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Answer obj = data.get(index);
        Long id = obj.getId();
        return Answer.findAnswer(id);
    }
    
    public Answer AnswerDataOnDemand.getRandomAnswer() {
        init();
        Answer obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Answer.findAnswer(id);
    }
    
    public boolean AnswerDataOnDemand.modifyAnswer(Answer obj) {
        return false;
    }
    
    public void AnswerDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Answer.findAnswerEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Answer' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Answer>();
        for (int i = 0; i < 10; i++) {
            Answer obj = getNewTransientAnswer(i);
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