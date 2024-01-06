

import '../screens/PortfolioScreen/Portfolio_view.dart';

import '../screens/donationSpeedScreen/fast_donaation/view.dart';
import '../screens/reportScreen/report_view.dart';
import '../screens/theVolunteerScreen/theVolunteer_view.dart';
import '../screens/home/Home_view.dart';


var tabs = [
  PortfolioView(),
  theVolunteerScreen(),
  FastDonationScreen(),
  ReportScreen(),
  giverScreen(),
];

class A_items {
  final String title;
  final String img;
  A_items({required this.title, required this.img});
}
class allperson_items {
  final String title;
  final String img;
  final String title1;
  final String subtitle;
  allperson_items({
    required this.title1,
    required this.title,
    required this.img,

    required this.subtitle,
  });
}


class Dashboard {
  var items = [
    A_items(
      img: 'assets/6.jpg',
      title: 'أخري',
    ),
    A_items(
      img: 'assets/7.jpg',
      title: 'طعام',
    ),
    A_items(
      img: 'assets/8.jpg',
      title: 'دواء',
    ),
    A_items(
      img: 'assets/9.jpg',
      title: 'ملابس',
    ),
    A_items(
      img: 'assets/10.jpg',
      title: 'تبرع سريع',
    ),
  ];

  var items2 = [
    allperson_items(
      title1:'مال',
      title: "غارم",
      img: 'assets/997.png',
      subtitle: 'أب اسرة وأربع أطفال وغارم بمال',
    ),
    allperson_items(
      title1:"دواء",
      title: 'فشل كلوي',
      img: 'assets/998.png',
      subtitle: 'حالتها ميؤس منها ويجب التبرع ليها لعمل غسيل كلوي',
    ),

  ];
  var items3 = [
    allperson_items(
      title: 'فرصة تطوع لجمع الملابس',
      img: 'assets/44.png',

      subtitle: ' .....محتاجين شاب يريد التطوع في حي الجامعه', title1: '',
    ),
    allperson_items(
      title: 'فرصة تطوع لجمع الادوية',
      img: 'assets/23.png',
      subtitle: '.....محتاجين طالب طب في اول جيهان', title1: '',
    ),

  ];



}






class Controller{
  bool isClicked = false;
  bool eslam = true ;
}
