package medizin.shared.scaffold;

import java.util.List;

import medizin.client.managed.request.McProxy;
import medizin.server.domain.Mc;

//import com.google.gwt.requestfactory.shared.InstanceRequest;
//import com.google.gwt.requestfactory.shared.ProxyFor;
//import com.google.gwt.requestfactory.shared.Request;
//import com.google.gwt.requestfactory.shared.RequestContext;
//import com.google.gwt.requestfactory.shared.Service;
//import com.google.gwt.requestfactory.shared.ServiceName;
import com.google.web.bindery.requestfactory.shared.Request;
import com.google.web.bindery.requestfactory.shared.RequestContext;
import com.google.web.bindery.requestfactory.shared.Service;

@Service(Mc.class)
public interface SystemOverviewRequestNonRoo extends RequestContext {


	Request<List<McProxy>>  getAllMcs();



}
