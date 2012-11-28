package medizin.server.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Keyword {

    @NotNull
    @Column(unique = true)
    @Size(min = 3, max = 45)
    private String name;
    
//    @PreRemove 
//    private void onRemove(){
//    //	questions = null;
//    }
    
    @ManyToMany(mappedBy = "keywords", targetEntity = Question.class)
    private Set<Question> questions = new HashSet<Question>();
}
