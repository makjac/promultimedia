/// Enum `ImageAsset` is used to store paths to image assets.
///
/// Each enum value represents an image asset, with `assetName` referring
/// to the specific file in the assets/images directory, and `extension`
/// indicating the file format.
enum ImageAsset {
  onboarding1('onboarding_1', 'png'),
  onboarding2('onboarding_2', 'png'),
  onboarding3('onboarding_3', 'png'),
  onboarding4('onboarding_4', 'png'),
  onboarding5('onboarding_5', 'png'),
  onboarding6('onboarding_6', 'png');

  /// Constructor for initializing the `ImageAsset`
  const ImageAsset(this.assetName, this.extension);

  /// The name of the file associated with this asset.
  final String assetName;

  /// The extension of the file associated with this asset.
  final String extension;

  /// Returns the full path to the asset file.
  String get assetPath => 'assets/images/$assetName.$extension';
}
