

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soooopr/screens/splachScreen/setstat.dart';

class OnboardingController extends Cubit<OnboardingStates> {
  var items = [
    Product(
        title: 'أهلا سوبر خير\n',
        img: 'assets/148.png',
        description: 'هدافنا تحقيق مجتمع متكامل تكافل اجتماعياً'),
    Product(
        title: 'تقديم الملابس الجديده \n',
        img: 'assets/147.png',
        description: 'هناك اكثر من  3 مليون  شخص محتاج كساء  '),
    Product(
        title: 'تقديم طعام \n',
        img: 'assets/193.png',
        description: 'هدافنا تحقيق اطعام اكثر من مليون أسرة '),
    Product(
        title: 'هدف المشاركة \n',
        img: 'assets/150.png',
        description: 'التعاون بين الكبير والصغير والغني والمحتاج لتحقيق مجتمع متكامل '),
  ];



  OnboardingController() : super(InitialState());
  static OnboardingController get(context)=>BlocProvider.of(context);
  int currentPage = 0;
  void changes(i){
    currentPage = i;
  }

}
class Product {
  final String title;
  final String img;
  final String description;

  Product({required this.title, required this.img, required this.description});


}