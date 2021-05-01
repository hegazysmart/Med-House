import 'package:flutter/material.dart';
import 'package:medhouse/model/category_model.dart';
import 'package:medhouse/reposatory/reposatory.dart';


class DataProvider extends ChangeNotifier{
List<Data> data;
  DataRepository _movieRepository = DataRepository();

  DataProvider(){
    getData();
  }
  void getData() {
    _movieRepository.fetchData().then(
            (newdata){
          data = newdata;
          notifyListeners();
        }
    );
  }
}