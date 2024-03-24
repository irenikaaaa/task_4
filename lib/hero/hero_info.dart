class HeroInfo {
  final String title;
  final String subtitle;
  final String image;

  HeroInfo({required this.title, required this.subtitle, required this.image});
}

class HeroItems {
  List<HeroInfo> items = [
    HeroInfo(
      title: 'First step to become rich',
      subtitle: 'my story about ...',
      image: 'assets/images/img1.png',
    ),
    HeroInfo(
      title: 'Money',
      subtitle: 'my story about ...',
      image: 'assets/images/img2.png',
    ),
    HeroInfo(
      title: 'Don\'t give app',
      subtitle: 'my story about ...',
      image: 'assets/images/img3.png',
    ),
    HeroInfo(
      title: 'Glasses',
      subtitle: 'my story about ...',
      image: 'assets/images/img4.png',
    ),
    HeroInfo(
      title: 'Family',
      subtitle: 'my story about ...',
      image: 'assets/images/img5.png',
    ),
    HeroInfo(
      title: 'Marital Status',
      subtitle: 'my story about ...',
      image: 'assets/images/img6.png',
    ),
    HeroInfo(
      title: 'How I start the business',
      subtitle: 'my story about ...',
      image: 'assets/images/img8.png',
    ),
  ];
}
