package com.adobe.aem.Wildlife.core.services.Impl;


import org.osgi.service.component.annotations.Component;
import static com.adobe.aem.Wildlife.core.constants.AppConstants.URL;
import com.adobe.aem.Wildlife.core.services.ReadJsonService;
import com.adobe.aem.Wildlife.core.utils.Network;

/**
 * @author Anirudh Sharma
 * 
 * Implementation of ReadJsonService
 */
@Component(immediate = true, service = ReadJsonService.class)
public class ReadJsonServiceImpl implements ReadJsonService {


	/**
	 * Overridden method which will read the JSON data via an HTTP GET call
	 */
	@Override
	public String getData() {
		
		String response = Network.readJson(URL);
		
		return response;
	}

}