import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// A widget that displays a country flag using SVG format.
class WorldFlag extends StatelessWidget {
  /// The country code for the flag to display.
  final String country;

  /// The width of the flag. ho
  final double? width;

  /// The height of the flag.
  final double? height;

  /// The shape of the flag.
  final WorldFlagShape shape;

  /// How the flag should be fitted in its bounds.
  final WorldFlagFit fit;

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
  /// The [country] parameter is required and should be a valid country code.
  /// The [width] and [height] parameters specify the size of the flag.
  /// If [width] is specified but [height] is null, the aspect ratio will be maintained.
  const WorldFlag({
    super.key,
    required this.country,
    this.width,
    this.height,
    this.shape = WorldFlagShape.rectangular,
    this.fit = WorldFlagFit.contain,
    this.borderRadius = 8.0,
    this.backgroundColor,
    this.loadingBuilder,
    this.errorBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          shape == WorldFlagShape.circular
              ? BorderRadius.circular(width ?? height ?? 100)
              : shape == WorldFlagShape.rounded
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
      child: Container(
        width: width,
        height: height,
        color: backgroundColor,
        child: SvgPicture.asset(
          'assets/flags/$country.svg',
          package: 'flag_plus',

          fit: _convertFit(fit),
          placeholderBuilder: loadingBuilder,
          width: width,
          height: height,
        ),
      ),
    );
  }

  BoxFit _convertFit(WorldFlagFit flagFit) {
    switch (flagFit) {
      case WorldFlagFit.fill:
        return BoxFit.fill;
      case WorldFlagFit.contain:
        return BoxFit.contain;
      case WorldFlagFit.cover:
        return BoxFit.cover;
      case WorldFlagFit.fitWidth:
        return BoxFit.fitWidth;
      case WorldFlagFit.fitHeight:
        return BoxFit.fitHeight;
      case WorldFlagFit.none:
        return BoxFit.none;
    }
  }
}

/// The shape of the flag widget.
enum WorldFlagShape {
  /// Standard rectangular flag
  rectangular,

  /// Flag with rounded corners
  rounded,

  /// Circular flag shape
  circular,
}

/// How the flag should be fitted within its bounds.
enum WorldFlagFit {
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
