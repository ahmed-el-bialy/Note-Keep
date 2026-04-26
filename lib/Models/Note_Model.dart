import 'package:hive/hive.dart';

part 'Note_Model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveType(typeId: 0)
  final String title;
  @HiveType(typeId: 1)
  final String content;
  @HiveType(typeId: 2)
  final String createdDate;
  @HiveType(typeId: 3)
  final String lastEditedDate;
  @HiveType(typeId: 4)
  final int color;

  NoteModel({
    required this.title,
    required this.content,
    required this.createdDate,
    required this.lastEditedDate,
    required this.color,
  });
}
