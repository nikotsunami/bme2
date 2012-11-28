// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.ui;

import com.google.web.bindery.requestfactory.gwt.ui.client.ProxyRenderer;
import medizin.client.managed.request.InstitutionProxy;

public class InstitutionProxyRenderer extends ProxyRenderer<InstitutionProxy> {

    private static medizin.client.managed.ui.InstitutionProxyRenderer INSTANCE;

    protected InstitutionProxyRenderer() {
        super(new String[] { "institutionName" });
    }

    public static medizin.client.managed.ui.InstitutionProxyRenderer instance() {
        if (INSTANCE == null) {
            INSTANCE = new InstitutionProxyRenderer();
        }
        return INSTANCE;
    }

    public String render(InstitutionProxy object) {
        if (object == null) {
            return "";
        }
        return object.getInstitutionName() + " (" + object.getId() + ")";
    }
}
