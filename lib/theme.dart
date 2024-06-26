import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff005d26),
      surfaceTint: Color(0xff006e2e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff278542),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff456648),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc8efc8),
      onSecondaryContainer: Color(0xff305134),
      tertiary: Color(0xff00538a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1179c2),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff6fbf2),
      onBackground: Color(0xff181d17),
      surface: Color(0xfff6fbf2),
      onSurface: Color(0xff181d17),
      surfaceVariant: Color(0xffdae6d7),
      onSurfaceVariant: Color(0xff3f493f),
      outline: Color(0xff6f7a6e),
      outlineVariant: Color(0xffbecabb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322c),
      inverseOnSurface: Color(0xffedf2e9),
      inversePrimary: Color(0xff7eda8d),
      primaryFixed: Color(0xff9af7a7),
      onPrimaryFixed: Color(0xff002109),
      primaryFixedDim: Color(0xff7eda8d),
      onPrimaryFixedVariant: Color(0xff005321),
      secondaryFixed: Color(0xffc6ecc6),
      onSecondaryFixed: Color(0xff012109),
      secondaryFixedDim: Color(0xffaad0ab),
      onSecondaryFixedVariant: Color(0xff2d4e32),
      tertiaryFixed: Color(0xffd0e4ff),
      onTertiaryFixed: Color(0xff001d35),
      tertiaryFixedDim: Color(0xff9ccaff),
      onTertiaryFixedVariant: Color(0xff00497a),
      surfaceDim: Color(0xffd7dcd3),
      surfaceBright: Color(0xfff6fbf2),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ec),
      surfaceContainer: Color(0xffeaefe6),
      surfaceContainerHigh: Color(0xffe5eae1),
      surfaceContainerHighest: Color(0xffdfe4db),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff004e1f),
      surfaceTint: Color(0xff006e2e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff278542),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff294a2e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff5a7d5d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff004574),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1179c2),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6fbf2),
      onBackground: Color(0xff181d17),
      surface: Color(0xfff6fbf2),
      onSurface: Color(0xff181d17),
      surfaceVariant: Color(0xffdae6d7),
      onSurfaceVariant: Color(0xff3b453b),
      outline: Color(0xff576256),
      outlineVariant: Color(0xff737e71),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322c),
      inverseOnSurface: Color(0xffedf2e9),
      inversePrimary: Color(0xff7eda8d),
      primaryFixed: Color(0xff278542),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff006b2d),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff5a7d5d),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff426446),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1079c2),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff005f9d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dcd3),
      surfaceBright: Color(0xfff6fbf2),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ec),
      surfaceContainer: Color(0xffeaefe6),
      surfaceContainerHigh: Color(0xffe5eae1),
      surfaceContainerHighest: Color(0xffdfe4db),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff00290d),
      surfaceTint: Color(0xff006e2e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004e1f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff072810),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff294a2e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002440),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff004574),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6fbf2),
      onBackground: Color(0xff181d17),
      surface: Color(0xfff6fbf2),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdae6d7),
      onSurfaceVariant: Color(0xff1d261d),
      outline: Color(0xff3b453b),
      outlineVariant: Color(0xff3b453b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322c),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffadffb6),
      primaryFixed: Color(0xff004e1f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003512),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff294a2e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff133319),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff004574),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff002f50),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dcd3),
      surfaceBright: Color(0xfff6fbf2),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ec),
      surfaceContainer: Color(0xffeaefe6),
      surfaceContainerHigh: Color(0xffe5eae1),
      surfaceContainerHighest: Color(0xffdfe4db),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff7eda8d),
      surfaceTint: Color(0xff7eda8d),
      onPrimary: Color(0xff003915),
      primaryContainer: Color(0xff278542),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffaad0ab),
      onSecondary: Color(0xff16371d),
      secondaryContainer: Color(0xff26462b),
      onSecondaryContainer: Color(0xffb7deb8),
      tertiary: Color(0xff9ccaff),
      onTertiary: Color(0xff003256),
      tertiaryContainer: Color(0xff1179c2),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff101510),
      onBackground: Color(0xffdfe4db),
      surface: Color(0xff101510),
      onSurface: Color(0xffdfe4db),
      surfaceVariant: Color(0xff3f493f),
      onSurfaceVariant: Color(0xffbecabb),
      outline: Color(0xff899487),
      outlineVariant: Color(0xff3f493f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4db),
      inverseOnSurface: Color(0xff2c322c),
      inversePrimary: Color(0xff006e2e),
      primaryFixed: Color(0xff9af7a7),
      onPrimaryFixed: Color(0xff002109),
      primaryFixedDim: Color(0xff7eda8d),
      onPrimaryFixedVariant: Color(0xff005321),
      secondaryFixed: Color(0xffc6ecc6),
      onSecondaryFixed: Color(0xff012109),
      secondaryFixedDim: Color(0xffaad0ab),
      onSecondaryFixedVariant: Color(0xff2d4e32),
      tertiaryFixed: Color(0xffd0e4ff),
      onTertiaryFixed: Color(0xff001d35),
      tertiaryFixedDim: Color(0xff9ccaff),
      onTertiaryFixedVariant: Color(0xff00497a),
      surfaceDim: Color(0xff101510),
      surfaceBright: Color(0xff353b34),
      surfaceContainerLowest: Color(0xff0a0f0a),
      surfaceContainerLow: Color(0xff181d17),
      surfaceContainer: Color(0xff1c211b),
      surfaceContainerHigh: Color(0xff262b26),
      surfaceContainerHighest: Color(0xff313630),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff83df91),
      surfaceTint: Color(0xff7eda8d),
      onPrimary: Color(0xff001b06),
      primaryContainer: Color(0xff48a25c),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffafd4af),
      onSecondary: Color(0xff001b06),
      secondaryContainer: Color(0xff769978),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffa4ceff),
      onTertiary: Color(0xff00172c),
      tertiaryContainer: Color(0xff4095e1),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101510),
      onBackground: Color(0xffdfe4db),
      surface: Color(0xff101510),
      onSurface: Color(0xfff7fcf3),
      surfaceVariant: Color(0xff3f493f),
      onSurfaceVariant: Color(0xffc3cec0),
      outline: Color(0xff9ba699),
      outlineVariant: Color(0xff7b8679),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4db),
      inverseOnSurface: Color(0xff262b26),
      inversePrimary: Color(0xff005422),
      primaryFixed: Color(0xff9af7a7),
      onPrimaryFixed: Color(0xff001504),
      primaryFixedDim: Color(0xff7eda8d),
      onPrimaryFixedVariant: Color(0xff004018),
      secondaryFixed: Color(0xffc6ecc6),
      onSecondaryFixed: Color(0xff001504),
      secondaryFixedDim: Color(0xffaad0ab),
      onSecondaryFixedVariant: Color(0xff1c3d22),
      tertiaryFixed: Color(0xffd0e4ff),
      onTertiaryFixed: Color(0xff001224),
      tertiaryFixedDim: Color(0xff9ccaff),
      onTertiaryFixedVariant: Color(0xff003860),
      surfaceDim: Color(0xff101510),
      surfaceBright: Color(0xff353b34),
      surfaceContainerLowest: Color(0xff0a0f0a),
      surfaceContainerLow: Color(0xff181d17),
      surfaceContainer: Color(0xff1c211b),
      surfaceContainerHigh: Color(0xff262b26),
      surfaceContainerHighest: Color(0xff313630),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff0ffec),
      surfaceTint: Color(0xff7eda8d),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff83df91),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff0ffec),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffafd4af),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffafaff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa4ceff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101510),
      onBackground: Color(0xffdfe4db),
      surface: Color(0xff101510),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff3f493f),
      onSurfaceVariant: Color(0xfff3feef),
      outline: Color(0xffc3cec0),
      outlineVariant: Color(0xffc3cec0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4db),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff003211),
      primaryFixed: Color(0xff9efcab),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff83df91),
      onPrimaryFixedVariant: Color(0xff001b06),
      secondaryFixed: Color(0xffcaf1ca),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffafd4af),
      onSecondaryFixedVariant: Color(0xff001b06),
      tertiaryFixed: Color(0xffd8e8ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa4ceff),
      onTertiaryFixedVariant: Color(0xff00172c),
      surfaceDim: Color(0xff101510),
      surfaceBright: Color(0xff353b34),
      surfaceContainerLowest: Color(0xff0a0f0a),
      surfaceContainerLow: Color(0xff181d17),
      surfaceContainer: Color(0xff1c211b),
      surfaceContainerHigh: Color(0xff262b26),
      surfaceContainerHighest: Color(0xff313630),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      // background: background,
      // onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      // surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
