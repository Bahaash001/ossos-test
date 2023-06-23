# Flutter Test

This project is a mobile application built with Flutter. It follows a specific project structure and requires the use of pub packages. Please follow the instructions below to set up and run the project.

## Prerequisites

Before getting started, make sure you have the following installed on your machine:

- [Flutter sdk] (version 3.0.0 or above)
- [Dart sdk] (version 3.0.0 or above)

## Installation

1. Clone the repository from the **main** branch.
2. Run the following command to install the project dependencies:

```shell
flutter pub get
```
3. Run the project using this command.

```shell
flutter run
```


##Project Structure:

# Project Structure

The project has the following structure:

- `lib`
  - `src`
    - `core`
      - `constant`
        - `base-api`
      - `errors`
      - `functions`
      - `helper`
      - `pagination`
      - `routes`
      - `service-locator`
      - `base-usecases`
      - `common-widgets`
        
    - `fetures`
      - `feture`
        - `data`
          - `data-sources`
          - `models`
          - `repositories-implementations`
        - `domain`
          - `entities`
          - `repositories`
          - `usecases`
        - `presentation`
          - `manager`
          - `pages`
          - `widgets`
    
  - `main.dart`

This project follows a clean architecture approach, with a separation of concerns between the presentation layer, domain layer, and data layer


