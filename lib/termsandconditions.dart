import 'package:flutter/material.dart';


class TermsandConditions extends StatelessWidget {
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
          title: Text('Terms and Conditions',
                    style:TextStyle(
                        fontSize:15.0,
                  color: Colors.white,
                  fontWeight:FontWeight.bold,
                    ),//style
          ),//title
        ),//appbar
        body: SafeArea(
            child: Column(
            children: [
              Card(
                margin: EdgeInsets.all(13.0),
                color: Colors.grey[200],
                child:Container(
                   width: double.infinity,
                  color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(13.0),                                         
                    child:Text('Friends, through Play Quiz, we want to convey to you the benefit of the uninterrupted flow of knowledge. In this age of competition, Knowledge is mandatory in social life. We have brought Play Quiz to you with the best intention that even the youth can keep pace with the world and especially in general knowledge.\n\nWe are trying our best to bring general knowledge questions covering various topics at your fingertips. Usually we have a method of verifying the answers to every question but if there is any error then the app user needs to verify every question himself. In such circumstances, if you suffer any loss due to this error, We will not be liable. Unfortunately, if you find any incorrect information, contact us immediately so that the error can be corrected quickly and help other users.\n\nPlay Quiz is our endeavor to be a medium for the upliftment of the youth and for the common people to be a medium of general knowledge. You too will join in this endeavor and participate in this campaign of upliftment of our youth through knowledge.',
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