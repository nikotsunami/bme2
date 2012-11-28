// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.ui;

import com.google.web.bindery.requestfactory.gwt.ui.client.ProxyRenderer;
import medizin.client.managed.request.InstitutionProxy;
import medizin.client.managed.request.QuestionEventProxy;

public class QuestionEventProxyRenderer extends ProxyRenderer<QuestionEventProxy> {

    private static medizin.client.managed.ui.QuestionEventProxyRenderer INSTANCE;

    protected QuestionEventProxyRenderer() {
        super(new String[] { "eventName" });
    }

    public static medizin.client.managed.ui.QuestionEventProxyRenderer instance() {
        if (INSTANCE == null) {
            INSTANCE = new QuestionEventProxyRenderer();
        }
        return INSTANCE;
    }

    public String render(QuestionEventProxy object) {
        if (object == null) {
            return "";
        }
        return object.getEventName() + " (" + object.getId() + ")";
    }
}