import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Messages')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text('Message ${index + 1}'),
            subtitle: Text('This is a message preview...'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessageDetailPage(index: index)),
              );
            },
          );
        },
      ),
    );
  }
}

class MessageDetailPage extends StatelessWidget {
  final int index;
  
  MessageDetailPage({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Message ${index + 1}')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Message ${index + 1}', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('This is the detailed view of message ${index + 1}.'),
          ],
        ),
      ),
    );
  }
}
