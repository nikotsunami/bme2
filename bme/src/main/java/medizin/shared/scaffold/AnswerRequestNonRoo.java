package medizin.shared.scaffold;

import java.util.List;

import medizin.client.managed.request.AnswerProxy;
import medizin.server.domain.Answer;

import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.Service;
import com.google.web.bindery.requestfactory.shared.InstanceRequest;

@Service(Answer.class)
public interface AnswerRequestNonRoo extends RequestContext {

	Request<List<AnswerProxy>> findAnswersEntriesByQuestion(Long id, int start, int max);
	Request<Long> contAnswersByQuestion(Long id);
	InstanceRequest<AnswerProxy, Void> eliminateAnswer();
	Request<List<AnswerProxy>>  findAnswersByQuestion(Long id);
	Request<Long> countAnswersNonAcceptedAdminByQuestion(Long id);
	Request<List<AnswerProxy>> findAnswersEntriesNonAcceptedAdminByQuestion(
			Long questionId, Integer start, Integer length);
}

