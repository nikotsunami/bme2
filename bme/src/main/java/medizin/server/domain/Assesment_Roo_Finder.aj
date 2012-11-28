// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package medizin.server.domain;

import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import medizin.server.domain.Assesment;

privileged aspect Assesment_Roo_Finder {
    
    public static TypedQuery<Assesment> Assesment.findAssesmentsByDateClosedLessThanEqualsAndDateOpenGreaterThanEqualsAndIsClosedNot(Date dateClosed, Date dateOpen, Boolean isClosed) {
        if (dateClosed == null) throw new IllegalArgumentException("The dateClosed argument is required");
        if (dateOpen == null) throw new IllegalArgumentException("The dateOpen argument is required");
        if (isClosed == null) throw new IllegalArgumentException("The isClosed argument is required");
        EntityManager em = Assesment.entityManager();
        TypedQuery<Assesment> q = em.createQuery("SELECT o FROM Assesment AS o WHERE o.dateClosed <= :dateClosed  AND o.dateOpen >= :dateOpen  AND o.isClosed IS NOT :isClosed", Assesment.class);
        q.setParameter("dateClosed", dateClosed);
        q.setParameter("dateOpen", dateOpen);
        q.setParameter("isClosed", isClosed);
        return q;
    }
    
}
