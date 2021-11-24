import 'package:flutter/material.dart';

class TransactionProvider extends ChangeNotifier {

  Set<int> selectedTransaction = {};

  void toggle(int index){
    if(isSelected(index)){
      selectedTransaction.remove(index);
    }else{
      selectedTransaction.add(index);
    }
    notifyListeners();
  }

  void toggleAll(){
    if(selectedTransaction.isEmpty){
      for(int i = 0; i < 10 ;i++){
        selectedTransaction.add(i);
      }
    }else {
      selectedTransaction.clear();
    }
    notifyListeners();
  }

  bool isSelected(int index) {
    bool isSelect = false;
    if(index == null){
      isSelect = selectedTransaction.isNotEmpty;
    }else{
      isSelect = selectedTransaction.contains(index);
    }
    return isSelect;
  }

}