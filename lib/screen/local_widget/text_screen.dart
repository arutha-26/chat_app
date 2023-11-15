import 'package:flutter/material.dart';
import 'package:chat_app/screen/local_dio/chat_dto.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key, required this.myName, required this.list, required this.client}) : super(key: key);
  final String myName;
  final List<ChatDto> list;
  final SupabaseClient client;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        reverse: true,
        itemBuilder: (context, index) => _oneItem(list[index]));
  }

  Widget _oneItem(ChatDto dto) {
    var me = myName == dto.name;
    return Align(
      alignment: me ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: me ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: me ? Colors.green : Colors.blue,
            ),
            child: Text(
              '${dto.text}',
              style: TextStyle(color: Colors.grey.shade200, fontSize: 24,),
            ),
          ),
          SizedBox(height: 50), // Add some space between the text and the size box
        ],
      ),
    );

  }
}
