package medizin.shared.scaffold;

import medizin.client.managed.request.InstitutionProxy;
import medizin.server.domain.Institution;

import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.Service;
import com.google.web.bindery.requestfactory.shared.InstanceRequest;

@Service(Institution.class)
public interface InstitutionRequestNonRoo extends RequestContext {

	InstanceRequest<InstitutionProxy, Void> mySetCurrentInstitution();

	Request<InstitutionProxy> myGetInstitutionToWorkWith();
}

