# Flutter Cubit Clean Architecture POC

This project is a simple posts application containing a list of fake posts and a page to create a new one, that serves as a Proof of Concept for architecture, state management and dependency injection solutions.\
Here you can find a concrete implementation of the Clean Architecture using Cubit as state management solution.

## App Features

- Page to create a new post
- Posts list from a local random generated model

## Used Packages

- bloc
- flutter_bloc
- equatable
- faker
- get_it

## Getting Started

### Architecture

The project root folder is the `lib` folder. This folder contains the subfolders divided such as the Clean Architecture sugests, but with an additional folder wich contains abstractions for `datasources`, implementations of repositories and models.
The file organization is as follows:

- `core`: this folder contains everything that is used by the entire application, such as dependency injection and routing.
- `domain`: this layer has all the business rules and interfaces (abstract classes in dart) for repositories. Here is where the entities and usecases are located as well.
- `external`: this layer contains all the classes responsible for connecting with the outside world (APIs). Here is where the `datasources` implementations are located.
- `infra`: this folder contains the abstractions for `datasources`, as well as the entities implementations (models) and the repository implementations.
- `presenter`: this layer contains all the user interface components, such as pages and widgets, as well as the state management.

### Dependency Injection

The dependency injection is made using the `injectable` library. The setup for this library is made in the `dependency_injection.dart` file, and by adding annotations to all the classes that need injection. After this, run the build command to generate the injection file using this command:

```dart
flutter packages pub run build_runner build  
```

For more details, check the [injectable documentation](https://pub.dev/packages/injectable).

### Navigation

The navigation is made using the `auto_route` library. The setup for this library is made by adding the routes inside the `router.dart` file and running the build command afterwards.

```dart
flutter packages pub run build_runner build  
```

For more details, check the [auto_route documentation](https://pub.dev/packages/auto_route).

### State Management

The state management solution selected for this project is `Cubit`.\
The `Cubit` is a subset of the famous implementation of the `BLoC pattern`, where it abandons the concept of Events and simplifies the way of emmiting states.

### Screens

This is a simple app, with just 2 screens.

- Home
- Create Post

The Home page contains a simple list of posts and a button to navigate to the Create Post page. In the Create Post Page is a text field area and a button to publish the data. After clicking this button, the navigatiion returns to Home.
