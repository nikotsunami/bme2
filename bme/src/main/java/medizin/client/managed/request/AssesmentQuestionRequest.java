// WARNING: THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.request;

import com.google.web.bindery.requestfactory.shared.InstanceRequest;
import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.ServiceName;
import org.springframework.roo.addon.gwt.RooGwtRequest;

@RooGwtRequest("medizin.server.domain.AssesmentQuestion")
@ServiceName("medizin.server.domain.AssesmentQuestion")
public interface AssesmentQuestionRequest extends RequestContext {

    abstract Request<java.lang.Long> countAssesmentQuestions();

    abstract Request<java.util.List<medizin.client.managed.request.AssesmentQuestionProxy>> findAllAssesmentQuestions();

    abstract Request<java.util.List<medizin.client.managed.request.AssesmentQuestionProxy>> findAssesmentQuestionEntries(int firstResult, int maxResults);

    abstract Request<medizin.client.managed.request.AssesmentQuestionProxy> findAssesmentQuestion(Long id);

    abstract InstanceRequest<medizin.client.managed.request.AssesmentQuestionProxy, java.lang.Void> persist();

    abstract InstanceRequest<medizin.client.managed.request.AssesmentQuestionProxy, java.lang.Void> remove();
}
