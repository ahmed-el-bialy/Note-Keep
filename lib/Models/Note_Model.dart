class NoteModel {
  final String title;
  final String content;
  final DateTime createdDate;
  final DateTime lastEditedDate;
  final int color;

  NoteModel({
    required this.title,
    required this.content,
    required this.createdDate,
    required this.lastEditedDate,
   required this.color
  });
}
