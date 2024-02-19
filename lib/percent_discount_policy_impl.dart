import 'package:oop_dart/discount_policy.dart';
import 'package:oop_dart/grade.dart';
import 'package:oop_dart/member.dart';

// 정률제
class PercentDiscountPolicy implements DiscountPolicy {
  @override
  int discount(Member member, int price) {
    double discountPercent = 10; // 10% 할인
    // 만약 등급이 VIP인 경우 discountPercent 리턴함
    if (member.grade == Grade.VIP) {
      // dart에서는 자동 형변환 없음 --> 명시적 형변환 있을 뿐
      // (상품금액 * (10% / 100)) --> double.toInt() : 명시적 형변환
      return (price * (discountPercent / 100)).toInt(); // 소수점 이하 제거
    }
    return 0;
  }
}
