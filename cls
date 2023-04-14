warning: in the working copy of 'README.md', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/README.md b/README.md[m
[1mindex f89e6cd..040ed30 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -1,2 +1,126 @@[m
[31m-# Wildlife[m
[31m-Aem_practice_project[m
[32m+[m[32m# Sample AEM project template[m
[32m+[m
[32m+[m[32mThis is a project template for AEM-based applications. It is intended as a best-practice set of examples as well as a potential starting point to develop your own functionality.[m
[32m+[m
[32m+[m[32m## Modules[m
[32m+[m
[32m+[m[32mThe main parts of the template are:[m
[32m+[m
[32m+[m[32m* core: Java bundle containing all core functionality like OSGi services, listeners or schedulers, as well as component-related Java code such as servlets or request filters.[m
[32m+[m[32m* it.tests: Java based integration tests[m
[32m+[m[32m* ui.apps: contains the /apps (and /etc) parts of the project, ie JS&CSS clientlibs, components, and templates[m
[32m+[m[32m* ui.content: contains sample content using the components from the ui.apps[m
[32m+[m[32m* ui.config: contains runmode specific OSGi configs for the project[m
[32m+[m[32m* ui.frontend: an optional dedicated front-end build mechanism (Angular, React or general Webpack project)[m
[32m+[m[32m* ui.tests: Selenium based UI tests[m
[32m+[m[32m* all: a single content package that embeds all of the compiled modules (bundles and content packages) including any vendor dependencies[m
[32m+[m[32m* analyse: this module runs analysis on the project which provides additional validation for deploying into AEMaaCS[m
[32m+[m
[32m+[m[32m## How to build[m
[32m+[m
[32m+[m[32mTo build all the modules run in the project root directory the following command with Maven 3:[m
[32m+[m
[32m+[m[32m    mvn clean install[m
[32m+[m
[32m+[m[32mTo build all the modules and deploy the `all` package to a local instance of AEM, run in the project root directory the following command:[m
[32m+[m
[32m+[m[32m    mvn clean install -PautoInstallSinglePackage[m
[32m+[m
[32m+[m[32mOr to deploy it to a publish instance, run[m
[32m+[m
[32m+[m[32m    mvn clean install -PautoInstallSinglePackagePublish[m
[32m+[m
[32m+[m[32mOr alternatively[m
[32m+[m
[32m+[m[32m    mvn clean install -PautoInstallSinglePackage -Daem.port=4503[m
[32m+[m
[32m+[m[32mOr to deploy only the bundle to the author, run[m
[32m+[m
[32m+[m[32m    mvn clean install -PautoInstallBundle[m
[32m+[m
[32m+[m[32mOr to deploy only a single content package, run in the sub-module directory (i.e `ui.apps`)[m
[32m+[m
[32m+[m[32m    mvn clean install -PautoInstallPackage[m
[32m+[m
[32m+[m[32m## Testing[m
[32m+[m
[32m+[m[32mThere are three levels of testing contained in the project:[m
[32m+[m
[32m+[m[32m### Unit tests[m
[32m+[m
[32m+[m[32mThis show-cases classic unit testing of the code contained in the bundle. To[m
[32m+[m[32mtest, execute:[m
[32m+[m
[32m+[m[32m    mvn clean test[m
[32m+[m
[32m+[m[32m### Integration tests[m
[32m+[m
[32m+[m[32mThis allows running integration tests that exercise the capabilities of AEM via[m
[32m+[m[32mHTTP calls to its API. To run the integration tests, run:[m
[32m+[m
[32m+[m[32m    mvn clean verify -Plocal[m
[32m+[m
[32m+[m[32mTest classes must be saved in the `src/main/java` directory (or any of its[m
[32m+[m[32msubdirectories), and must be contained in files matching the pattern `*IT.java`.[m
[32m+[m
[32m+[m[32mThe configuration provides sensible defaults for a typical local installation of[m
[32m+[m[32mAEM. If you want to point the integration tests to different AEM author and[m
[32m+[m[32mpublish instances, you can use the following system properties via Maven's `-D`[m
[32m+[m[32mflag.[m
[32m+[m
[32m+[m[32m| Property | Description | Default value |[m
[32m+[m[32m| --- | --- | --- |[m
[32m+[m[32m| `it.author.url` | URL of the author instance | `http://localhost:4502` |[m
[32m+[m[32m| `it.author.user` | Admin user for the author instance | `admin` |[m
[32m+[m[32m| `it.author.password` | Password of the admin user for the author instance | `admin` |[m
[32m+[m[32m| `it.publish.url` | URL of the publish instance | `http://localhost:4503` |[m
[32m+[m[32m| `it.publish.user` | Admin user for the publish instance | `admin` |[m
[32m+[m[32m| `it.publish.password` | Password of the admin user for the publish instance | `admin` |[m
[32m+[m
[32m+[m[32mThe integration tests in this archetype use the [AEM Testing[m
[32m+[m[32mClients](https://github.com/adobe/aem-testing-clients) and showcase some[m
[32m+[m[32mrecommended [best[m
[32m+[m[32mpractices](https://github.com/adobe/aem-testing-clients/wiki/Best-practices) to[m
[32m+[m[32mbe put in use when writing integration tests for AEM.[m
[32m+[m
[32m+[m[32m## Static Analysis[m
[32m+[m
[32m+[m[32mThe `analyse` module performs static analysis on the project for deploying into AEMaaCS. It is automatically[m
[32m+[m[32mrun when executing[m
[32m+[m
[32m+[m[32m    mvn clean install[m
[32m+[m
[32m+[m[32mfrom the project root directory. Additional information about this analysis and how to further configure it[m
[32m+[m[32mcan be found here https://github.com/adobe/aemanalyser-maven-plugin[m
[32m+[m
[32m+[m[32m### UI tests[m
[32m+[m
[32m+[m[32mThey will test the UI layer of your AEM application using Selenium technology.[m[41m [m
[32m+[m
[32m+[m[32mTo run them locally:[m
[32m+[m
[32m+[m[32m    mvn clean verify -Pui-tests-local-execution[m
[32m+[m
[32m+[m[32mThis default command requires:[m
[32m+[m[32m* an AEM author instance available at http://localhost:4502 (with the whole project built and deployed on it, see `How to build` section above)[m
[32m+[m[32m* Chrome browser installed at default location[m
[32m+[m
[32m+[m[32mCheck README file in `ui.tests` module for more details.[m
[32m+[m
[32m+[m[32m## ClientLibs[m
[32m+[m
[32m+[m[32mThe frontend module is made available using an [AEM ClientLib](https://helpx.adobe.com/experience-manager/6-5/sites/developing/using/clientlibs.html). When executing the NPM build script, the app is built and the [`aem-clientlib-generator`](https://github.com/wcm-io-frontend/aem-clientlib-generator) package takes the resulting build output and transforms it into such a ClientLib.[m
[32m+[m
[32m+[m[32mA ClientLib will consist of the following files and directories:[m
[32m+[m
[32m+[m[32m- `css/`: CSS files which can be requested in the HTML[m
[32m+[m[32m- `css.txt` (tells AEM the order and names of files in `css/` so they can be merged)[m
[32m+[m[32m- `js/`: JavaScript files which can be requested in the HTML[m
[32m+[m[32m- `js.txt` (tells AEM the order and names of files in `js/` so they can be merged[m
[32m+[m[32m- `resources/`: Source maps, non-entrypoint code chunks (resulting from code splitting), static assets (e.g. icons), etc.[m
[32m+[m
[32m+[m[32m## Maven settings[m
[32m+[m
[32m+[m[32mThe project comes with the auto-public repository configured. To setup the repository in your Maven settings, refer to:[m
[32m+[m
[32m+[m[32m    http://helpx.adobe.com/experience-manager/kb/SetUpTheAdobeMavenRepository.html[m
