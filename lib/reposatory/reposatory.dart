
import 'package:medhouse/model/category_model.dart';
import 'package:medhouse/service/category_service.dart';

class DataRepository{
  DataService _dataService = DataService();

  Future<List<Data>> fetchData(){
    return _dataService.fetchData();
  }
}