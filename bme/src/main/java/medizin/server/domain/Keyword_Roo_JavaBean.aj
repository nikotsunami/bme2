// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package medizin.server.domain;

import java.util.Set;
import medizin.server.domain.Keyword;
import medizin.server.domain.Question;

privileged aspect Keyword_Roo_JavaBean {
    
    public String Keyword.getName() {
        return this.name;
    }
    
    public void Keyword.setName(String name) {
        this.name = name;
    }
    
    public Set<Question> Keyword.getQuestions() {
        return this.questions;
    }
    
    public void Keyword.setQuestions(Set<Question> questions) {
        this.questions = questions;
    }
    
}
