// WARNING: THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.request;

import com.google.web.bindery.requestfactory.shared.InstanceRequest;
import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.ServiceName;
import org.springframework.roo.addon.gwt.RooGwtRequest;

@RooGwtRequest("medizin.server.domain.Institution")
@ServiceName("medizin.server.domain.Institution")
public interface InstitutionRequest extends RequestContext {

    abstract Request<java.lang.Long> countInstitutions();

    abstract Request<java.util.List<medizin.client.managed.request.InstitutionProxy>> findAllInstitutions();

    abstract Request<java.util.List<medizin.client.managed.request.InstitutionProxy>> findInstitutionEntries(int firstResult, int maxResults);

    abstract Request<medizin.client.managed.request.InstitutionProxy> findInstitution(Long id);

    abstract InstanceRequest<medizin.client.managed.request.InstitutionProxy, java.lang.Void> persist();

    abstract InstanceRequest<medizin.client.managed.request.InstitutionProxy, java.lang.Void> remove();
}
