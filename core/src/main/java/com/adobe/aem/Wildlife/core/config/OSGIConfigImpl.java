package com.adobe.aem.Wildlife.core.config;

import org.osgi.service.component.annotations.Activate;
import org.osgi.service.component.annotations.Component;
import org.osgi.service.metatype.annotations.AttributeDefinition;
import org.osgi.service.metatype.annotations.AttributeType;
import org.osgi.service.metatype.annotations.ObjectClassDefinition;
import org.osgi.service.metatype.annotations.Option;
import org.osgi.service.metatype.annotations.Designate;
 import org.osgi.service.component.annotations.Activate;



@Component(service=OSGIConfig.class,immediate=true)
@Designate(ocd=OSGIConfigImpl.ServiceConfig.class)
public class OSGIConfigImpl implements OSGIConfig
{
	@ObjectClassDefinition(name="sreenu-osgi configuration",description="osgi configuration for surge software solutions ")
	public @interface ServiceConfig
	{
		@AttributeDefinition(
				name="Service Name",
				description="Enteer the Service Name",
				type=AttributeType.STRING)
		public String getServiceName() default "Marvelcnu Service";
		
		@AttributeDefinition(
				name="Service Count",
				description="count the service",
				type=AttributeType.INTEGER)
		public int getServiceCount() default 200;
		
		@AttributeDefinition(
				name="Live Data",
				description="check this to get data",
				type=AttributeType.BOOLEAN)
		public boolean isLiveData() default false;
		
		@AttributeDefinition(
				name="Countries",
				description="Enteer the countries",
				type=AttributeType.STRING)
		public String[] getCountries() default {"india","australia"};
		
		@AttributeDefinition(
				name="Run Modes",
				description="Select the Run Modes",
				type=AttributeType.STRING,
				options= {
						@Option(label="Author", value="author"),
						@Option(label="Publish", value="publish"),
						@Option(label="Both", value="both"),
				})
	public String getRunModes() default "both";
		
		}
	
	private String serviceName;
	private int serviceCount;
	private boolean liveData;
	private String[] countries;
	private String runModes;
	
	@Activate()
	protected void activate(ServiceConfig serviceconfig) {
		
		serviceName=serviceconfig.getServiceName();
		serviceCount=serviceconfig.getServiceCount();
		liveData=serviceconfig.isLiveData();
		 countries=serviceconfig.getCountries();
		 runModes=serviceconfig.getRunModes();
		
		
		
	}
	
	
	
	
	
	@Override
	public String getServiceName() {
		
		return serviceName;
	}

	@Override
	public int getServiceCount() {
	
		return serviceCount;
	}

	@Override
	public boolean isLiveData() {


		return liveData;
	}

	@Override
	public String[] getCountries() {
		
		return countries;
	}

	@Override
	public String getRunModes() {
		
		return runModes;
	}

}
