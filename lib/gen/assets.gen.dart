/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImgGen {
  const $AssetsImgGen();

  /// File path: assets/img/cam_skyline.png
  AssetGenImage get camSkyline =>
      const AssetGenImage('assets/img/cam_skyline.png');

  /// File path: assets/img/logo_bg.png
  AssetGenImage get logoBg => const AssetGenImage('assets/img/logo_bg.png');

  /// File path: assets/img/slider1.png
  AssetGenImage get slider1 => const AssetGenImage('assets/img/slider1.png');

  /// File path: assets/img/slider2.png
  AssetGenImage get slider2 => const AssetGenImage('assets/img/slider2.png');

  /// File path: assets/img/slider3.png
  AssetGenImage get slider3 => const AssetGenImage('assets/img/slider3.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [camSkyline, logoBg, slider1, slider2, slider3];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/arrow_back.svg
  SvgGenImage get arrowBack => const SvgGenImage('assets/svg/arrow_back.svg');

  $AssetsSvgBottomNavigationBarGen get bottomNavigationBar =>
      const $AssetsSvgBottomNavigationBarGen();

  /// File path: assets/svg/google_icon.svg
  SvgGenImage get googleIcon => const SvgGenImage('assets/svg/google_icon.svg');

  $AssetsSvgHomeGen get home => const $AssetsSvgHomeGen();

  /// File path: assets/svg/nike_logo.svg
  SvgGenImage get nikeLogo => const SvgGenImage('assets/svg/nike_logo.svg');

  /// File path: assets/svg/remove_eye.svg
  SvgGenImage get removeEye => const SvgGenImage('assets/svg/remove_eye.svg');

  /// List of all assets
  List<SvgGenImage> get values => [arrowBack, googleIcon, nikeLogo, removeEye];
}

class $AssetsSvgBottomNavigationBarGen {
  const $AssetsSvgBottomNavigationBarGen();

  /// File path: assets/svg/bottom_navigation_bar/bell-actice.svg
  SvgGenImage get bellActice =>
      const SvgGenImage('assets/svg/bottom_navigation_bar/bell-actice.svg');

  /// File path: assets/svg/bottom_navigation_bar/bell.svg
  SvgGenImage get bell =>
      const SvgGenImage('assets/svg/bottom_navigation_bar/bell.svg');

  /// File path: assets/svg/bottom_navigation_bar/favorite-active.svg
  SvgGenImage get favoriteActive =>
      const SvgGenImage('assets/svg/bottom_navigation_bar/favorite-active.svg');

  /// File path: assets/svg/bottom_navigation_bar/favorite.svg
  SvgGenImage get favorite =>
      const SvgGenImage('assets/svg/bottom_navigation_bar/favorite.svg');

  /// File path: assets/svg/bottom_navigation_bar/home-active.svg
  SvgGenImage get homeActive =>
      const SvgGenImage('assets/svg/bottom_navigation_bar/home-active.svg');

  /// File path: assets/svg/bottom_navigation_bar/home.svg
  SvgGenImage get home =>
      const SvgGenImage('assets/svg/bottom_navigation_bar/home.svg');

  /// File path: assets/svg/bottom_navigation_bar/profile-active.svg
  SvgGenImage get profileActive =>
      const SvgGenImage('assets/svg/bottom_navigation_bar/profile-active.svg');

  /// File path: assets/svg/bottom_navigation_bar/profile.svg
  SvgGenImage get profile =>
      const SvgGenImage('assets/svg/bottom_navigation_bar/profile.svg');

  /// File path: assets/svg/bottom_navigation_bar/shop.svg
  SvgGenImage get shop =>
      const SvgGenImage('assets/svg/bottom_navigation_bar/shop.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        bellActice,
        bell,
        favoriteActive,
        favorite,
        homeActive,
        home,
        profileActive,
        profile,
        shop
      ];
}

class $AssetsSvgHomeGen {
  const $AssetsSvgHomeGen();

  /// File path: assets/svg/home/bage.svg
  SvgGenImage get bage => const SvgGenImage('assets/svg/home/bage.svg');

  /// File path: assets/svg/home/filter.svg
  SvgGenImage get filter => const SvgGenImage('assets/svg/home/filter.svg');

  /// File path: assets/svg/home/isLove.svg
  SvgGenImage get isLove => const SvgGenImage('assets/svg/home/isLove.svg');

  /// File path: assets/svg/home/menu.svg
  SvgGenImage get menu => const SvgGenImage('assets/svg/home/menu.svg');

  /// File path: assets/svg/home/new-arrival.svg
  SvgGenImage get newArrival =>
      const SvgGenImage('assets/svg/home/new-arrival.svg');

  /// File path: assets/svg/home/search.svg
  SvgGenImage get search => const SvgGenImage('assets/svg/home/search.svg');

  /// File path: assets/svg/home/star.svg
  SvgGenImage get star => const SvgGenImage('assets/svg/home/star.svg');

  /// File path: assets/svg/home/unLove.svg
  SvgGenImage get unLove => const SvgGenImage('assets/svg/home/unLove.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [bage, filter, isLove, menu, newArrival, search, star, unLove];
}

class Assets {
  Assets._();

  static const $AssetsImgGen img = $AssetsImgGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
