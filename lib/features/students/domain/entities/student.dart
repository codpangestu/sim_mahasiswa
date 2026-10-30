class Student {
  final String nim;
  final String name;
  final String email;
  final String studyProgram;
  final int semester;
  final String? phone;

  const Student({
    required this.nim,
    required this.name,
    required this.email,
    required this.studyProgram,
    required this.semester,
    this.phone,
  });
}
