import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class TabProvider with ChangeNotifier{
  int tab = 0;

  void changeTab(int index){
    tab = index;
    notifyListeners();
  }

}