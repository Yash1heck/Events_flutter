import 'package:flutter/material.dart';
import 'event_item.dart';

class EventList extends StatefulWidget {
  final updatelist;
  const EventList({Key? key, this.updatelist}) : super(key: key);

  @override
  State<EventList> createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  void deleteEvent(String? id) {
    setState(() {
      widget.updatelist.removeWhere((element) => element.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, bottom: 20),
        child: Column(
            children: widget.updatelist
                .map<Widget>((e) => Eventtile(
                      event: e,
                      deleteEvent: deleteEvent,
                    ))
                .toList()),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 22, 48, 216),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
