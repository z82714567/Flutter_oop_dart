import 'package:oop_dart/discount_policy.dart';
import 'package:oop_dart/member.dart';
import 'package:oop_dart/member_repository.dart';
import 'package:oop_dart/order.dart';
import 'package:oop_dart/orderService.dart';

class OrderServiceImpl implements OrderService {
  // DIP : 의존 역전 원칙
  MemberRepository memberRepository;
  DiscountPolicy discountPolicy;
  // DI : 생성자 의존 주입
  OrderServiceImpl(this.memberRepository, this.discountPolicy);

  @override
  Order createOrder(num memberId, String itemName, int itemPrice) {
    // 1. 회원 등급 조회
    Member? memberEntity = memberRepository.findById(memberId); // 회원 정보 조회

    // 2. 회원 등급에 맞는 할인 정책 반영
    int discountPrice = discountPolicy.discount(
        memberEntity!, itemPrice); // null 강제 연산자 memberEntity!

    // 3. 반환값인 Order 인스턴스를 생성함
    Order newOrder = Order(
        memberId: memberId,
        itemName: itemName,
        itemPrice: itemPrice,
        discountPrice: discountPrice);
    return newOrder;
  }
}
