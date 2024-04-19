import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
 @override
 _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
 final List<Message> messages = [
   Message(
     name: 'Alfredo Calzoni',
     avatar: 'assets/images/avatar1.jpg',
     text: 'What about that new jacket if I...',
     time: '09:18',
   ),
   Message(
     name: 'Clara Hazel',
     avatar: 'assets/images/avatar2.jpg',
     text: 'I know right 😊',
     time: '12:44',
   ),
   Message(
     name: 'Brandon Aminoff',
     avatar: 'assets/images/avatar3.jpg',
     text: 'I\'ve already registered, can\'t wait...',
     time: '08:06',
   ),
   Message(
     name: 'Amina Mina',
     avatar: 'assets/images/avatar4.jpg',
     text: 'It will have two lines of heading ...',
     time: '09:32',
   ),
   Message(
     name: 'Savanna Hall',
     avatar: 'assets/images/avatar5.jpg',
     text: 'It will have two lines of heading ...',
     time: '06:21',
   ),
   Message(
     name: 'Sara Grif',
     avatar: 'assets/images/avatar6.jpg',
     text: '',
     time: '05:01',
   ),
 ];

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Messages'),
     ),
     body: ListView.builder(
       itemCount: messages.length,
       itemBuilder: (context, index) {
         return MessageTile(
           message: messages[index],
         );
       },
     ),
   );
 }
}

class MessageTile extends StatelessWidget {
 final Message message;

 MessageTile({required this.message});

 @override
 Widget build(BuildContext context) {
   return ListTile(
     leading: CircleAvatar(
       backgroundImage: AssetImage(message.avatar),
     ),
     title: Text(message.name),
     subtitle: Text(message.text),
     trailing: Text(message.time),
   );
 }
}

class Message {
 final String name;
 final String avatar;
 final String text;
 final String time;

 Message({
   required this.name,
   required this.avatar,
   required this.text,
   required this.time,
 });
}