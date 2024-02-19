// 코드의 시작점
import 'package:oop_dart/discount_policy.dart';
import 'package:oop_dart/fix_discount_policy_impl.dart';
import 'package:oop_dart/grade.dart';
import 'package:oop_dart/member.dart';
import 'package:oop_dart/member_repository.dart';
import 'package:oop_dart/member_repository_impl.dart';
import 'package:oop_dart/member_service.dart';
import 'package:oop_dart/member_service_impl.dart';
import 'package:oop_dart/order.dart';
import 'package:oop_dart/orderService.dart';
import 'package:oop_dart/orderService_impl.dart';
import 'package:oop_dart/percent_discount_policy_impl.dart';

void main() {
  // 코드 테스트
  MemberRepository memberRepository = MemoryMemberRepositoryImpl();
  MemberService memberService = MemberServiceImpl(memberRepository);

  Member member1 = Member(name: '홍길동', grade: Grade.VIP, id: 1);
  Member member2 = Member(name: '이순신', grade: Grade.VIP, id: 2);
  memberService.signUp(member1);

  // 회원 찾기
  Member? findMember = memberService.selectMember(member1.id);

  print('--------------------------------------------------');
  // 할인
  // 1. 고정 할인 , 2. 퍼센트 할인
  DiscountPolicy discountPolicy =
      PercentDiscountPolicy(); // FixDiscountPolicy();
  OrderService orderService =
      OrderServiceImpl(memberRepository, discountPolicy);

  Order createdOrder = orderService.createOrder(findMember!.id, "맥북",
      2000000); //null강제연산자 안쓰면 NULLPOINT에러남 -- findMember! 컴파일 시점에 멤버가 없을수가 있으니까
  print(createdOrder.toString());
}
