import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
        backgroundColor: Colors.grey[200] ,
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
          title: Text('Contact Us',
                    style:TextStyle(
                        fontSize:15.0,
                  color: Colors.white,
                  fontWeight:FontWeight.bold,
                    ),//style
          ),//title
        ),//appbar
        body: SafeArea(
            child: ListView(
          padding: EdgeInsets.all(15),
            children: [

             TextField(
  decoration:InputDecoration(
    hintText:"Your Name",
    border: OutlineInputBorder(),
    fillColor : Colors.black12,
    filled:true
    ),//inputDecorations
    obscureText:false
  ),//textfield
               SizedBox(
                height:15.0,
              ),
                    TextField(
  decoration:InputDecoration(
    hintText:"Your Email",
    border: OutlineInputBorder(),
    fillColor : Colors.black12,
    filled:true
    ),//inputDecorations
    obscureText:false
  ),//textfield
                  SizedBox(
                height:15.0,
              ),
                    TextField(
  decoration:InputDecoration(
    hintText:"Your Number",
    border: OutlineInputBorder(),
    fillColor : Colors.black12,
    filled:true
    ),//inputDecorations
                      keyboardType :TextInputType.emailAddress,
    obscureText:false,
                      maxLength:8,
  ),//textfield
             TextField(
  decoration:InputDecoration(
    hintText:"Message",
    border: OutlineInputBorder(),
    fillColor : Colors.black12,
    filled:true
    ),//inputDecorations
    obscureText:false,
               maxLines:5,
  ),//textfield
                  SizedBox(
                height:15.0,
              ),
              Card(
                margin: EdgeInsets.only(top:30.0),                
                color: Colors.indigo[300],
                child:RaisedButton(                  
                  color: Colors.indigo[300],
                child: Padding(
                  padding: const EdgeInsets.all(5.0),                                         
                    child:Text('Submit',
                        style: TextStyle(
                          color:Colors.indigo[100],
                          fontSize:15.0,
                          fontWeight:FontWeight.bold,
                          ),//style
                        ),//text
                  ),//padding
                       onPressed :(){
                           Navigator.of(context).pop();
                      },//onpressed
                    ),//button                 
               ), //card   
            ], //children
          ), //column        
        ), //body
     
      );
  }
}