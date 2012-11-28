// WARNING: THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.request;

import com.google.web.bindery.requestfactory.shared.InstanceRequest;
import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.ServiceName;
import org.springframework.roo.addon.gwt.RooGwtRequest;

@RooGwtRequest("medizin.server.domain.Person")
@ServiceName("medizin.server.domain.Person")
public interface PersonRequest extends RequestContext {

    abstract Request<java.lang.Long> countPeople();

    abstract Request<java.util.List<medizin.client.managed.request.PersonProxy>> findAllPeople();

    abstract Request<java.util.List<medizin.client.managed.request.PersonProxy>> findPersonEntries(int firstResult, int maxResults);

    abstract Request<medizin.client.managed.request.PersonProxy> findPerson(Long id);

    abstract InstanceRequest<medizin.client.managed.request.PersonProxy, java.lang.Void> persist();

    abstract InstanceRequest<medizin.client.managed.request.PersonProxy, java.lang.Void> remove();
}
