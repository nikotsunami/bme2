// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package medizin.server.domain;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Version;
import medizin.server.domain.RedactionalBase;

privileged aspect RedactionalBase_Roo_Jpa_Entity {
    
    declare @type: RedactionalBase: @MappedSuperclass;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long RedactionalBase.id;
    
    @Version
    @Column(name = "version")
    private Integer RedactionalBase.version;
    
    public Long RedactionalBase.getId() {
        return this.id;
    }
    
    public void RedactionalBase.setId(Long id) {
        this.id = id;
    }
    
    public Integer RedactionalBase.getVersion() {
        return this.version;
    }
    
    public void RedactionalBase.setVersion(Integer version) {
        this.version = version;
    }
    
}