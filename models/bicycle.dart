class Bicycle {
  String id;
  String brand;
  String model;
  String color;
  String serialNumber;

  Bicycle({
    required this.id,
    required this.brand,
    required this.model,
    required this.color,
    required this.serialNumber,
  });

  @override
  String toString() {
    return 'Bicycle{id: $id, brand: $brand, model: $model, color: $color, serialNumber: $serialNumber}';
  }
}
