import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_back.dart';

import '../../features/models/chat_message.dart';

class ChatDetailView extends StatefulWidget {
  const ChatDetailView({super.key});

  @override
  State<ChatDetailView> createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetailView> {
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "May ask you dr for advice", messageType: "sender"),
    ChatMessage(messageContent: "Sure, Ask", messageType: "receiver"),
    ChatMessage(
        messageContent: "How are you feeling today?", messageType: "sender"),
    ChatMessage(messageContent: "Not fine at all !", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: const Color(0xff000000).withOpacity(.25),
          toolbarHeight: 100.h,
          elevation: 1,
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffF7F7F7).withOpacity(.90),
          flexibleSpace: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xffF7F7F7).withOpacity(.60)),
              child: Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: Row(
                  children: <Widget>[
                    const AppBack(),
                    SizedBox(width: 2.w),
                    const CircleAvatar(maxRadius: 20),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Dr.Amilia john",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600)),
                          ]),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.call_outlined, size: 25)),
                    const Icon(Icons.videocam_rounded, size: 25),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Container(
          color: const Color(0xff39A7A7).withOpacity(.08),
          child: Column(children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                child: Container(
                    margin: EdgeInsetsDirectional.symmetric(horizontal: 15.w),
                    child: Divider(
                      color: Colors.black.withOpacity(.14),
                      height: 36,
                    )),
              ),
              Text("yesterday",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000).withOpacity(.41))),
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Divider(
                      color: Colors.black.withOpacity(.14),
                      height: 36,
                    )),
              ),
            ]),
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    textDirection: (messages[index].messageType == "receiver")
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                    children: [
                      if (messages[index].messageType == "receiver")
                        Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 8.w, bottom: 16.h),
                            child: CircleAvatar(
                                radius: 16.r, backgroundColor: Colors.green)),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                decoration: messages[index].messageType == "receiver"
                                    ? BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.only(
                                            topEnd: Radius.circular(0.r),
                                            topStart: Radius.circular(10.r),
                                            bottomEnd: Radius.circular(10.r),
                                            bottomStart: Radius.circular(10.r)),
                                        color: (messages[index].messageType == "receiver"
                                            ? const Color(0xff494949)
                                                .withOpacity(.20)
                                            : const Color(0xff39A7A7)))
                                    : BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.only(
                                            topStart: Radius.circular(0.r),
                                            topEnd: Radius.circular(10.r),
                                            bottomEnd: Radius.circular(10.r),
                                            bottomStart: Radius.circular(10.r)),
                                        color: (messages[index].messageType == "receiver"
                                            ? const Color(0xff494949)
                                                .withOpacity(.20)
                                            : const Color(0xff39A7A7))),
                                padding: const EdgeInsets.all(16),
                                child: Text(messages[index].messageContent,
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        color: (messages[index].messageType == "receiver"
                                            ? const Color(0xff000000).withOpacity(.62)
                                            : const Color(0xffFFFFFF))))),
                            SizedBox(height: 8.h),
                            Text("12:00")
                          ]),
                    ],
                  );
                },
              ),
            ),
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding:
                        const EdgeInsetsDirectional.only(start: 16, end: 16),
                    height: 64.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xffF9F9F9),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.30),
                            blurRadius: 10,
                            offset: const Offset(2, 2),
                          ),
                        ]),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {},
                            child: const Icon(Icons.thumb_up_alt_outlined,
                                color: Color(0xff39A7A7), size: 25)),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Type your message",
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 4.h, horizontal: 16.w),
                                hintStyle: TextStyle(
                                    color: Colors.black.withOpacity(.33)),
                                fillColor:
                                    const Color(0xffBEBEBE).withOpacity(.30),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(18.r)),
                                suffixIcon: Icon(Icons.emoji_emotions_outlined,
                                    color: const Color(0xffBEBEBE)
                                        .withOpacity(.34))),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.image_outlined,
                                color: Color(0xff39A7A7), size: 30)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.camera_alt_outlined,
                                color: Color(0xff39A7A7), size: 30)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.mic,
                                color: Color(0xff39A7A7), size: 30)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
