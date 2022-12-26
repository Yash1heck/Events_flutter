import 'package:flutter/material.dart';
import '../model/Event.dart';

class Eventtile extends StatelessWidget {
  final Event event;
  final deleteEvent;

  const Eventtile({Key? key, required this.event, required this.deleteEvent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text((event.eventName).toString()),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              deleteEvent(event.id);
            },
          )),
    );
  }
}
