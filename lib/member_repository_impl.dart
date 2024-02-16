import 'package:oop_dart/member.dart';
import 'package:oop_dart/member_repository.dart';

class MemoryMemberRepositoryImpl implements MemberRepository {
  // map {} list []
  Map<num?, Member> memberStore = {};

  // 변수, 조건문, 반복문, 함수등을 통해 기능 구현 하기
  @override
  Member? findById(num memberId) {
    // map 구조에 데이터 찾는 문법
    Member? findMember = memberStore[memberId];
    return findMember;
  }

  @override
  void save(Member member) {
    memberStore[member.id] = member;
    print('회원가입 완료');
  }
}
