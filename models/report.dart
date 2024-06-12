class Report {
  String id;
  String userId;
  String bicycleId;
  DateTime date;
  String description;

  Report({
    required this.id,
    required this.userId,
    required this.bicycleId,
    required this.date,
    required this.description,
  });

  @override
  String toString() {
    return 'Report{id: $id, userId: $userId, bicycleId: $bicycleId, date: $date, description: $description}';
  }
}
