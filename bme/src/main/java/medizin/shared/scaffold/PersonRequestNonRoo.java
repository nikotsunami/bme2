package medizin.shared.scaffold;

import medizin.client.managed.request.PersonProxy;
import medizin.server.domain.Person;

import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.Service;
import com.google.web.bindery.requestfactory.shared.InstanceRequest;

@Service(Person.class)
public interface PersonRequestNonRoo extends RequestContext {

	InstanceRequest<PersonProxy, Void> loginPerson();

	Request<PersonProxy> myGetLoggedPerson();
}

