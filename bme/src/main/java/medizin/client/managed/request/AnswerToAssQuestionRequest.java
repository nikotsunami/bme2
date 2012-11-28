// WARNING: THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.request;

import com.google.web.bindery.requestfactory.shared.InstanceRequest;
import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.ServiceName;
import org.springframework.roo.addon.gwt.RooGwtRequest;

@RooGwtRequest("medizin.server.domain.AnswerToAssQuestion")
@ServiceName("medizin.server.domain.AnswerToAssQuestion")
public interface AnswerToAssQuestionRequest extends RequestContext {

    abstract Request<java.lang.Long> countAnswerToAssQuestions();

    abstract Request<java.util.List<medizin.client.managed.request.AnswerToAssQuestionProxy>> findAllAnswerToAssQuestions();

    abstract Request<java.util.List<medizin.client.managed.request.AnswerToAssQuestionProxy>> findAnswerToAssQuestionEntries(int firstResult, int maxResults);

    abstract Request<medizin.client.managed.request.AnswerToAssQuestionProxy> findAnswerToAssQuestion(Long id);

    abstract InstanceRequest<medizin.client.managed.request.AnswerToAssQuestionProxy, java.lang.Void> persist();

    abstract InstanceRequest<medizin.client.managed.request.AnswerToAssQuestionProxy, java.lang.Void> remove();
}
