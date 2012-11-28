package medizin.client.a_nonroo.app.client;

import com.google.web.bindery.requestfactory.shared.EntityProxy;

import medizin.client.managed.request.QuestionProxy;
/**
 * delegates acceptClicked and rejectClicked
 * @author masterthesis
 *
 */
public interface DeclineEmailPopupDelagate {
    void acceptClicked(EntityProxy entityProxy);
    void rejectClicked(EntityProxy entityProxy, String message);
}
