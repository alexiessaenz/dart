import 'package:flutter/material.dart';
import 'package:si_no_app/presentation/_ChatView.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen ({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding:  const EdgeInsets.all(3.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/5556/5556468.png'),
          ),
        ),
        title: const Text('Juan Perez'),
        centerTitle: false,
      ),
      //body bubble messages
      body: const _ChatView(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Escribe un mensaje',
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send),
            ),
          ],
        ),
      )
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                children:[
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                    ),
                  )
                ]
            )
        ));
    // ListView.builder(
    //   itemCount: 10,
    //   itemBuilder: (_, index) => const _ChatBubble(),
    // );
  }
}

class _ChatBubble extends StatelessWidget{
  const _ChatBubble({super.key}) ;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
