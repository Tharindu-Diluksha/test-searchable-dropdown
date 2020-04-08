import 'package:test_searchable_dropdown/models/program.dart';

class ProgramService {
  final controller = "programs";

  Future<List<Program>> getAllBasicProgramDetails() async {
    var result = List<Program>();
    result.add(Program(id: 1, name: "p1"));
    result.add(Program(id: 2, name: "p2"));
    result.add(Program(id: 3, name: "p3"));
    result.add(Program(id: 4, name: "p4"));
    result.add(Program(id: 5, name: "p5"));
    return result;
  }
}
