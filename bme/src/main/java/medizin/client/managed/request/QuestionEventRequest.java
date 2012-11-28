// WARNING: THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.request;

import com.google.web.bindery.requestfactory.shared.InstanceRequest;
import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.ServiceName;
import org.springframework.roo.addon.gwt.RooGwtRequest;

@RooGwtRequest("medizin.server.domain.QuestionEvent")
@ServiceName("medizin.server.domain.QuestionEvent")
public interface QuestionEventRequest extends RequestContext {

    abstract Request<java.lang.Long> countQuestionEvents();

    abstract Request<java.util.List<medizin.client.managed.request.QuestionEventProxy>> findAllQuestionEvents();

    abstract Request<java.util.List<medizin.client.managed.request.QuestionEventProxy>> findQuestionEventEntries(int firstResult, int maxResults);

    abstract Request<medizin.client.managed.request.QuestionEventProxy> findQuestionEvent(Long id);

    abstract InstanceRequest<medizin.client.managed.request.QuestionEventProxy, java.lang.Void> persist();

    abstract InstanceRequest<medizin.client.managed.request.QuestionEventProxy, java.lang.Void> remove();
}
