package com.adobe.aem.Wildlife.core.models;

import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.models.annotations.Model;
import org.apache.sling.models.annotations.injectorspecific.OSGiService;

import com.adobe.aem.Wildlife.core.config.OSGIConfig;

@Model(adaptables=SlingHttpServletRequest.class,
adapters=OsgivConfig.class)
//defaultInjectionStrategy=DefaultInjectionStratergy.OPTIONAL
public class OsgivConfigImpl implements OsgivConfig
{
	
	@OSGiService
	OSGIConfig osgiconfig;

	@Override
	public String getServiceName() {
		// TODO Auto-generated method stub
		return osgiconfig.getServiceName();
	}

	@Override
	public int getServiceCount() {
		// TODO Auto-generated method stub
		return osgiconfig.getServiceCount();
	}

	@Override
	public boolean isLiveData() {
		// TODO Auto-generated method stub
		return osgiconfig.isLiveData();
	}

	@Override
	public String[] getCountries() {
		// TODO Auto-generated method stub
		return osgiconfig.getCountries();
	}

	@Override
	public String getRunModes() {
		// TODO Auto-generated method stub
		return osgiconfig.getRunModes() ;
	}

}
