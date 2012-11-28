// WARNING: THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.request;

import com.google.web.bindery.requestfactory.shared.InstanceRequest;
import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.ServiceName;
import org.springframework.roo.addon.gwt.RooGwtRequest;

@RooGwtRequest("medizin.server.domain.QuestionType")
@ServiceName("medizin.server.domain.QuestionType")
public interface QuestionTypeRequest extends RequestContext {

    abstract Request<java.lang.Long> countQuestionTypes();

    abstract Request<java.util.List<medizin.client.managed.request.QuestionTypeProxy>> findAllQuestionTypes();

    abstract Request<java.util.List<medizin.client.managed.request.QuestionTypeProxy>> findQuestionTypeEntries(int firstResult, int maxResults);

    abstract Request<medizin.client.managed.request.QuestionTypeProxy> findQuestionType(Long id);

    abstract InstanceRequest<medizin.client.managed.request.QuestionTypeProxy, java.lang.Void> persist();

    abstract InstanceRequest<medizin.client.managed.request.QuestionTypeProxy, java.lang.Void> remove();
}
