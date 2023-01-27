class OnboardingModel {
  final String title;
  final String description;

  OnboardingModel({required this.title, required this.description});
}

class OnboardingData {
  static List<OnboardingModel> get data => [
        OnboardingModel(
            title: 'Start \nGenerating income',
            description:
                'Activate the automatic option\nand enjoy automatic income generation'),
        OnboardingModel(
            title: 'Automatic\nDaily income',
            description:
                'Daily income generation without\ndaily activity of 80 dollars with\nRichroom software')
      ];
}
