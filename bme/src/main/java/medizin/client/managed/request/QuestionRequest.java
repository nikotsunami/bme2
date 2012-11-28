// WARNING: THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.request;

import com.google.web.bindery.requestfactory.shared.InstanceRequest;
import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.ServiceName;
import org.springframework.roo.addon.gwt.RooGwtRequest;

@RooGwtRequest("medizin.server.domain.Question")
@ServiceName("medizin.server.domain.Question")
public interface QuestionRequest extends RequestContext {

    abstract Request<java.lang.Long> countQuestions();

    abstract Request<java.util.List<medizin.client.managed.request.QuestionProxy>> findAllQuestions();

    abstract Request<java.util.List<medizin.client.managed.request.QuestionProxy>> findQuestionEntries(int firstResult, int maxResults);

    abstract Request<medizin.client.managed.request.QuestionProxy> findQuestion(Long id);

    abstract InstanceRequest<medizin.client.managed.request.QuestionProxy, java.lang.Void> persist();

    abstract InstanceRequest<medizin.client.managed.request.QuestionProxy, java.lang.Void> remove();
}
