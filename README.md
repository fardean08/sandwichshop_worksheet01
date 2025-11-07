# Sandwich Shop App

A simple Flutter app for ordering sandwiches, built for learning and demonstration purposes.

## Features

- **Select Sandwich Type:** Choose between "Footlong" and "Six-inch" sandwiches.
- **Adjust Quantity:** Add or remove sandwiches, with a configurable maximum quantity.
- **Toasted Option:** Toggle whether your sandwich is toasted or untoasted.
- **Live Order Display:** Instantly see your current order (quantity, type, and toasted status).
- **Price Calculation:** Total price is calculated using the PricingRepository (£7 for six-inch, £11 for footlong).
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
│   ├── main.dart      # Main application code
│   └── repositories/
│       └── pricing_repository.dart # Pricing logic
├── test/
│   └── repositories/
│       └── pricing_repository_test.dart # PricingRepository unit tests
├── pubspec.yaml       # Flutter dependencies
```

## Code Overview

- **main.dart:**  
  - `main()` launches the app.
  - `App` is the root widget, using `MaterialApp`.
  - `OrderScreen` is a stateful widget managing sandwich type, quantity, and toasted status.
  - `StyledButton` is a reusable button widget.
  - `OrderItemDisplay` shows the current order summary.
  - Integrates PricingRepository to show total price.

- **repositories/pricing_repository.dart:**
  - Contains `PricingRepository` for calculating total price based on sandwich type and quantity.

## Toasted Sandwich Option

- Toggle the toasted switch to choose between toasted and untoasted sandwiches.
- The switch is uniquely identified for widget testing.

## Price Calculation

- Six-inch sandwich: £7 each
- Footlong sandwich: £11 each
- Total price is displayed in the order summary.

## Testing

- Widget and unit tests are included.
- To run all tests:
  ```
  flutter test
  ```
- Widget tests cover button taps and switch toggling.
- Unit tests verify PricingRepository logic.

## Customization

- Change the maximum quantity by editing `OrderScreen(maxQuantity: 5)` in `main.dart`.
- Add more sandwich types or features by extending the `OrderScreen` logic and PricingRepository.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is for educational purposes.

---

*Made with Flutter*