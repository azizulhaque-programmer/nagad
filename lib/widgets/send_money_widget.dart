import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/contact.dart';
import '../styles/AppTheme.dart';
import 'contacts_widget.dart';

class SendMoneyWidget extends StatefulWidget {
  const SendMoneyWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SendMoneyWidgetState();
}

class _SendMoneyWidgetState extends State<SendMoneyWidget> {

  final List<AppContact> myNumberlist = [
    AppContact(cId: "0", cImage: "assets/user.png", cType: "My Contacts", cNumber: "01123456789", cName: "Evan Emran"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "My Contacts", cNumber: "01123456789", cName: "Evan Emran"),

    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "01123456789", cName: "Tony Stark"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "01123456789", cName: "Elon Musk"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "01123456789", cName: "Carl Pei"),

    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Anik"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Amar"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Akbar"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Anthony"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Alfred"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Arthur"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Abuklau"),
  ];

  final List<AppContact> recentList = [
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "01123456789", cName: "Ryan Reynolds"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "01123456789", cName: "Narendra Modi"),

  ];

  final List<AppContact> allContacts = [
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Atmaram"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Abuklau"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Column(
        children: [
          Card(color: Colors.white, margin: EdgeInsets.all(12), child: Column(children: [
            Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(40,8,12,4), child: Text("Recipient", style: AppTheme.hintText,),))],),
            Row(children: [Padding(padding: EdgeInsets.only(left: 8.0), child: Image.asset("assets/ic_phone.png", height: 20, width: 20,),) ,Expanded(child: Padding(padding: EdgeInsets.fromLTRB(12,8,12,18),
              child: TextField(
              decoration: InputDecoration(hintText: "", hintStyle: AppTheme.hintText),
            ),),), Padding(padding: EdgeInsets.fromLTRB(0, 0, 12, 0), child: Icon(Icons.arrow_circle_right, color: Colors.grey, size: 36,),)],),
            Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(40,8,12,4), child: Text("Enter Name, 11-digit Mobile Number or 16-digit Virtual Card Number", style: AppTheme.hintText,),))],),
          ],),),
          Expanded(child: ContactsWidget(list: myNumberlist, title: "My account"))
        ],
      ),),
    );
  }

}