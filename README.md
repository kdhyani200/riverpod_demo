# Riverpod Demo: PC Components Store
[![Ask DeepWiki](https://devin.ai/assets/askdeepwiki.png)](https://deepwiki.com/kdhyani200/riverpod_demo.git)

A simple Flutter shopping application built to demonstrate state management using the **Riverpod** package. This project serves as a practical, hands-on example for learning Riverpod concepts, including the use of code generation to simplify state management logic.

It features a basic e-commerce flow where users can browse a list of PC components, add them to a shopping cart, and view the cart's contents with a running total.

## Features

-   **Product Catalog:** Displays a grid of available products with images, titles, and prices.
-   **Shopping Cart:** Add or remove items from the cart.
-   **Reactive UI:** The UI, including the cart icon badge, updates in real-time as items are added or removed.
-   **Cart Summary:** A dedicated screen shows all items in the cart and calculates the total price.

## Core Concepts Demonstrated

This project is a great way to learn the following Riverpod concepts:

-   **Providers with Code Generation:** Using `@riverpod` and `riverpod_generator` to create providers (`productsProvider`, `cartProvider`).
-   **State Management with `Notifier`:** Managing cart state using a `Notifier`, which is ideal for exposing and modifying a piece of state.
-   **Immutable State Updates:** Handling state changes by creating new instances of the state object (e.g., `state = {...state, product}`).
-   **Computed/Derived State:** Creating a provider (`cartTotalProvider`) that derives its value from other providers.
-   **Reading and Watching Providers:** Using `ref.watch` to rebuild the UI on state changes and `ref.read` to trigger actions (e.g., adding an item to the cart).

## Tech Stack

-   **Framework:** Flutter
-   **Language:** Dart
-   **State Management:** `flutter_riverpod` with `riverpod_generator`
-   **Code Generation:** `build_runner`

## Project Structure

The core application logic is organized within the `lib` directory:

```
lib/
├── main.dart                 # App entry point and ProviderScope setup
├── product.dart              # Data model for a product
├── providers/
│   ├── cart_provider.dart    # Manages the shopping cart state (add, remove)
│   ├── cart_provider.g.dart  # Generated code for cart providers
│   ├── products_providers.dart # Provides the list of products
│   └── products_providers.g.dart # Generated code for product providers
├── screens/
│   ├── homeScreen.dart       # Main screen displaying all products
│   └── cartScreen.dart       # Screen showing items in the cart and total
└── widgets/
    └── cartIcon.dart         # Reusable cart icon with a notification badge
```

## Getting Started

To run this project locally, follow these steps:

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/kdhyani200/riverpod_demo.git
    cd riverpod_demo
    ```

2.  **Get Flutter packages:**
    ```sh
    flutter pub get
    ```

3.  **Run the code generator:**
    This project uses `riverpod_generator` to create the necessary provider boilerplate. Run the following command to generate the `.g.dart` files:
    ```sh
    dart run build_runner watch --delete-conflicting-outputs
    ```
    *Note: The `watch` command will keep running and automatically regenerate files when you make changes. You can use `build` instead of `watch` for a one-time build.*

4.  **Run the app:**
    ```sh
    flutter run
