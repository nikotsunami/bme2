// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package medizin.server.domain;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import medizin.server.domain.AssesmentQuestion;

privileged aspect AssesmentQuestion_Roo_Jpa_Entity {
    
    declare @type: AssesmentQuestion: @Entity;
    
    declare @type: AssesmentQuestion: @Inheritance(strategy = InheritanceType.TABLE_PER_CLASS);
    
}