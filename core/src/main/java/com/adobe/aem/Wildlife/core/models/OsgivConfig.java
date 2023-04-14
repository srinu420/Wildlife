package com.adobe.aem.Wildlife.core.models;

public interface OsgivConfig {
	public String getServiceName();
    public int getServiceCount();
          public boolean isLiveData();
          public String[] getCountries();
          public String getRunModes();

}
