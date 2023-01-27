/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsImgGen {
  const $AssetsImgGen();

  $AssetsImgHomeGen get home => const $AssetsImgHomeGen();
  $AssetsImgMonetizationGen get monetization =>
      const $AssetsImgMonetizationGen();
  $AssetsImgOnboardingGen get onboarding => const $AssetsImgOnboardingGen();
  $AssetsImgSupportGen get support => const $AssetsImgSupportGen();
  $AssetsImgWalletGen get wallet => const $AssetsImgWalletGen();
}

class $AssetsImgHomeGen {
  const $AssetsImgHomeGen();

  /// File path: assets/img/home/board_icon.png
  AssetGenImage get boardIcon =>
      const AssetGenImage('assets/img/home/board_icon.png');

  /// File path: assets/img/home/card-img.png
  AssetGenImage get cardImg =>
      const AssetGenImage('assets/img/home/card-img.png');

  /// File path: assets/img/home/home_icon.png
  AssetGenImage get homeIcon =>
      const AssetGenImage('assets/img/home/home_icon.png');

  /// File path: assets/img/home/img.png
  AssetGenImage get img => const AssetGenImage('assets/img/home/img.png');

  /// File path: assets/img/home/img_1.png
  AssetGenImage get img1 => const AssetGenImage('assets/img/home/img_1.png');

  /// File path: assets/img/home/img_2.png
  AssetGenImage get img2 => const AssetGenImage('assets/img/home/img_2.png');

  /// File path: assets/img/home/img_3.png
  AssetGenImage get img3 => const AssetGenImage('assets/img/home/img_3.png');

  /// File path: assets/img/home/img_4.png
  AssetGenImage get img4 => const AssetGenImage('assets/img/home/img_4.png');

  /// File path: assets/img/home/img_5.png
  AssetGenImage get img5 => const AssetGenImage('assets/img/home/img_5.png');

  /// File path: assets/img/home/service_icon.png
  AssetGenImage get serviceIcon =>
      const AssetGenImage('assets/img/home/service_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        boardIcon,
        cardImg,
        homeIcon,
        img,
        img1,
        img2,
        img3,
        img4,
        img5,
        serviceIcon
      ];
}

class $AssetsImgMonetizationGen {
  const $AssetsImgMonetizationGen();

  /// File path: assets/img/monetization/img.png
  AssetGenImage get img =>
      const AssetGenImage('assets/img/monetization/img.png');

  /// List of all assets
  List<AssetGenImage> get values => [img];
}

class $AssetsImgOnboardingGen {
  const $AssetsImgOnboardingGen();

  /// File path: assets/img/onboarding/onboarding1.png
  AssetGenImage get onboarding1 =>
      const AssetGenImage('assets/img/onboarding/onboarding1.png');

  /// File path: assets/img/onboarding/onboarding2.png
  AssetGenImage get onboarding2 =>
      const AssetGenImage('assets/img/onboarding/onboarding2.png');

  /// List of all assets
  List<AssetGenImage> get values => [onboarding1, onboarding2];
}

class $AssetsImgSupportGen {
  const $AssetsImgSupportGen();

  /// File path: assets/img/support/icon.png
  AssetGenImage get icon => const AssetGenImage('assets/img/support/icon.png');

  /// File path: assets/img/support/img.png
  AssetGenImage get img => const AssetGenImage('assets/img/support/img.png');

  /// File path: assets/img/support/img_1.png
  AssetGenImage get img1 => const AssetGenImage('assets/img/support/img_1.png');

  /// File path: assets/img/support/img_2.png
  AssetGenImage get img2 => const AssetGenImage('assets/img/support/img_2.png');

  /// File path: assets/img/support/img_3.png
  AssetGenImage get img3 => const AssetGenImage('assets/img/support/img_3.png');

  /// File path: assets/img/support/img_4.png
  AssetGenImage get img4 => const AssetGenImage('assets/img/support/img_4.png');

  /// File path: assets/img/support/img_5.png
  AssetGenImage get img5 => const AssetGenImage('assets/img/support/img_5.png');

  /// File path: assets/img/support/img_6.png
  AssetGenImage get img6 => const AssetGenImage('assets/img/support/img_6.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [icon, img, img1, img2, img3, img4, img5, img6];
}

class $AssetsImgWalletGen {
  const $AssetsImgWalletGen();

  /// File path: assets/img/wallet/icon.png
  AssetGenImage get icon => const AssetGenImage('assets/img/wallet/icon.png');

  /// File path: assets/img/wallet/img.png
  AssetGenImage get img => const AssetGenImage('assets/img/wallet/img.png');

  /// File path: assets/img/wallet/img1.png
  AssetGenImage get img1 => const AssetGenImage('assets/img/wallet/img1.png');

  /// List of all assets
  List<AssetGenImage> get values => [icon, img, img1];
}

class Assets {
  Assets._();

  static const $AssetsImgGen img = $AssetsImgGen();
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
