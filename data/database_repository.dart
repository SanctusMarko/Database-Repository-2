import '../models/user.dart';
import '../models/bicycle.dart';
import '../models/report.dart';

abstract class DatabaseRepository {
  // Erstellen
  void addUser(String id, User newUser);
  void addBicycle(String id, Bicycle newBicycle);
  void addReport(String id, Report newReport);

  // Lesen
  List<String> getAllUserNames();
  List<String> getAllBicycleModels();
  List<String> getAllReportDescriptions();

  // Löschen
  void removeUser(String id);
  void removeBicycle(String id);
  void removeReport(String id);
}
