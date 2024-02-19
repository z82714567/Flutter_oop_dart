import 'package:oop_dart/discount_policy.dart';
import 'package:oop_dart/grade.dart';
import 'package:oop_dart/member.dart';

// 정액제
class FixDiscountPolicy implements DiscountPolicy {
  // 멤버 변수
  int discountFixAmount = 1500;

  @override
  int discount(Member member, int price) {
    // 만약 등급이 VIP인 경우 discountFixAmount 리턴함
    if (member.grade == Grade.VIP) {
      return discountFixAmount;
    }
    return 0;
  }
}
