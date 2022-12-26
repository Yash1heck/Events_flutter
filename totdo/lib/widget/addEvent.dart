// ignore_for_file: prefer_const_constructor
import 'package:flutter/material.dart';
import 'events.dart';
import '../model/Event.dart';

class AddtodoDialog extends StatefulWidget {
  const AddtodoDialog({Key? key}) : super(key: key);

  @override
  State<AddtodoDialog> createState() => _AddtodoDialogState();
}

class _AddtodoDialogState extends State<AddtodoDialog> {
  final eventslisting = Event.eventList();
  final eventnamecontroller = TextEditingController();
  String? get _errorText {
    final text = eventnamecontroller.value.text;

    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    

    return null;
  }

  void _addevent(String eventoadd, BuildContext context) {
    if (eventoadd == '') {
    } else {
      setState(() {
        eventslisting.add(Event(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            eventName: eventoadd));
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => EventList(updatelist: eventslisting)),
        );
      });
    }

    eventnamecontroller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            child: TextField(
              controller: eventnamecontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your event...',
                  labelText: 'Event',
                  errorText: _errorText),
                  onChanged: (_) => setState(() {}),

            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
              onPressed: eventnamecontroller.text.isNotEmpty
                  ? () {
                      _addevent(eventnamecontroller.text, context);
                    }
                  : null,
                  
              child: const Text("Add Event"))
        ],
      ),
    );
  }
}
