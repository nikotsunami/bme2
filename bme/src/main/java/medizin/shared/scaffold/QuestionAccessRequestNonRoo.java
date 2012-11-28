package medizin.shared.scaffold;

import java.util.List;

import medizin.client.managed.request.QuestionAccessProxy;
import medizin.server.domain.QuestionAccess;

import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.Service;


@Service(QuestionAccess.class)
public interface QuestionAccessRequestNonRoo extends RequestContext {

	Request<java.lang.Long> countQuestionEventAccessByPersonNonRoo(Long personId);
    Request<List<QuestionAccessProxy>> findQuestionEventAccessByPersonNonRooNonRoo(java.lang.Long personId, int firstResult, int maxResults);
	Request<List<QuestionAccessProxy>> findQuestionAccessQuestionByPersonNonRoo(Long personId, int firstResult, int maxResults);
	Request<java.lang.Long>  countQuestionAccessQuestionByPersonNonRoo(Long personId);


}
