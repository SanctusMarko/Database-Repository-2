import '../models/user.dart';
import '../models/bicycle.dart';
import '../models/report.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  Map<String, User> userData = {};
  Map<String, Bicycle> bicycleData = {};
  Map<String, Report> reportData = {};

  @override
  void addUser(String id, User newUser) {
    userData[id] = newUser;
  }

  @override
  void addBicycle(String id, Bicycle newBicycle) {
    bicycleData[id] = newBicycle;
  }

  @override
  void addReport(String id, Report newReport) {
    reportData[id] = newReport;
  }

  @override
  List<String> getAllUserNames() {
    return userData.values.map((user) => user.username).toList();
  }

  @override
  List<String> getAllBicycleModels() {
    return bicycleData.values.map((bicycle) => bicycle.model).toList();
  }

  @override
  List<String> getAllReportDescriptions() {
    return reportData.values.map((report) => report.description).toList();
  }

  @override
  void removeUser(String id) {
    userData.remove(id);
  }

  @override
  void removeBicycle(String id) {
    bicycleData.remove(id);
  }

  @override
  void removeReport(String id) {
    reportData.remove(id);
  }
}
