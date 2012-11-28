// WARNING: THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.request;

import com.google.web.bindery.requestfactory.shared.InstanceRequest;
import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.ServiceName;
import org.springframework.roo.addon.gwt.RooGwtRequest;

@RooGwtRequest("medizin.server.domain.QuestionTypeCountPerExam")
@ServiceName("medizin.server.domain.QuestionTypeCountPerExam")
public interface QuestionTypeCountPerExamRequest extends RequestContext {

    abstract Request<java.lang.Long> countQuestionTypeCountPerExams();

    abstract Request<java.util.List<medizin.client.managed.request.QuestionTypeCountPerExamProxy>> findAllQuestionTypeCountPerExams();

    abstract Request<java.util.List<medizin.client.managed.request.QuestionTypeCountPerExamProxy>> findQuestionTypeCountPerExamEntries(int firstResult, int maxResults);

    abstract Request<medizin.client.managed.request.QuestionTypeCountPerExamProxy> findQuestionTypeCountPerExam(Long id);

    abstract InstanceRequest<medizin.client.managed.request.QuestionTypeCountPerExamProxy, java.lang.Void> persist();

    abstract InstanceRequest<medizin.client.managed.request.QuestionTypeCountPerExamProxy, java.lang.Void> remove();
}
