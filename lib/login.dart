
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 50),
          width: double.infinity,
          color: Colors.blue,
          child: Stack(
            children: [

                  Column(

                      children: [
                      SizedBox(height: 50,),
                      Center(child: Text('Login Here',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),)),
                      Text('Welcome to the Professional Tech',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(top: 150),
                    height: MediaQuery.of(context).size.height ,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                          topRight: Radius.circular(80)
                      )
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 80,horizontal: 30),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)
                              ),
                              labelText: 'User Name',
                              hintText: 'Enter valid Username here',
                              prefixIcon: Icon(Icons.person_outline),

                            ),
                          ),
                          SizedBox(height: 20,),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              labelText: 'User Name',
                              hintText: 'Enter valid Username here',
                              prefixIcon: Icon(Icons.person_outline),

                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Switch(
                                  value: true,
                                  onChanged: (value)
                                  {

                                  }
                              ),
                              Text('Remember me',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                            ],
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width - 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue
                            ),
                            child: FlatButton(

                              child: Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

            ],
          ),
        ),
      ),
    );
  }
}
