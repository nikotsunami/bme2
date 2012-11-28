// WARNING: THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.request;

import com.google.web.bindery.requestfactory.shared.EntityProxy;
import com.google.web.bindery.requestfactory.shared.ProxyForName;
import medizin.client.shared.AccessRights;
import org.springframework.roo.addon.gwt.RooGwtProxy;

@ProxyForName(value = "medizin.server.domain.QuestionAccess", locator = "medizin.server.locator.QuestionAccessLocator")
@RooGwtProxy(value = "medizin.server.domain.QuestionAccess", readOnly = { "version", "id" })
public interface QuestionAccessProxy extends EntityProxy {

    abstract Long getId();

    abstract AccessRights getAccRights();

    abstract void setAccRights(AccessRights accRights);

    abstract PersonProxy getPerson();

    abstract void setPerson(PersonProxy person);

    abstract QuestionProxy getQuestion();

    abstract void setQuestion(QuestionProxy question);

    abstract QuestionEventProxy getQuestionEvent();

    abstract void setQuestionEvent(QuestionEventProxy questionEvent);

    abstract Integer getVersion();
}
