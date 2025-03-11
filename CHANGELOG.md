# Changelog

All notable changes to the Flag Plus package will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.0.2] - 2024-03-XX

### Added

- Support for country names in addition to country codes
- Comprehensive country data with detailed information
- New utility functions for country code handling:
  - `getCountryCode()`: Convert country names to ISO codes
  - `getCountryName()`: Get full country name from code
  - `isValidCountry()`: Validate country inputs
  - `getCountryDisplayName()`: Get formatted display name

### Enhanced

- Improved error handling with specific error states
- Better error messages and UI for invalid inputs
- Added themed error widget with different states
- Case-insensitive country name matching

### Fixed

- Country code validation and conversion
- Error widget layout issues
- Asset path handling for country codes

## [0.0.1] - 2025-03-11

### Added

- Initial release of Flag Plus package
- Basic flag display functionality using SVG format
- Multiple flag shapes:
  - Rectangular (default)
  - Rounded corners
  - Circular
- Flexible sizing options
- Smart fitting modes:
  - Fill
  - Contain
  - Cover
  - Fit Width
  - Fit Height
  - None
- Loading state customization
- Error state handling
- Background color support
- Border radius customization
- Asset caching for better performance
