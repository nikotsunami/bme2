package medizin.shared.scaffold;

import java.util.List;

import medizin.client.managed.request.QuestionEventProxy;
import medizin.server.domain.QuestionEvent;

import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.Service;
import com.google.web.bindery.requestfactory.shared.InstanceRequest;

@Service(QuestionEvent.class)
public interface QuestionEventRequestNonRoo extends RequestContext {

    Request<java.lang.Long> countQuestionEventsByInstitutionNonRoo(java.lang.Long institutionId);
    
    Request<List<QuestionEventProxy>> findQuestionEventsByInstitutionNonRoo(java.lang.Long institutionId, int firstResult, int maxResults);
    
    Request<List<QuestionEventProxy>> findAllQuestionEventsByQuestionTypeAndAssesmentID(java.lang.Long assesmentId, List<Long> questionTypesId);

    abstract Request<java.util.List<medizin.client.managed.request.QuestionEventProxy>> findAllQuestionEvents();

    abstract Request<java.util.List<medizin.client.managed.request.QuestionEventProxy>> findQuestionEventEntries(int firstResult, int maxResults);

    abstract Request<medizin.client.managed.request.QuestionEventProxy> findQuestionEvent(Long id);

    abstract InstanceRequest<medizin.client.managed.request.QuestionEventProxy, java.lang.Void> remove();

    abstract InstanceRequest<medizin.client.managed.request.QuestionEventProxy, java.lang.Void> persist();

	Request<List<QuestionEventProxy>> findQuestionEventsByPersonNonRoo(Long id,
			int start, int length);

	Request<java.lang.Long>  countQuestionEventsByPersonNonRoo(Long id);

	Request<java.lang.Long>  countQuestionEventsByInstitutionOrEvent(
			Long institutionId, String eventNameFilter);
	
	Request<List<QuestionEventProxy>>   findQuestionEventsByInstitutionOrEvent(
			Long institutionId, String eventNameFilter, int firstResult, int maxResults);

	
}
