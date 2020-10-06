import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Center(
          child: new Image.asset(
            'images/backgroundsplash.png',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),
        ),
      DefaultTabController(
        length: 2,
        child: Center(
          child: Column(
            children: <Widget>[
               Container(

                 margin: EdgeInsets.only(right: 15.0, left: 15.0,top: 200),
                  color: Colors.white,
                  constraints: BoxConstraints.expand(height: 50),

                  child: TabBar(
                      indicatorColor: Colors.black,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,


                      tabs: [
                    Tab(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 20),

                      ),
                    ),
                    Tab(
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(fontSize: 20),

                      ),
                    ),
                  ],
                  ),
                ),

              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    Stack(
                      children: <Widget>[
                          new Container(
                            child: new Card(
                              color: Colors.white,
                              elevation: 6.0,
                               margin: EdgeInsets.only(right: 15.0, left: 15.0),
                              child: new Wrap(
                                children: <Widget>[
                                  new ListTile(
                                    leading: const Icon(Icons.person),
                                    title: new TextFormField(
                                      decoration: new InputDecoration(
                                        hintText: 'Email Address',
                                        labelText: 'Email Address',
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                  new ListTile(
                                    leading: const Icon(Icons.lock),
                                    title: new TextFormField(
                                      decoration: new InputDecoration(
                                        hintText: 'password',
                                        labelText: 'Password',
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                      obscureText: true,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 10.0, bottom: 15.0,left: 100),
                                    child: Center(
                                      child: Text(
                                        "Forgot Password?",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: new RaisedButton(
                                        onPressed: () {
                                          // Navigator.pushReplacement(
                                          //     context, MaterialPageRoute(builder: (context) => Home()));
                                        },
                                        color: Colors.black,
                                        shape: new RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(
                                                    30.0)),
                                        child: new Text('Login',
                                            style: new TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                         new Container(
                            child: new Card(
                              color: Colors.white,
                              elevation: 6.0,
                              margin: EdgeInsets.only(right: 15.0, left: 15.0),
                              child: new Wrap(
                                children: <Widget>[
                                  new ListTile(
                                    leading: const Icon(Icons.person),
                                    title: new TextFormField(
                                      decoration: new InputDecoration(
                                        hintText: 'Email Address',
                                        labelText: 'Email Address',
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                  new ListTile(
                                    leading: const Icon(Icons.lock),
                                    title: new TextFormField(
                                      decoration: new InputDecoration(
                                        hintText: 'password',
                                        labelText: 'Password',
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                      obscureText: true,
                                    ),
                                  ),
                                  new ListTile(
                                    leading: const Icon(Icons.lock),
                                    title: new TextFormField(
                                      decoration: new InputDecoration(
                                        hintText: 'Confirm Password',
                                        labelText: 'Confirm Password',
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                      obscureText: true,
                                    ),
                                  ),


                                  Container(
                                    child: Center(
                                      child: new RaisedButton(
                                        onPressed: () {
                                          // Navigator.pushReplacement(
                                          //     context, MaterialPageRoute(builder: (context) => Home()));
                                        },
                                        color: Colors.black,
                                        shape: new RoundedRectangleBorder(
                                            borderRadius:
                                            new BorderRadius.circular(
                                                30.0)),
                                        child: new Text('SignUp',
                                            style: new TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
            ],
      ),
    );
  }
}

// {
// @override
// Widget build(BuildContext context) {
//   Size size = MediaQuery.of(context).size;
//   return Scaffold(
//     body: Stack(
//       children: <Widget>[
//         Center(
//           child: new Image.asset(
//             'images/backgroundsplash.png',
//             width: size.width,
//             height: size.height,
//             fit: BoxFit.fill,
//           ),
//         ),
//         Center(
//           child: new Container(
//             child:
//             new Card(
//               color: Colors.white,
//               elevation: 6.0,
//               margin: EdgeInsets.only(right: 15.0, left: 15.0),
//               child: new Wrap(
//                 children: <Widget>[
//                   Center(
//                     child: new Container(
//                       margin: EdgeInsets.only(top: 20.0),
//                       child: new Text(
//                         'Login',
//                         style: TextStyle(fontSize: 25.0, color: Colors.red),
//                       ),
//                     ),
//                   ),
//                   new ListTile(
//                     leading: const Icon(Icons.person),
//                     title: new TextFormField(
//                       decoration: new InputDecoration(
//                         hintText: 'Email Address',
//                         labelText: 'Email Address',
//                       ),
//                       keyboardType: TextInputType.emailAddress,
//                     ),
//                   ),
//                   new ListTile(
//                     leading: const Icon(Icons.lock),
//                     title: new TextFormField(
//                       decoration: new InputDecoration(
//                         hintText: 'password',
//                         labelText: 'Password',
//                       ),
//                       keyboardType: TextInputType.emailAddress,
//                       obscureText: true,
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(top: 10.0, bottom: 15.0),
//                     child: Center(
//                       child: Text(
//                         "Forgot Password?",
//                         style: TextStyle(color: Colors.black, fontSize: 16.0),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     child: Center(
//                       child: new RaisedButton(
//                         onPressed: () {
//                           // Navigator.pushReplacement(
//                           //     context, MaterialPageRoute(builder: (context) => Home()));
//                         },
//                         color: Colors.red,
//                         shape: new RoundedRectangleBorder(
//                             borderRadius: new BorderRadius.circular(30.0)),
//                         child: new Text('Login',
//                             style: new TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16.0,
//                                 fontWeight: FontWeight.bold)),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }
