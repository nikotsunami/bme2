// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package medizin.server.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import medizin.server.domain.Assesment;

privileged aspect Assesment_Roo_Jpa_Entity {
    
    declare @type: Assesment: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Assesment.id;
    
    @Version
    @Column(name = "version")
    private Integer Assesment.version;
    
    public Long Assesment.getId() {
        return this.id;
    }
    
    public void Assesment.setId(Long id) {
        this.id = id;
    }
    
    public Integer Assesment.getVersion() {
        return this.version;
    }
    
    public void Assesment.setVersion(Integer version) {
        this.version = version;
    }
    
}
