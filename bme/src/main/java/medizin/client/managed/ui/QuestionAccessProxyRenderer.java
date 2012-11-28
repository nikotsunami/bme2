// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.ui;

import com.google.web.bindery.requestfactory.gwt.ui.client.ProxyRenderer;
import medizin.client.managed.request.PersonProxy;
import medizin.client.managed.request.QuestionAccessProxy;
import medizin.client.managed.request.QuestionEventProxy;
import medizin.client.managed.request.QuestionProxy;
import medizin.client.shared.AccessRights;

public class QuestionAccessProxyRenderer extends ProxyRenderer<QuestionAccessProxy> {

    private static medizin.client.managed.ui.QuestionAccessProxyRenderer INSTANCE;

    protected QuestionAccessProxyRenderer() {
        super(new String[] { "id" });
    }

    public static medizin.client.managed.ui.QuestionAccessProxyRenderer instance() {
        if (INSTANCE == null) {
            INSTANCE = new QuestionAccessProxyRenderer();
        }
        return INSTANCE;
    }

    public String render(QuestionAccessProxy object) {
        if (object == null) {
            return "";
        }
        return object.getId() + " (" + object.getId() + ")";
    }
}