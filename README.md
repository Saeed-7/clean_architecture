### News App with Clean Architecture Implementation

In this project, I aimed to implement Clean Architecture within a complete news application. I utilized advanced Flutter tools and techniques, such as Chopper for web services, Get for dependency injection and routing, and Flutter_Bloc for state management.

**Table of Contents:**
- [What is Clean Architecture?](#what-is-clean-architecture)
- [Project structure based on Clean Architecture principles](#project-structure-based-on-clean-architecture-principles)
- [Sub-package explanations](#sub-package-explanations)
- [Constants](#constants)
- [NewsAPI](#newsapi)
- [Environment Variables](#environment-variables)
- [Web service management with Chopper](#web-service-management-with-chopper)
- [Feature structure](#feature-structure)
    - [Data](#data)
    - [Domain](#domain)
    - [Presentation](#presentation)
- [Difference between Model and Entity](#difference-between-model-and-entity)
- [Data flow from web service to UI](#data-flow-from-web-service-to-ui)
- [Shared package](#shared-package)
- [Dependency injection](#dependency-injection)
- [AppRouter](#approuter)

## What is Clean Architecture?
The Clean Architecture proposed by Robert C. Martin in 2012 combines the principles of hexagonal architecture, onion architecture, and several other variants. It provides additional levels of detail for the components, presented as concentric rings. It isolates adapters and interfaces (user interface, databases, external systems, devices) in the outer rings of the architecture and leaves the inner rings for use cases and entities. Clean Architecture uses the principle of dependency inversion with the strict rule that dependencies shall only exist between an outer ring to an inner ring and never the contrary. For more information, read [Hexagonal Architecture's wikipedia](https://en.wikipedia.org/wiki/Hexagonal_architecture_(software)).

## Project structure based on Clean Architecture principles
At the root of the project, the following packages have been created: core, features, navigation, and shared.
- Core Package: This package contains the core classes and codebase that are independent of other parts of the project but are used by other packages. Core can be considered the innermost layer of the architecture.
- Features Package: This contains the main code of the project responsible for data retrieval, creation, and display.
- Navigation Package: This package handles navigation between UI pages.
- Shared Package: Contains code that is used across most UI pages and features. The difference between this and the core package is that shared code depends on data and UI layers, whereas core is entirely independent of them.

## Sub-package explanations
- Core Package: Contains constant classes, DI configurations, error handling, logging mechanisms like errorLogging or Sentry, and utility settings such as internet checking or environment variable configuration.
- Features Package: Contains the project's capabilities or modules, separated by their types. Each feature includes three layers: data, domain, and presentation, which will be described in detail later.
- Shared Package: Includes shared entities, shared models, feature-level configurations, widgets that are generally used across multiple features, static resources for features, and similar codes.

## Constants
Every project includes a set of fixed and usually unchangeable values used across all layers of the project, such as enums, router addresses, web service URLs, etc. These are organized into classes within the constants package in core.

## NewsAPI
In this project, I used the NewsAPI web service to retrieve and display news. NewsAPI is a free service that provides simple APIs for fetching desired news lists. By registering on their website (https://newsapi.org) and obtaining your newsApiKey, you can use their APIs easily (though with limitations for the free plan!). The service also has a straightforward and practical documentation to help with implementation.

## Environment Variables
Certain values in a project need protection. For instance, in this project, the newsApiKey, a security key provided by NewsAPI after registration, must be kept private. To protect it, I stored it as a key/value pair in a file and used the flutter_dotenv library to access it.
To implement this, I wrote an EnvUtils class and invoked its init method in the main method of the project. If you want to run this project, you can follow one of the two methods below:

**Method 1: Standard Approach**
1. Register on [NewsAPI](https://newsapi.org) and obtain your newsApiKey.
2. Create a package named ```environments``` inside the ```assets``` directory in the project's root.
3. Create a ```.env``` file in the ```environments``` folder.
4. Add the following content to the ```.env``` file:
```NEWS_API_KEY="YOUR_NEWS_API_KEY"```
5. Run the project.

**Method 2: Simple Approach**
1. Register on [NewsAPI](https://newsapi.org) and obtain your newsApiKey.
2. Assign your "newsApiKey" directly in the [UrlConstants](lib/core/constants/url_constants.dart) class.
3. Remove the ```await EnvUtils.init()``` line from the [main method](lib/main.dart) of the project.

## Web service management with Chopper
in progress...

## Feature structure
in progress...

## Data
in progress...

## Domain
in progress...

## Presentation
in progress...

## Difference between Model and Entity
in progress...

## Data flow from web service to UI
in progress...

## Shared package
in progress...

## Dependency injection
in progress...

## AppRouter
in progress...
