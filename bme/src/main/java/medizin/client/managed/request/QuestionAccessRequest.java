// WARNING: THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.request;

import com.google.web.bindery.requestfactory.shared.InstanceRequest;
import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.ServiceName;
import org.springframework.roo.addon.gwt.RooGwtRequest;

@RooGwtRequest("medizin.server.domain.QuestionAccess")
@ServiceName("medizin.server.domain.QuestionAccess")
public interface QuestionAccessRequest extends RequestContext {

    abstract Request<java.lang.Long> countQuestionAccesses();

    abstract Request<java.util.List<medizin.client.managed.request.QuestionAccessProxy>> findAllQuestionAccesses();

    abstract Request<java.util.List<medizin.client.managed.request.QuestionAccessProxy>> findQuestionAccessEntries(int firstResult, int maxResults);

    abstract Request<medizin.client.managed.request.QuestionAccessProxy> findQuestionAccess(Long id);

    abstract InstanceRequest<medizin.client.managed.request.QuestionAccessProxy, java.lang.Void> persist();

    abstract InstanceRequest<medizin.client.managed.request.QuestionAccessProxy, java.lang.Void> remove();
}
