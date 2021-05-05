import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _locale = 'ch';

  void changeToCN() {
    setState(() {
      _locale = 'ch';
    });
  }

  void changeToML() {
    setState(() {
      _locale = 'ml';
    });
  }

  void changeToEN() {
    setState(() {
      _locale = 'en';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Localizations Sample App',
        localizationsDelegates: [
          AppLocalizations.delegate, // Add this line
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', ''), // English, no country code
          const Locale('ch', ''),
          const Locale('ml', '')
        ],
        locale: Locale(_locale, ''),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AppBody(changeToCN, changeToEN, changeToML));
  }
}

class AppBody extends StatelessWidget {
  final VoidCallback changeToCN;
  final VoidCallback changeToEN;
  final VoidCallback changeToML;

  AppBody(this.changeToCN, this.changeToEN, this.changeToML);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          GestureDetector(
              child: Icon(
                Icons.close,
                color: Colors.white.withOpacity(0.8),
                size: 20.0,
              ),
              onTap: () {
                Navigator.pop(context);
              }),
          Expanded(
            child: Container(),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 330,
                        child: Row(children: [
                          Container(
                              height: 70,
                              child: VerticalDivider(
                                color: Colors.white.withOpacity(0.8),
                                width: 3.0,
                              )),
                          Expanded(
                            child: Container(),
                          ),
                          Expanded(
                              child: Text(
                            AppLocalizations.of(context)!.order,
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 20),
                            textAlign: TextAlign.center,
                          )),
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                              height: 70,
                              child: VerticalDivider(
                                color: Colors.white.withOpacity(0.8),
                                width: 3.0,
                              )),
                        ])),
                    Container(
                        width: 200,
                        child: Row(children: [
                          Expanded(
                            child: Container(),
                          ),
                          Expanded(
                              flex: 2,
                              child: Text(
                                AppLocalizations.of(context)!.menu,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 20),
                                textAlign: TextAlign.center,
                              )),
                          Expanded(
                            child: Container(),
                          ),
                        ])),
                    Container(
                        height: 70,
                        child: VerticalDivider(
                          color: Colors.white.withOpacity(0.8),
                          width: 3.0,
                        )),
                    Container(
                        width: 250,
                        child: Row(children: [
                          Expanded(
                            child: Container(),
                          ),
                          Expanded(
                              flex: 2,
                              child: Text(
                                AppLocalizations.of(context)!.inventory,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 20),
                                textAlign: TextAlign.center,
                              )),
                          Expanded(
                            child: Container(),
                          ),
                        ])),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 330,
                        child: Row(children: [
                          Container(
                              height: 70,
                              child: VerticalDivider(
                                color: Colors.white.withOpacity(0.8),
                                width: 3.0,
                              )),
                          Expanded(
                            child: Container(),
                          ),
                          Expanded(
                              child: Text(
                            AppLocalizations.of(context)!.transaction,
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 20),
                            textAlign: TextAlign.center,
                          )),
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                              height: 70,
                              child: VerticalDivider(
                                color: Colors.white.withOpacity(0.8),
                                width: 3.0,
                              )),
                        ])),
                    Container(
                        width: 200,
                        child: Row(children: [
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                              flex: 2,
                              child: Text(
                                AppLocalizations.of(context)!.report,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 20),
                                textAlign: TextAlign.center,
                              )),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                        ])),
                    Container(
                        height: 70,
                        child: VerticalDivider(
                          color: Colors.white.withOpacity(0.8),
                          width: 3.0,
                        )),
                    Container(
                        width: 250,
                        child: Row(children: [
                          Expanded(
                            child: Container(),
                          ),
                          Expanded(
                              flex: 2,
                              child: Text(
                                AppLocalizations.of(context)!.setting,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 20),
                                textAlign: TextAlign.center,
                              )),
                          Expanded(
                            child: Container(),
                          ),
                        ])),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(88, 44),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    ),
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {
                    changeToEN();
                  },
                  child: Text(
                    'EN',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  )),
              SizedBox(
                width: 15.0,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(88, 44),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    ),
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {
                    changeToCN();
                  },
                  child: Text(
                    'CN',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  )),
              SizedBox(
                width: 15.0,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(88, 44),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    ),
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {
                    changeToML();
                  },
                  child: Text(
                    'ML',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title, required this.onPressed})
//       : super(key: key);

