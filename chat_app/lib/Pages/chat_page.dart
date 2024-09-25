import 'package:chat_app/Models/message_model.dart';
import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/custom_chat_bubble.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});
  static String id= 'ChatPage';
  final _controller =ScrollController();
  CollectionReference messages = FirebaseFirestore.instance.collection(kMessagesCollection);
  TextEditingController controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
        stream: messages.orderBy(kCreatedAt , descending: true).snapshots(),
        builder: (context,snapshot)
        {

          if(snapshot.hasData)
            {
              List<MessageModel> messagesList =[];
              for(int i=0 ; i<snapshot.data!.docs.length ;i++)
                {
                  messagesList.add(MessageModel.fromJson(snapshot.data!.docs[i]));
                }
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: kPrimaryColor,
                  automaticallyImplyLeading: false,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        kLogo,
                        height: 60,
                      ),
                      const Text("Chat"),
                    ],
                  ),
                ),
                body: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        reverse: true,
                        controller: _controller,
                          itemCount: messagesList.length,
                          itemBuilder: (context,index)
                      {
                        return messagesList[index].id ==email ? CustomChatBubble(message: messagesList[index],) :
                        CustomChatBubbleForFriend(message: messagesList[index]);
                      }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: TextField(
                        controller: controller,
                        onSubmitted: (data)
                        {
                          messages.add(
                              {
                                kMessage : data,
                                kCreatedAt :DateTime.now(),
                                'id' : email ,
                              }
                          );
                          controller.clear();
                          // ممكن نستخدم الطريقة دي عشان ينزل مرة واحدة
                          /*_controller.jumpTo(
                            _controller.position.maxScrollExtent,);  */

                          //  او نستخدم الطريقة دي عشان ينزل بسلاسة
                           _controller.animateTo(0 ,
                            //_controller.position.maxScrollExtent,
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeIn,   // شكل الحركة اللي بيتحرك بيها اثناء السكرول
                          );
                        },
                        decoration: InputDecoration(
                            hintText: "Send Message",
                            suffixIcon: const Icon(
                              Icons.send,
                              color: kPrimaryColor,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: kPrimaryColor
                              ),
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          else
            {
              return const Text('Loading ...');
            }
        }
    );
  }
}


