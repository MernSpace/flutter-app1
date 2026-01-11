import 'package:flutter/material.dart';
import 'package:untitled/Fragment/ChatFragment.dart';

void main(){
  return runApp(const myApp());
}

class myApp extends StatelessWidget{
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const ChatListPage(),
    );
  }
}

class ChatListPage extends StatelessWidget{
  const ChatListPage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Telegram",style: TextStyle(fontWeight:FontWeight.w600),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),
      body:ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i){
          return ChatListItem(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
              },
          );
        }
      ) ,
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.edit),),
    );
  }
}

class ChatListItem extends StatelessWidget {
  final VoidCallback onTap;

  const ChatListItem({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFFE0E0E0), width: 0.5),
          ),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: Colors.blue,
              child: const Text(
                "JD",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "John Doe",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Hey, how are you doing?",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "12:30 PM",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    "2",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}