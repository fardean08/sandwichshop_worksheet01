# Sandwich Shop App

A simple Flutter app for ordering sandwiches, built for learning and demonstration purposes.

## Features

- **Select Sandwich Type:** Choose between "Footlong" and "Six-inch" sandwiches.
- **Adjust Quantity:** Add or remove sandwiches, with a configurable maximum quantity.
- **Live Order Display:** Instantly see your current order (quantity and type).
- **Styled Buttons:** Custom button widget for consistent UI.

## Screenshots

*(Add screenshots here if available)*

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Dart (comes with Flutter)
- An editor like [VS Code](https://code.visualstudio.com/) or Android Studio

### Installation

1. **Clone the repository:**
   ```
   git clone <your-repo-url>
   cd sandwichshop_worksheet1
   ```

2. **Get dependencies:**
   ```
   flutter pub get
   ```

3. **Run the app:**
   ```
   flutter run
   ```
   Or use your editor's "Run" or "Debug" feature.

## Project Structure

```
sandwichshop_worksheet1/
├── lib/
│   └── main.dart      # Main application code
├── pubspec.yaml       # Flutter dependencies
```

## Code Overview

- **main.dart:**  
  - `main()` launches the app.
  - `App` is the root widget, using `MaterialApp`.
  - `OrderScreen` is a stateful widget managing sandwich type and quantity.
  - `StyledButton` is a reusable button widget.
  - `OrderItemDisplay` shows the current order summary.

### Key Widgets

- **OrderScreen:**  
  - Lets users select sandwich type and adjust quantity.
  - Prevents exceeding the maximum quantity or going below zero.

- **StyledButton:**  
  - Customizes button color and disables when not allowed.

- **OrderItemDisplay:**  
  - Displays the current quantity and sandwich type.

## Customization

- Change the maximum quantity by editing `OrderScreen(maxQuantity: 5)` in `main.dart`.
- Add more sandwich types or features by extending the `OrderScreen` logic.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is for educational purposes.

---

*Made with Flutter*