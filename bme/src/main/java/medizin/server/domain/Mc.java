package medizin.server.domain;

import java.util.List;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Mc {

    @NotNull
    @Column(unique = true)
    @Size(min = 2, max = 50)
    private String mcName;
    

    
//  @ManyToMany(cascade = CascadeType.ALL, mappedBy = "mcs")
//  private Set<Question> questions = new HashSet<Question>();
  

 public static List<Mc> myGetAllMcs(){
	   
	   return entityManager().createQuery("select o from Mc o", Mc.class).getResultList();
	
	   
 }
}
