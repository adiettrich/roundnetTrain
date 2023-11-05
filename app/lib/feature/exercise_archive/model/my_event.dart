import 'my_event_item.dart';

class MyEvent {
  final String name;
  final String description;
  final String location;
  List<MyEventItem> items = [];

  MyEvent(this.items,
      {required this.name, required this.description, required this.location});
}
