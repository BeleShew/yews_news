import 'package:flutter/material.dart';

import 'news_details_page.dart';

class NewsHomePage extends StatefulWidget {
  const NewsHomePage({super.key});
  @override
  State<NewsHomePage> createState() => _NewsHomePageState();
}

class _NewsHomePageState extends State<NewsHomePage> {
  String buttonText="Submit";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Enter a phone number or email",style: TextStyle(color: Colors.black,fontSize: 16),),
                const SizedBox(height: 10,),
                const Text("Or just tap submit",style: TextStyle(color: Colors.black,fontSize: 16),),
                const SizedBox(height: 10,),
                TextFormField(
                  // controller:controller.emailController,
                  style: TextStyle(color: Colors.black,fontSize: 16),
                  cursorColor: Colors.black,
                  cursorWidth: 1,
                  autofocus: false,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5.0),
                    border:  UnderlineInputBorder(borderSide: BorderSide.none,
                    ),
                    enabledBorder:  UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    ),

                  ),
                  onChanged: (value) {
                  },
                ),
               const SizedBox(height: 20,),
               InkWell(
                 onTap: (){
                   setState(() {
                     buttonText="Please wait...";
                   });
                   Future.delayed(const Duration(seconds: 1),(){
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => NewsDetailsPage()),
                     );
                   });
                   Future.delayed(const Duration(seconds: 1),(){
                     setState(() {
                       buttonText="Submit";
                     });
                   });
                 },
                 child: Text(buttonText,style: const TextStyle(color: Colors.black,fontSize: 18),),
               ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
