class Order {
  num memberId;
  String itemName;
  int itemPrice;
  int discountPrice;

  // alt insert 생성자 , required 추가
  Order(
      {required this.memberId,
      required this.itemName,
      required this.itemPrice,
      required this.discountPrice});

  // 기능
  int calculateDiscount() {
    // 상품가격이 할인 금액보다 작을 경우 --> 문제 발생
    return itemPrice - discountPrice;
  }

  //alt insert toString
  @override
  String toString() {
    return 'Order{memberId: $memberId, itemName: $itemName, itemPrice: $itemPrice, discountPrice: $discountPrice}';
  }
}
