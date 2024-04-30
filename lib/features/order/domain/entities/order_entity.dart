class OrderEntity {
  String orderId;
  String carName;
  String locationName;
  bool orderStatus;
  OrderEntity({
    required this.orderId,
    required this.carName,
    required this.locationName,
    required this.orderStatus,
  });
}
