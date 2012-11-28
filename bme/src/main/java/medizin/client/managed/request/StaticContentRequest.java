// WARNING: THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.request;

import com.google.web.bindery.requestfactory.shared.InstanceRequest;
import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.ServiceName;
import org.springframework.roo.addon.gwt.RooGwtRequest;

@RooGwtRequest("medizin.server.domain.StaticContent")
@ServiceName("medizin.server.domain.StaticContent")
public interface StaticContentRequest extends RequestContext {

    abstract Request<java.lang.Long> countStaticContents();

    abstract Request<java.util.List<medizin.client.managed.request.StaticContentProxy>> findAllStaticContents();

    abstract Request<java.util.List<medizin.client.managed.request.StaticContentProxy>> findStaticContentEntries(int firstResult, int maxResults);

    abstract Request<medizin.client.managed.request.StaticContentProxy> findStaticContent(Long id);

    abstract InstanceRequest<medizin.client.managed.request.StaticContentProxy, java.lang.Void> persist();

    abstract InstanceRequest<medizin.client.managed.request.StaticContentProxy, java.lang.Void> remove();
}
