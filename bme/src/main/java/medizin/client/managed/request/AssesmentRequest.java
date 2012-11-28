// WARNING: THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.request;

import com.google.web.bindery.requestfactory.shared.InstanceRequest;
import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.ServiceName;
import org.springframework.roo.addon.gwt.RooGwtRequest;

@RooGwtRequest("medizin.server.domain.Assesment")
@ServiceName("medizin.server.domain.Assesment")
public interface AssesmentRequest extends RequestContext {

    abstract Request<java.lang.Long> countAssesments();

    abstract Request<java.util.List<medizin.client.managed.request.AssesmentProxy>> findAllAssesments();

    abstract Request<java.util.List<medizin.client.managed.request.AssesmentProxy>> findAssesmentEntries(int firstResult, int maxResults);

    abstract Request<medizin.client.managed.request.AssesmentProxy> findAssesment(Long id);

    abstract InstanceRequest<medizin.client.managed.request.AssesmentProxy, java.lang.Void> persist();

    abstract InstanceRequest<medizin.client.managed.request.AssesmentProxy, java.lang.Void> remove();
}
