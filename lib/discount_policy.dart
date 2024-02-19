// 역할
import 'package:oop_dart/member.dart';

abstract class DiscountPolicy {
  // 할인 처리
  int discount(Member member, int price);
}
