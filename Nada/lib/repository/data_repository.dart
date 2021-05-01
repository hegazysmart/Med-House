import '../model/data.dart';
import '../services/data_service.dart';

class DataRepository {
  DataService _dataService = DataService();

  Future<List<Data>> fetchData() {
    return _dataService.fetchData();
  }
}
