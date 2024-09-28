import 'package:flutter/material.dart';

class ChatBotPage extends StatefulWidget {
  @override
  _ChatBotPageState createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  final TextEditingController _controller = TextEditingController();
  List<String> messages = [];

  void sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add("You: ${_controller.text}");
        messages.add("Bot: ${getBotResponse(_controller.text)}");
        _controller.clear();
      });
    }
  }

  String getBotResponse(String input) {
    // Here you can integrate with an actual AI service or API.
    // For now, returning a simple static response.
    return "I'm here to help you with styling! What would you like to know?";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AI Stylist Chatbot'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: 'Type your message',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (value) => sendMessage(),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}