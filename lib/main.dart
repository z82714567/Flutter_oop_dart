// 코드의 시작점
import 'package:oop_dart/grade.dart';
import 'package:oop_dart/member.dart';
import 'package:oop_dart/member_repository.dart';
import 'package:oop_dart/member_repository_impl.dart';
import 'package:oop_dart/member_service.dart';
import 'package:oop_dart/member_service_impl.dart';

void main() {
  // 코드 테스트
  MemberRepository memberRepository = MemoryMemberRepositoryImpl();
  MemberService memberService = MemberServiceImpl(memberRepository);

  Member member1 = Member(name: '홍길동', grade: Grade.BASIC, id: 1);
  Member member2 = Member(name: '이순신', grade: Grade.VIP, id: 2);

  memberService.signUp(member1);
  Member? findMember = memberService.selectMember(member1.id);
  print(findMember.toString());
}
