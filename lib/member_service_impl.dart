import 'package:oop_dart/member.dart';
import 'package:oop_dart/member_repository.dart';
import 'package:oop_dart/member_repository_impl.dart';
import 'package:oop_dart/member_service.dart';

class MemberServiceImpl implements MemberService {
  // DIP
  // 상위 모듈은 하위 모듈에 의존해서는 안돼
  // 즉 상위 모듈과 하위 모듈은 추상화에 의존 해야 한다.
  MemberRepository memberRepository;
  //MemoryMemberRepositoryImpl memoryMemberRepositoryImpl;

  // 생성자 주입 (DI)
  MemberServiceImpl(this.memberRepository); // 단일 라인 생성자  alt+insert

  @override
  Member? selectMember(num memberId) {
    // 인증,유효성,방어적 코드 등 추가 가능
    return memberRepository.findById(memberId);
  }

  @override
  void signUp(Member member) {
    memberRepository.save(member);
  }
}
