class PromotedRoomModel {
  final String? type, lodgeName;
  final String amount;
  List? amenities;
  PromotedRoomModel({
    this.amenities,
    required this.amount,
    this.lodgeName,
    this.type,
  });
}
