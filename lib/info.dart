import 'package:flutter/material.dart';

class UIScreen extends StatelessWidget {
  Color gradientStart = Colors.orange[200]; //Change start gradient color here
  Color gradientEnd = Colors.purple;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
// background image and bottom contents
          Column(
            children: <Widget>[
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                      gradient: new LinearGradient(
                        colors: [gradientStart, gradientEnd],
                      ),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50))),
                  child: Center(
                    child: Text('Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                            fontStyle: FontStyle.italic)),
                  )),
              Expanded(
                child:Container(
                  margin:EdgeInsets.only(top:50),
                  child:Column(children: <Widget>[
                    new Center(
                      child:Text('Ali Blazing',style:TextStyle(fontSize:16)),
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          elevation:20,
                          child: Container(
                            width:80,
                            child: Center(
                                child:Text('Folower\n  1000')
                            ),
                          ),
                        ),
                        Card(
                          elevation:20,
                          child: Container(
                            width:80,
                            child: Center(
                                child:Text('Following\n  600')
                            ),
                          ),
                        ),
                        Card(
                          elevation:20,
                          child: Container(
                            width:80,
                            child: Center(
                                child:Text('Likes\n  200')
                            ),
                          ),
                        )
                      ],
                    ),
                    Divider(height:1,color:Colors.grey),
                    Container(
                        height:100,
                        width: 350,
                        margin:EdgeInsets.only(top: 10),
                        child:ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Card(
                                elevation:20,
                                child:Container(
                                    padding:EdgeInsets.all(20),
                                    width:80,
                                    child:Column(children: <Widget>[
                                      Icon(Icons.person,color:Colors.purple),
                                      Text('About')
                                    ],)
                                )
                            ),
                            Card(
                                elevation:20,
                                child:Container(
                                    padding:EdgeInsets.all(20),
                                    width:80,
                                    child:Column(children: <Widget>[
                                      Icon(Icons.work,color:Colors.purple),
                                      Text('Office')
                                    ],)
                                )
                            ),
                            Card(
                                elevation:20,
                                child:Container(
                                    padding:EdgeInsets.all(20),
                                    width:80,
                                    child:Column(children: <Widget>[
                                      Icon(Icons.computer,color:Colors.purple),
                                      Text('Skill')
                                    ],)
                                )
                            ),
                            Card(
                                elevation:20,
                                child:Container(
                                    padding:EdgeInsets.all(20),
                                    width:80,
                                    child:Column(children: <Widget>[
                                      Icon(Icons.language,color:Colors.purple),
                                      Text('Language',style: TextStyle(fontSize: 9))
                                    ],)
                                )
                            ),
                            Card(
                                elevation:20,
                                child:Container(
                                    padding:EdgeInsets.all(20),
                                    width:80,
                                    child:Column(children: <Widget>[
                                      Icon(Icons.star,color:Colors.purple),
                                      Text('Interest',style: TextStyle(fontSize: 10),)
                                    ],)
                                )
                            )
                          ],
                        )
                    ),
                    Divider(height:5),
                    Container(
                      margin:EdgeInsets.only(top: 30,left:5),
                      child:Column(children: <Widget>[
                        Row(children: <Widget>[
                          Text('Work Experience',style:TextStyle(color:Colors.purple,fontWeight:FontWeight.bold),)
                        ],),
                        Row(children:<Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('- Design UI at ABC Company'),
                              Text('- Mobile Developer at KLM Company'),
                              Text('- IT Support at XYZ Company'),
                              Text('- Web Developer at TLM Company'),
                            ],)
                        ],)
                      ],
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
          Positioned(
              top:150,
              child:Container(
                height:100,
                width: 100,
                child:CircleAvatar(
                  backgroundImage: AssetImage('profile.jpg'),
                ),
              ))
        ],
      ),
    );
  }
}
