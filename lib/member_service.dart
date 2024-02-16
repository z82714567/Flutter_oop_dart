import 'package:oop_dart/member.dart';

abstract class MemberService {
  // 회원가입
  void signUp(Member member);
  Member? selectMember(num memberId); // ? --> 다른 멤버일 수도 있으니까
}
