import 'package:cars/features/order/domain/entities/order_entity.dart';

// class OrderModel extends OrderEntity {
//   OrderModel(
//       {required super.orderId,
//       required super.carName,
//       required super.locationName,
//       required super.orderStatus});

//   factory OrderModel.fromJson(Map<String, dynamic> map) {
//     return OrderModel(
//         orderId: map['order_id'] ?? '',
//         carName: map['car_name'] ?? '',
//         locationName: map['location_name'] ?? '',
//         orderStatus: map['order_status'] ?? '');
//   }

//   OrderModel copyWith(
//     String? orderId,
//     String? carName,
//     String? locationName,
//     bool? orderStatus,
//   ) {
//     return OrderModel(
//         orderId: orderId ?? super.orderId,
//         carName: carName ?? super.carName,
//         locationName: locationName ?? super.locationName,
//         orderStatus: orderStatus ?? super.orderStatus);
//   }
// }

// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:flutter/foundation.dart';


// part 'order_model.freezed.dart'
// part 'order_model.g.dart'