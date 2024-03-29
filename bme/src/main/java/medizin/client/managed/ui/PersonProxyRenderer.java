// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.

package medizin.client.managed.ui;

import com.google.web.bindery.requestfactory.gwt.ui.client.ProxyRenderer;

import medizin.client.managed.request.PersonProxy;

public class PersonProxyRenderer extends ProxyRenderer<PersonProxy> {

    private static medizin.client.managed.ui.PersonProxyRenderer INSTANCE;

    protected PersonProxyRenderer() {
        super(new String[] { "name" });
    }

    public static medizin.client.managed.ui.PersonProxyRenderer instance() {
        if (INSTANCE == null) {
            INSTANCE = new PersonProxyRenderer();
        }
        return INSTANCE;
    }

    public String render(PersonProxy object) {
        if (object == null) {
            return "";
        }
        return object.getName() + " (" + object.getId() + ")";
    }
}
