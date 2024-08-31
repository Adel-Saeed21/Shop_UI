import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  Uri dialnumber = Uri(scheme: 'tel', path: '01020237163');
  callnumber() async {
    await launchUrl(dialnumber);
  }

  directcall() async {
    await FlutterPhoneDirectCaller.callNumber('01020237163');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.grey),
          title: const Text(
            "service",
            style: TextStyle(color: Colors.orange),
          )),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          const Card(
            margin: EdgeInsets.all(8),
            color: Colors.orange,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                    size: 25,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "adelsaid284@gmail.com",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              callnumber();
            },
            child: const Card(
              margin: EdgeInsets.only(left: 8, right: 8, top: 0),
              color: Colors.orange,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.call,
                      size: 25,
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      "Call Us",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
