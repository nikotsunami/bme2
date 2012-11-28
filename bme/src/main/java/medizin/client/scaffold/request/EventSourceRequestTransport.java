package medizin.client.scaffold.request;

import javax.servlet.http.HttpSession;

import com.allen_sauer.gwt.log.client.Log;
import com.google.gwt.event.shared.EventBus;
import com.google.gwt.user.client.Window;
import com.google.web.bindery.requestfactory.gwt.client.DefaultRequestTransport;
import com.google.web.bindery.requestfactory.shared.RequestTransport;
import com.google.web.bindery.requestfactory.shared.ServerFailure;

/**
 * Wraps {@link RequestTransport} to post events as requests are sent
 * and received.
 */
public class EventSourceRequestTransport implements RequestTransport {
	private final EventBus eventBus;
	private final RequestTransport wrapped;

	public EventSourceRequestTransport(EventBus eventBus) {
		this(eventBus, new DefaultRequestTransport());
	}

	public EventSourceRequestTransport(EventBus eventBus, RequestTransport wrapped) {
		this.eventBus = eventBus;
		this.wrapped = wrapped;
	}

	public void send(String payload, final TransportReceiver receiver) {
		TransportReceiver myReceiver = new TransportReceiver() {

			@Override
			public void onTransportSuccess(String payload) {
				try {
					if(payload.contains("Server Error: null")){
						Window.alert("Please login. In Shibboleth app you would be redirected");
						return;
					}
					receiver.onTransportSuccess(payload);
				} finally {
					if(payload.contains("Server Error: null")){
						Window.alert("Please login. In Shibboleth app you would be redirected");
						return;
					}
	
					eventBus.fireEvent(new RequestEvent(RequestEvent.State.RECEIVED));
				}
			}

			@Override
			public void onTransportFailure(ServerFailure failure) {
				try {
					
					receiver.onTransportFailure(failure);
				} finally {
					eventBus.fireEvent(new RequestEvent(RequestEvent.State.RECEIVED));
				}
			}
		};
		
		//Log.info(payload);

		try {
			wrapped.send(payload, myReceiver);
		} finally {
			eventBus.fireEvent(new RequestEvent(RequestEvent.State.SENT));
		}
	}
}
