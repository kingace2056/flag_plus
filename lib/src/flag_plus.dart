import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'utils/country_codes.dart';

/// A widget that displays a country flag using SVG format.
class FlagPlus extends StatelessWidget {
  /// The country name or code for the flag to display.
  /// This can be either:
  /// - A 2-letter ISO country code (e.g., 'us', 'gb', 'fr')
  /// - A full country name (e.g., 'United States', 'United Kingdom', 'France')
  final String country;

  /// The width of the flag.
  final double? width;

  /// The height of the flag.
  final double? height;

  /// The shape of the flag.
  final FlagShape shape;

  /// How the flag should be fitted in its bounds.
  final FlagFit fit;

  /// Border radius for rounded shape.
  final double borderRadius;

  /// Background color behind the flag.
  final Color? backgroundColor;

  /// Builder function for loading state.
  final Widget Function(BuildContext)? loadingBuilder;

  /// Builder function for error state.
  final Widget Function(BuildContext, dynamic)? errorBuilder;

  /// Creates a widget that displays a country flag.
  ///
  /// The [country] parameter is required and can be either a country code or name.
  /// The [width] and [height] parameters specify the size of the flag.
  /// If [width] is specified but [height] is null, the aspect ratio will be maintained.
  const FlagPlus({
    super.key,
    required this.country,
    this.width,
    this.height,
    this.shape = FlagShape.rectangular,
    this.fit = FlagFit.contain,
    this.borderRadius = 8.0,
    this.backgroundColor,
    this.loadingBuilder,
    this.errorBuilder,
  });

  @override
  Widget build(BuildContext context) {
    final countryCode = getCountryCode(country);

    return ClipRRect(
      borderRadius:
          shape == FlagShape.circular
              ? BorderRadius.circular(width ?? height ?? 100)
              : shape == FlagShape.rounded
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
      child: Container(
        width: width,
        height: height,
        color: backgroundColor,
        child: SvgPicture.asset(
          'assets/flags/$countryCode.svg',
          package: 'flag_plus',
          fit: _convertFit(fit),
          placeholderBuilder: loadingBuilder,
          width: width,
          height: height,
        ),
      ),
    );
  }

  BoxFit _convertFit(FlagFit flagFit) {
    switch (flagFit) {
      case FlagFit.fill:
        return BoxFit.fill;
      case FlagFit.contain:
        return BoxFit.contain;
      case FlagFit.cover:
        return BoxFit.cover;
      case FlagFit.fitWidth:
        return BoxFit.fitWidth;
      case FlagFit.fitHeight:
        return BoxFit.fitHeight;
      case FlagFit.none:
        return BoxFit.none;
    }
  }
}

/// The shape of the flag widget.
enum FlagShape {
  /// Standard rectangular flag
  rectangular,

  /// Flag with rounded corners
  rounded,

  /// Circular flag shape
  circular,
}

/// How the flag should be fitted within its bounds.
enum FlagFit {
  /// Stretch the flag to fill the entire space
  fill,

  /// Scale the flag to fit within the space while maintaining aspect ratio
  contain,

  /// Scale the flag to cover the entire space while maintaining aspect ratio
  cover,

  /// Scale the flag to match the width while maintaining aspect ratio
  fitWidth,

  /// Scale the flag to match the height while maintaining aspect ratio
  fitHeight,

  /// Display the flag without any scaling
  none,
}
