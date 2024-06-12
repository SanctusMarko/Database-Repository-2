import 'data/database_repository.dart';
import 'data/mock_database.dart';
import 'models/user.dart';
import 'models/bicycle.dart';
import 'models/report.dart';

void main() {
  // Erstellen einer Instanz der Mock-Datenbank
  DatabaseRepository mockDatabase = MockDatabase();

  // Benutzer zur Datenbank hinzufügen
  User user1 = User(
    id: '01',
    email: 'fortalezaosijek@gmail.com',
    password: 'password123',
    username: 'user1',
  );
  User user2 = User(
    id: '02',
    email: 'ferhat@ferhatovic.com',
    password: 'password123',
    username: 'user2',
  );

  mockDatabase.addUser(user1.id, user1);
  mockDatabase.addUser(user2.id, user2);

  // Fahrräder zur Datenbank hinzufügen
  Bicycle bike1 = Bicycle(
    id: '01',
    brand: 'Trek',
    model: 'Marlin 7',
    color: 'Red',
    serialNumber: 'SG123456',
  );
  Bicycle bike2 = Bicycle(
    id: '02',
    brand: 'Specialized',
    model: 'Stumpjumper',
    color: 'Black',
    serialNumber: 'SG654321',
  );

  mockDatabase.addBicycle(bike1.id, bike1);
  mockDatabase.addBicycle(bike2.id, bike2);

  // Berichte zur Datenbank hinzufügen
  Report report1 = Report(
    id: '01',
    userId: '01',
    bicycleId: '01',
    date: DateTime.now(),
    description:
        'Das Fahrrad wurde vor dem Gebäude in der Grünebergstraße 85, Hamburg 22763, gestohlen.',
  );
  Report report2 = Report(
    id: '02',
    userId: '02',
    bicycleId: '02',
    date: DateTime.now(),
    description: 'Das Fahrrad wurde in der Nähe des Parks gestohlen.',
  );

  mockDatabase.addReport(report1.id, report1);
  mockDatabase.addReport(report2.id, report2);

  // Alle Benutzernamen ausgeben
  List<String> userNames = mockDatabase.getAllUserNames();
  print('Benutzernamen: $userNames');

  // Alle Fahrradmodelle ausgeben
  List<String> bicycleModels = mockDatabase.getAllBicycleModels();
  print('Fahrradmodelle: $bicycleModels');

  // Alle Berichtsbeschreibungen ausgeben
  List<String> reportDescriptions = mockDatabase.getAllReportDescriptions();
  print('Berichtsbeschreibungen: $reportDescriptions');

  // Benutzer entfernen
  mockDatabase.removeUser('01');
  print('Benutzer mit ID 01 entfernt.');

  // Erneut alle Benutzernamen ausgeben nach dem Löschen
  userNames = mockDatabase.getAllUserNames();
  print('Benutzernamen nach dem Löschen: $userNames');
}
