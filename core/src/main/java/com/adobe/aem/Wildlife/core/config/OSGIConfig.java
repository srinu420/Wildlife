package com.adobe.aem.Wildlife.core.config;

public interface OSGIConfig {
      public String getServiceName();
      public int getServiceCount();
            public boolean isLiveData();
            public String[] getCountries();
            public String getRunModes();
            
}
