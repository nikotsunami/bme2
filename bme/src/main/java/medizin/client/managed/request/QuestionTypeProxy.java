// WARNING: THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.request;

import com.google.web.bindery.requestfactory.shared.EntityProxy;
import com.google.web.bindery.requestfactory.shared.ProxyForName;
import org.springframework.roo.addon.gwt.RooGwtProxy;

@ProxyForName(value = "medizin.server.domain.QuestionType", locator = "medizin.server.locator.QuestionTypeLocator")
@RooGwtProxy(value = "medizin.server.domain.QuestionType", readOnly = { "version", "id" })
public interface QuestionTypeProxy extends EntityProxy {

    abstract Long getId();

    abstract String getQuestionTypeName();

    abstract void setQuestionTypeName(String questionTypeName);

    abstract Boolean getIsWeil();

    abstract void setIsWeil(Boolean isWeil);

    abstract Integer getTrueAnswers();

    abstract void setTrueAnswers(Integer trueAnswers);

    abstract Integer getFalseAnswers();

    abstract void setFalseAnswers(Integer falseAnswers);

    abstract Integer getSumAnswers();

    abstract void setSumAnswers(Integer sumAnswers);

    abstract Integer getMaxLetters();

    abstract void setMaxLetters(Integer maxLetters);

    abstract Integer getVersion();
}
