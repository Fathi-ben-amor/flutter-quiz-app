import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.grey[400] ,
        appBar: AppBar(
          backgroundColor: Colors.indigo[700],
          leading: IconButton (
            icon:Icon(
              Icons.arrow_back,
              color:Colors.white,
            ),//icon
            onPressed:(){
              Navigator.of(context).pop();
            },
          ),//leading
          title: Text('Privacy Policy',
                    style:TextStyle(
                        fontSize:15.0,
                  color: Colors.white,
                  fontWeight:FontWeight.bold,
                    ),//style
          ),//title
        ),//appbar
        body: SafeArea(
            child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Card(
                margin: EdgeInsets.only(top:(13.0),right:(13.0),left:(13.0)),
                color: Colors.grey[200],
                child:Container(
                   width: double.infinity,
                  color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.only(top:(13.0),right:(13.0),left:(13.0)),                                         
                           child : Text('We collect information ',
                  style: TextStyle(
                          color:Colors.black,
                    fontWeight:FontWeight.bold,
                          fontSize:12.0,                        
                          ),//style
                       ),//text
                  ),//padding      
                 ),//container               
              ), //card
              Card(
                margin: EdgeInsets.only(bottom:(13.0),right:(13.0),left:(13.0)),
                color: Colors.grey[200],
                child:Container(
                   width: double.infinity,
                  color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.only(top:(13.0),bottom:(13.0),right:(13.0),left:(13.0)),                                         
                      child : Text('We use technologies like cookies (small files stored by your browser), web beacons, or unique device identifiers to anonymously identify your computer or device so we can deliver a better experience. Our systems also log information like your browser, operating system and IP address.\nWe also collect personally identifiable information about you. In other words, we also collect information such as your name, address, phone number or email address.\nWe also knowingly contact or collect personal information from children under 13. If you believe we have inadvertently collected such information, please contact us so we can promptly obtain parental consent or remove the information.\nOur service does not currently recognize the "Do Not Track signal that may be available in some web browsers.',
                      style: TextStyle(
                          color:Colors.black,
                          fontSize:12.0,                         
                          ),//style
                       ),//text
                  ),//padding      
                 ),//container               
              ), //card  
            ], //children
          ), //column        
        ), //body
      ); //scaffold
      
  }
}