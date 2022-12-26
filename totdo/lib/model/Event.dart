class Event {
  String? id;
  String? eventName;
  Event({
    required this.id,
    required this.eventName,
  });
  static List<Event> eventList() {
    return [
      Event(id: '0003', eventName: 'Event1'),
      Event(id: '0005', eventName: 'Event2'),
    ];
  }
}
