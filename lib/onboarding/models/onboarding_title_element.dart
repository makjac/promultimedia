import 'package:equatable/equatable.dart';

/// The `OnboardingTitleElement` class represents an element of the title
/// in the onboarding process.
class OnboardingTitleElement extends Equatable {
  /// Creates an `OnboardingTitleElement` with the given text and bold flag.
  ///
  /// The [text] parameter specifies the text to be displayed.
  /// The [isBold] parameter specifies whether the text should be bolded.
  const OnboardingTitleElement({
    required this.text,
    this.isBold = false,
  });

  /// The text to be displayed for this title element.
  final String text;

  /// A flag indicating whether the text should be displayed in bold.
  final bool isBold;

  @override
  List<Object> get props => [text, isBold];
}
