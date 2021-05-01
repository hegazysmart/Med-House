import 'package:flutter/material.dart';
import './model/data.dart';
import './repository/data_repository.dart';

class DataProvider extends ChangeNotifier {
  List<Data> data;
  DataRepository _movieRepository = DataRepository();

  DataProvider() {
    getData();
  }
  void getData() {
    _movieRepository.fetchData().then((newdata) {
      data = newdata;
      notifyListeners();
    });
  }
}
