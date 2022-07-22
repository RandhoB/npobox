class OnbordingContent {
  String image;
  String title;
  String discription;

  OnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<OnbordingContent> contents = [
  OnbordingContent(
      title: 'Let’s get closer',
      image: 'assets/images/onboarding1.png',
      discription: "One platform\nto order any\nbox service"),
  OnbordingContent(
      title: 'Let’s get closer',
      image: 'assets/images/onboarding2.png',
      discription: "Scan smoothly\nforward directly\npay easily!"),
  OnbordingContent(
      title: 'Let’s get closer',
      image: 'assets/images/onboarding3.png',
      discription: "24/7 Anytime\nyou need, no\nbarrier at all!"),
];
