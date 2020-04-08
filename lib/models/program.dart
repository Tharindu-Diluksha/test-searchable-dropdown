class Program {
  int id;

  String name;

  Program({this.id, this.name});

  factory Program.fromJson(Map<String, dynamic> json) {
    var program = Program(id: json['id'], name: json['name']);
    return program;
  }
}
