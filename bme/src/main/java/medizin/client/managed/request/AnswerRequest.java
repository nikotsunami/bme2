// WARNING: THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.request;

import com.google.web.bindery.requestfactory.shared.InstanceRequest;
import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.ServiceName;
import org.springframework.roo.addon.gwt.RooGwtRequest;

@RooGwtRequest("medizin.server.domain.Answer")
@ServiceName("medizin.server.domain.Answer")
public interface AnswerRequest extends RequestContext {

    abstract Request<java.lang.Long> countAnswers();

    abstract Request<java.util.List<medizin.client.managed.request.AnswerProxy>> findAllAnswers();

    abstract Request<java.util.List<medizin.client.managed.request.AnswerProxy>> findAnswerEntries(int firstResult, int maxResults);

    abstract Request<medizin.client.managed.request.AnswerProxy> findAnswer(Long id);

    abstract InstanceRequest<medizin.client.managed.request.AnswerProxy, java.lang.Void> persist();

    abstract InstanceRequest<medizin.client.managed.request.AnswerProxy, java.lang.Void> remove();
}
