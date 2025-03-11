<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

# World Flag

A Flutter package that provides an easy way to display world flags with customizable shapes, sizes, and fitting options. The package uses SVG format for high-quality, scalable flag rendering.

[![pub package](https://img.shields.io/pub/v/world_flag.svg)](https://pub.dev/packages/world_flag)
[![likes](https://img.shields.io/pub/likes/world_flag)](https://pub.dev/packages/world_flag/score)
[![popularity](https://img.shields.io/pub/popularity/world_flag)](https://pub.dev/packages/world_flag/score)

## Features

- 🎨 **Multiple Flag Shapes**: Rectangular, rounded corners, or circular
- 📏 **Flexible Sizing**: Customize width and height independently
- 🖼️ **Smart Fitting Options**: Various fitting modes like contain, cover, fill
- 🎯 **Aspect Ratio Handling**: Maintains correct flag proportions
- 🔄 **Loading States**: Customizable loading and error states
- 🎨 **Background Support**: Optional background color
- 💾 **Efficient Loading**: Asset caching for better performance
- 🌓 **Theme Support**: Adapts to light and dark themes

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  world_flag: ^0.0.1
```

## Usage

### Basic Usage

Import the package:

```dart
import 'package:world_flag/world_flag.dart';
```

Display a simple flag:

```dart
WorldFlag(
  country: 'us',  // Country code
  width: 100,     // Width in pixels
  height: 60,     // Height in pixels
)
```

### Flag Shapes

The package supports three flag shapes through the `WorldFlagShape` enum:

```dart
// Rectangular flag (default)
WorldFlag(
  country: 'gb',
  width: 100,
  height: 60,
  shape: WorldFlagShape.rectangular,
)

// Rounded corners
WorldFlag(
  country: 'fr',
  width: 100,
  height: 60,
  shape: WorldFlagShape.rounded,
  borderRadius: 12.0,  // Custom border radius
)

// Circular flag
WorldFlag(
  country: 'jp',
  width: 100,
  height: 100,  // Equal width and height for perfect circle
  shape: WorldFlagShape.circular,
)
```

### Fitting Options

Control how the flag fits within its bounds using `WorldFlagFit`:

```dart
// Fill the entire space (might stretch)
WorldFlag(
  country: 'de',
  width: 150,
  height: 100,
  fit: WorldFlagFit.fill,
)

// Maintain aspect ratio, fit within bounds
WorldFlag(
  country: 'it',
  width: 150,
  height: 100,
  fit: WorldFlagFit.contain,
  backgroundColor: Colors.grey[200],  // Background color visible
)

// Maintain aspect ratio, cover entire space
WorldFlag(
  country: 'es',
  width: 150,
  height: 100,
  fit: WorldFlagFit.cover,
)

// Fit to width
WorldFlag(
  country: 'br',
  width: 150,
  height: 100,
  fit: WorldFlagFit.fitWidth,
)

// Fit to height
WorldFlag(
  country: 'ca',
  width: 150,
  height: 100,
  fit: WorldFlagFit.fitHeight,
)

// No scaling
WorldFlag(
  country: 'au',
  width: 150,
  height: 100,
  fit: WorldFlagFit.none,
)
```

### Loading and Error States

Customize loading and error states:

```dart
WorldFlag(
  country: 'in',
  width: 150,
  height: 100,
  loadingBuilder: (context) => Center(
    child: CircularProgressIndicator(),
  ),
  errorBuilder: (context, error) => Center(
    child: Icon(Icons.broken_image),
  ),
)
```

## API Reference

### WorldFlag

Main widget for displaying flags.

#### Properties

| Property          | Type                                      | Description                                                 |
| ----------------- | ----------------------------------------- | ----------------------------------------------------------- |
| `country`         | `String`                                  | Required. The country code for the flag                     |
| `width`           | `double?`                                 | Optional. The width of the flag                             |
| `height`          | `double?`                                 | Optional. The height of the flag                            |
| `shape`           | `WorldFlagShape`                          | The shape of the flag. Default is `rectangular`             |
| `fit`             | `WorldFlagFit`                            | How the flag should fit in its bounds. Default is `contain` |
| `borderRadius`    | `double`                                  | Border radius for rounded shape. Default is 8.0             |
| `backgroundColor` | `Color?`                                  | Optional background color                                   |
| `loadingBuilder`  | `Widget Function(BuildContext)?`          | Optional custom loading widget                              |
| `errorBuilder`    | `Widget Function(BuildContext, dynamic)?` | Optional custom error widget                                |

### WorldFlagShape

Enum defining possible flag shapes:

- `rectangular`: Standard rectangular flag
- `rounded`: Flag with rounded corners
- `circular`: Circular flag shape

### WorldFlagFit

Enum defining how the flag fits within its bounds:

- `fill`: Stretch to fill the space
- `contain`: Scale to fit while maintaining aspect ratio
- `cover`: Scale to cover while maintaining aspect ratio
- `fitWidth`: Scale to match width
- `fitHeight`: Scale to match height
- `none`: No scaling applied

## Contributing

Contributions are welcome! If you find a bug or want to add a feature:

1. Create an issue to discuss the change
2. Fork the repository
3. Create a new branch for your feature
4. Submit a pull request

Please ensure your code follows the project's style and includes appropriate tests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Credits

Flag SVG files are sourced from [country-flags](https://github.com/hampusborgos/country-flags) repository by Hampus Borgos.

## Author

**Sarthak Parajuli** ([@kingace2056](https://github.com/kingace2056))

- Full-time Flutter Developer
- Computer Engineering Student at IOE, Purwanchal Campus(ERC), Dharan, Nepal 🇳🇵

## Version History

### 0.0.1

- Initial release
- Basic flag display functionality
- Multiple shape options
- Fitting options
- Loading and error states
