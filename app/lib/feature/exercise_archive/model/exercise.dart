import 'package:app/feature/exercise_archive/model/my_event_item.dart';
import 'package:app/feature/exercise_archive/model/skill_level.dart';

class Exercise extends MyEventItem {
  final String longDescription;

  final SkillLevel skillLevel;

  final String videoUrl;

  final int playerCount;

  Exercise(
      {required this.longDescription,
      required super.name,
      required super.description,
      required this.skillLevel,
      required super.tags,
      required this.videoUrl,
      required this.playerCount,
      required super.duration});
}
