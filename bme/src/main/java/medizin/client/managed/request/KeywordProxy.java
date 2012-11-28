// WARNING: THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.request;

import com.google.web.bindery.requestfactory.shared.EntityProxy;
import com.google.web.bindery.requestfactory.shared.ProxyForName;
import java.util.Set;
import org.springframework.roo.addon.gwt.RooGwtProxy;

@ProxyForName(value = "medizin.server.domain.Keyword", locator = "medizin.server.locator.KeywordLocator")
@RooGwtProxy(value = "medizin.server.domain.Keyword", readOnly = { "version", "id" })
public interface KeywordProxy extends EntityProxy {

    abstract Long getId();

    abstract String getName();

    abstract void setName(String name);

    abstract Set<medizin.client.managed.request.QuestionProxy> getQuestions();

    abstract void setQuestions(Set<medizin.client.managed.request.QuestionProxy> questions);

    abstract Integer getVersion();
}
