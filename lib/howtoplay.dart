import 'package:flutter/material.dart';


class HowtoPlay extends StatelessWidget {
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
          title: Text('How to Play?',
                    style:TextStyle(
                        fontSize:20.0,
                  color: Colors.white,
                  fontWeight:FontWeight.bold,
                    ),//style
          ),//title
        ),//appbar
       body: SafeArea(
              child: ListView(
          padding: EdgeInsets.all(7),
            children: [
              Card(
                margin: EdgeInsets.only(top:(15.0),right:(15.0),left:(15.0)),
                color: Colors.grey[200],
                child:Container(
                     color: Colors.grey[200],
                     child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children :[
                             Container(
                                margin: EdgeInsets.only(left:(13.0),top:(13.0),bottom:(13.5),right:(13.0)),
                                child :Text('1.How to play the game?',
                                    style: TextStyle(
                                       color:Colors.black,
                                       fontSize:15.0,
                                       fontWeight:FontWeight.bold,
                                   ),//style
                                ),//text
                               ),//container
                             Container(
                                margin: EdgeInsets.only(left:(13.0),right:(13.0),bottom:(13.5)),
                                    child :Text('There is two typesofgame: Let\'s learn and Play Quiz',
                        style: TextStyle(
                          color:Colors.black,
                          fontSize:15.0,
                          ),//style
                       ),//text
                               ),//container
                           ],//children
                       ),//column
                 ),//container               
              ), //card  
                Card(
                margin: EdgeInsets.only(top:(15.0),right:(15.0),left:(15.0)),
                color: Colors.grey[200],
                child:Container(
                     color: Colors.grey[200],
                     child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children :[
                                Container(
                                margin: EdgeInsets.only(left:(13.0),top:(13.0),bottom:(13.5),right:(13.0)),
                                child :Text('2.Will knowledge improve?',
                                    style: TextStyle(
                                       color:Colors.black,
                                       fontSize:15.0,
                                       fontWeight:FontWeight.bold,
                                   ),//style
                                ),//text
                            ),//container
                             Container(
                                margin: EdgeInsets.only(left:(13.0),right:(13.0),bottom:(13.5)),
                                    child :Text('Play quiz is useful for improve general knowledgeand Let\'s learn is to check your general knowledge power.',
                        style: TextStyle(
                          color:Colors.black,
                          fontSize:15.0,
                          ),//style
                       ),//text
                               ),//container
                           ],//children
                       ),//column
                 ),//container               
              ), //card  
            ], //children
          ), //liste view        
        ), //body
      ); //scaffold
      
  }
}