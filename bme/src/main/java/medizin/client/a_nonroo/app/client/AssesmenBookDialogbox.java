package medizin.client.a_nonroo.app.client;

import com.google.gwt.user.client.ui.IsWidget;
import com.google.gwt.user.client.ui.VerticalPanel;

/**
 * dialog box shown for exporting an assesment book.
 * @author masterthesis
 *
 */
public interface AssesmenBookDialogbox extends IsWidget {
	public interface Delegate{
	    
	}

	VerticalPanel getExportPanel();


}
