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

<div align="center">

# 🎌 Flag Plus

A powerful Flutter package for displaying world flags with customizable shapes, sizes, and fitting options.

[![pub package](https://img.shields.io/pub/v/flag_plus.svg)](https://pub.dev/packages/flag_plus)
[![likes](https://img.shields.io/pub/likes/flag_plus)](https://pub.dev/packages/flag_plus/score)
[![popularity](https://img.shields.io/pub/popularity/flag_plus)](https://pub.dev/packages/flag_plus/score)
[![GitHub issues](https://img.shields.io/github/issues/kingace2056/flag_plus)](https://github.com/kingace2056/flag_plus/issues)
[![GitHub license](https://img.shields.io/github/license/kingace2056/flag_plus)](https://github.com/kingace2056/flag_plus/blob/main/LICENSE)

</div>

## ✨ Features

- 🎨 **Multiple Flag Shapes**
  - Rectangular (default)
  - Rounded corners with customizable radius
  - Perfect circular shape
- 📏 **Flexible Sizing**
  - Independent width and height control
  - Aspect ratio preservation options
- 🖼️ **Smart Fitting Options**
  - Contain: Fit while maintaining aspect ratio
  - Cover: Fill while maintaining aspect ratio
  - Fill: Stretch to fill space
  - And more!
- 🌍 **Country Input Flexibility**
  - Support for ISO country codes (`us`, `gb`, etc.)
  - Full country names (`United States`, `United Kingdom`, etc.)
  - Case-insensitive input
- 🎯 **Error Handling**
  - Customizable error states
  - Informative error messages
  - Fallback error widgets
- 🔄 **Loading States**
  - Custom loading indicators
  - Placeholder support
- 🎨 **Visual Customization**
  - Background color support
  - Border radius control
  - Shape variations
- ⚡ **Performance**
  - SVG format for crisp rendering
  - Asset caching
  - Efficient loading

## 📦 Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  flag_plus: ^latest_version
```

Or install via command line:

```bash
flutter pub add flag_plus
```

## 🚀 Quick Start

1. Import the package:

```dart
import 'package:flag_plus/flag_plus.dart';
```

2. Add a simple flag:

```dart
FlagPlus(
  country: 'us',  // or 'United States'
  width: 100,
  height: 60,
)
```

## 📖 Usage Examples

### 🎨 Flag Shapes

```dart
// Rectangular (Default)
FlagPlus(
  country: 'France',
  width: 100,
  height: 60,
)

// Rounded Corners
FlagPlus(
  country: 'Germany',
  width: 100,
  height: 60,
  shape: FlagShape.rounded,
  borderRadius: 12,
)

// Circular
FlagPlus(
  country: 'Japan',
  width: 100,
  height: 100,
  shape: FlagShape.circular,
)
```

### 🖼️ Fitting Options

```dart
// Contain (Default)
FlagPlus(
  country: 'Italy',
  width: 150,
  height: 100,
  fit: FlagFit.contain,
  backgroundColor: Colors.grey[200],
)

// Cover
FlagPlus(
  country: 'Spain',
  width: 150,
  height: 100,
  fit: FlagFit.cover,
)

// Fill
FlagPlus(
  country: 'Brazil',
  width: 150,
  height: 100,
  fit: FlagFit.fill,
)
```

### 🔄 Loading & Error States

```dart
FlagPlus(
  country: 'Canada',
  width: 150,
  height: 100,
  // Custom loading widget
  loadingBuilder: (context) => const Center(
    child: CircularProgressIndicator(),
  ),
  // Custom error widget
  errorBuilder: (context, error) => Container(
    color: Colors.red[100],
    child: const Center(
      child: Icon(Icons.error_outline),
    ),
  ),
)
```

### 🌍 Country Input Examples

```dart
// Using country codes
FlagPlus(country: 'us'),  // United States
FlagPlus(country: 'gb'),  // United Kingdom
FlagPlus(country: 'jp'),  // Japan

// Using country names (case-insensitive)
FlagPlus(country: 'United States'),
FlagPlus(country: 'united kingdom'),
FlagPlus(country: 'JAPAN'),
```

## 📚 API Reference

### FlagPlus Widget

| Property          | Type                                      | Default       | Description                     |
| ----------------- | ----------------------------------------- | ------------- | ------------------------------- |
| `country`         | `String`                                  | Required      | Country code or name            |
| `width`           | `double?`                                 | null          | Flag width                      |
| `height`          | `double?`                                 | null          | Flag height                     |
| `shape`           | `FlagShape`                               | `rectangular` | Flag shape                      |
| `fit`             | `FlagFit`                                 | `contain`     | How flag fits bounds            |
| `borderRadius`    | `double`                                  | 8.0           | Corner radius for rounded shape |
| `backgroundColor` | `Color?`                                  | null          | Background color                |
| `loadingBuilder`  | `Widget Function(BuildContext)?`          | null          | Custom loading widget           |
| `errorBuilder`    | `Widget Function(BuildContext, dynamic)?` | null          | Custom error widget             |

### FlagShape

| Value         | Description               |
| ------------- | ------------------------- |
| `rectangular` | Standard rectangular flag |
| `rounded`     | Flag with rounded corners |
| `circular`    | Perfect circular shape    |

### FlagFit

| Value       | Description                |
| ----------- | -------------------------- |
| `fill`      | Stretch to fill space      |
| `contain`   | Scale to fit within bounds |
| `cover`     | Scale to cover bounds      |
| `fitWidth`  | Scale to match width       |
| `fitHeight` | Scale to match height      |
| `none`      | No scaling                 |

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. 🐛 **Report Bugs**

   - Open an issue with a clear title and description
   - Add relevant code samples and error messages
   - Include steps to reproduce

2. 💡 **Suggest Features**

   - Open an issue to suggest new features
   - Explain the use case and benefits
   - Provide examples if possible

3. 🔧 **Submit Pull Requests**
   - Fork the repository
   - Create a new branch: `git checkout -b feature-name`
   - Make your changes
   - Submit a PR with a clear description

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Credits

- Flag SVG files sourced from [country-flags](https://github.com/hampusborgos/country-flags) repository by Hampus Borgos
- Built with [Flutter](https://flutter.dev) and [flutter_svg](https://pub.dev/packages/flutter_svg)

## 👨‍💻 Author

<div align="center">
  <img src="https://github.com/kingace2056.png" width="100" style="border-radius: 50%;">
  <br>
  <b>Sarthak Parajuli</b>
  <br>
  <a href="https://github.com/kingace2056">@kingace2056</a>
  <br>
  Full-time Flutter Developer
  <br>
  Computer Engineering Student at IOE, Purwanchal Campus(ERC), Dharan, Nepal 🇳🇵
</div>

## 📝 Changelog

### 0.0.1

- 🎉 Initial release
- ✨ Basic flag display functionality
- 🎨 Multiple shape options
- 🖼️ Fitting options
- 🔄 Loading and error states
- 📚 Comprehensive documentation
