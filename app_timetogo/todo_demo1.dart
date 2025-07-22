class Todo {
  late int? id;
  late String title;
  late String description; 
  late bool play;
  late DateTime date;


  Todo({
    this.id,
    required this.title,
    required this.description,
    required this.play,
    required this.date,
  });

}
