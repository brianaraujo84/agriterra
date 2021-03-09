# Agriterra App

A new Flutter application.

## Documentation

This project has been developed using Flutter.

### Flutter 

[Flutter][flutter.dev] is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. 
 
To install it, follow the set-up steps in the [documentation][flutter.dev/install] guide according to your operating system. 

[flutter.dev]: https://flutter.dev/ 

[flutter.dev/install]: https://flutter.dev/docs/get-started/install 

### Set Up

#### Using Git

To run this project using Git, from the terminal:

1. Clone the existing repository using:

```
https://github.com/Retail-IT-Solutions/agriterra_movil_frontend.git
```

2. Open the project in your favorite IDE.
3. Run `flutter pub get` in the root of the project. 
4. To run the project from terminal use:

```
flutter run
```

### Architecture

The architecture in the application will be based on the implementation of Clean Architecture supported by the principles of Domain-Driven Design. 

* [Clean Architecture][ca] is a software design philosophy that separates the elements of a design into ring levels. The main rule of clean architecture is that code dependencies can only come from the outer levels inward. Code on the inner layers can have no knowledge of functions on the outer layers.

<img alt="Clean Architecture Diagram" src="./docs/img/clean_architecture.jpg"  style="display: block; margin-left: auto; margin-right: auto; width: 50%; margin-bottom: 20px;"/>

[ca]: https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html

* [Domain-Driven Design (DDD)][ddd] is an approach to software development that centers the development on programming a domain model that has a rich understanding of the processes and rules of a domain. The name comes from a 2003 book by Eric Evans that describes the approach through a catalog of patterns. Since then a community of practitioners have further developed the ideas, spawning various other books and training courses. The approach is particularly suited to complex domains, where a lot of often-messy logic needs to be organized.

[ddd]: http://www.methodsandtools.com/archive/archive.php?id=97

### Project Structure
 ---
 
### Develop

#### State Management (BLoC + Provider + Service Locator)

* [Bloc Library][bloc] is a predictable state management library that helps implement the BLoC (Business Logic Component) design pattern.
* [Flutter Bloc][flutter_bloc] Flutter Widgets that make it easy to implement the BLoC (Business Logic Component) design pattern based on the Provider package. Built to be used with the bloc state management package.
* [GetIt][get_it] Simple direct Service Locator that allows to decouple the interface from a concrete implementation and to access the concrete implementation from everywhere in the app.

[bloc]: https://bloclibrary.dev/
[flutter_bloc]: https://pub.dev/packages/flutter_bloc
[get_it]: https://pub.dev/packages/get_it

#### Build Runner 

* [Build Runner][build_runner] is a package that provides a concrete way of generating files using Dart code, outside of tools like pub.
In the project, there are some classes that needs to be auto generated, like the `Freezed Class`, `Routes` and `Injectable Class`.

To keep this files updated,run the next command from the terminal:

```
flutter pub run build_runner watch --delete-conflicting-outputs
```

[build_runner]: https://pub.dev/packages/build_runner