//   final String title;
//   Function onPressed;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: <Widget>[
//           SizedBox(
//             height: 15.0,
//           ),
//           GestureDetector(
//               child: Icon(
//                 Icons.close,
//                 color: Colors.white.withOpacity(0.8),
//                 size: 20.0,
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//               }),
//           Expanded(
//             child: Container(),
//           ),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                         width: 330,
//                         child: Row(children: [
//                           Container(
//                               height: 70,
//                               child: VerticalDivider(
//                                 color: Colors.white.withOpacity(0.8),
//                                 width: 3.0,
//                               )),
//                           Expanded(
//                             child: Container(),
//                           ),
//                           Expanded(
//                               child: Text(
//                             AppLocalizations.of(context)!.order,
//                             style: TextStyle(
//                                 color: Colors.white.withOpacity(0.7),
//                                 fontSize: 20),
//                           )),
//                           Expanded(
//                             child: Container(),
//                           ),
//                           Container(
//                               height: 70,
//                               child: VerticalDivider(
//                                 color: Colors.white.withOpacity(0.8),
//                                 width: 3.0,
//                               )),
//                         ])),
//                     Container(
//                         width: 200,
//                         child: Row(children: [
//                           Expanded(
//                             child: Container(),
//                           ),
//                           Expanded(
//                               child: Text(
//                             AppLocalizations.of(context)!.menu,
//                             style: TextStyle(
//                                 color: Colors.white.withOpacity(0.7),
//                                 fontSize: 20),
//                           )),
//                           Expanded(
//                             child: Container(),
//                           ),
//                           Container(
//                               height: 70,
//                               child: VerticalDivider(
//                                 color: Colors.white.withOpacity(0.8),
//                                 width: 3.0,
//                               ))
//                         ])),
//                     Container(
//                         width: 250,
//                         child: Row(children: [
//                           Expanded(
//                             child: Container(),
//                           ),
//                           Expanded(
//                               child: Text(
//                             AppLocalizations.of(context)!.inventory,
//                             style: TextStyle(
//                                 color: Colors.white.withOpacity(0.7),
//                                 fontSize: 20),
//                           )),
//                           Expanded(
//                             child: Container(),
//                           ),
//                         ])),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 30.0,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                         width: 330,
//                         child: Row(children: [
//                           Container(
//                               height: 70,
//                               child: VerticalDivider(
//                                 color: Colors.white.withOpacity(0.8),
//                                 width: 3.0,
//                               )),
//                           Expanded(
//                             child: Container(),
//                           ),
//                           Expanded(
//                               child: Text(
//                             AppLocalizations.of(context)!.transaction,
//                             style: TextStyle(
//                                 color: Colors.white.withOpacity(0.7),
//                                 fontSize: 20),
//                           )),
//                           Expanded(
//                             child: Container(),
//                           ),
//                           Container(
//                               height: 70,
//                               child: VerticalDivider(
//                                 color: Colors.white.withOpacity(0.8),
//                                 width: 3.0,
//                               )),
//                         ])),
//                     Container(
//                         width: 200,
//                         child: Row(children: [
//                           Expanded(
//                             child: Container(),
//                           ),
//                           Expanded(
//                               child: Text(
//                             AppLocalizations.of(context)!.report,
//                             style: TextStyle(
//                                 color: Colors.white.withOpacity(0.7),
//                                 fontSize: 20),
//                           )),
//                           Expanded(
//                             child: Container(),
//                           ),
//                           Container(
//                               height: 70,
//                               child: VerticalDivider(
//                                 color: Colors.white.withOpacity(0.8),
//                                 width: 3.0,
//                               ))
//                         ])),
//                     Container(
//                         width: 250,
//                         child: Row(children: [
//                           Expanded(
//                             child: Container(),
//                           ),
//                           Expanded(
//                               child: Text(
//                             AppLocalizations.of(context)!.setting,
//                             style: TextStyle(
//                                 color: Colors.white.withOpacity(0.7),
//                                 fontSize: 20),
//                           )),
//                           Expanded(
//                             child: Container(),
//                           ),
//                         ])),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextButton(
//                   style: TextButton.styleFrom(
//                     primary: Colors.white,
//                     minimumSize: Size(88, 44),
//                     padding: EdgeInsets.symmetric(horizontal: 16.0),
//                     shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(2.0)),
//                     ),
//                     backgroundColor: Colors.grey,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       AppLocalizations.delegate.load(Locale('en', ''));
//                     });
//                   },
//                   child: Text(
//                     'EN',
//                     style: TextStyle(color: Colors.black, fontSize: 15.0),
//                   )),
//               SizedBox(
//                 width: 15.0,
//               ),
//               TextButton(
//                   style: TextButton.styleFrom(
//                     primary: Colors.white,
//                     minimumSize: Size(88, 44),
//                     padding: EdgeInsets.symmetric(horizontal: 16.0),
//                     shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(2.0)),
//                     ),
//                     backgroundColor: Colors.grey,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       AppLocalizations.delegate.load(Locale('ch', ''));
//                     });
//                   },
//                   child: Text(
//                     'CN',
//                     style: TextStyle(color: Colors.black, fontSize: 15.0),
//                   )),
//               SizedBox(
//                 width: 15.0,
//               ),
//               TextButton(
//                   style: TextButton.styleFrom(
//                     primary: Colors.white,
//                     minimumSize: Size(88, 44),
//                     padding: EdgeInsets.symmetric(horizontal: 16.0),
//                     shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(2.0)),
//                     ),
//                     backgroundColor: Colors.grey,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       AppLocalizations.delegate.load(Locale('ml', ''));
//                     });
//                   },
//                   child: Text(
//                     'ML',
//                     style: TextStyle(color: Colors.black, fontSize: 15.0),
//                   ))
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
