// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package medizin.server.domain;

import medizin.server.domain.Institution;

privileged aspect Institution_Roo_JavaBean {
    
    public String Institution.getInstitutionName() {
        return this.institutionName;
    }
    
    public void Institution.setInstitutionName(String institutionName) {
        this.institutionName = institutionName;
    }
    
}