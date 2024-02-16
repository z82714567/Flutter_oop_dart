import 'package:oop_dart/member.dart';

abstract class MemberRepository {
  void save(Member member);
  Member? findById(num memberId); // ? --> 멤버가 없을 수도 있으니까
  // dart 자동 형변환 지원 x -->
  // int, double <-- num 부모 타입
}
