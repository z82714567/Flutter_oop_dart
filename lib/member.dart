import 'package:oop_dart/grade.dart';

class Member {
  num id;
  String name;
  Grade grade;

  Member({required this.name, required this.grade, required this.id});

  @override
  String toString() {
    return 'Member{id: $id, name: $name, grade: $grade}';
  }
}
