import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// BaseOptions baseOptions = BaseOptions(
//   baseUrl: Endpoint.BASE_URL,
//   receiveTimeout: 60000,
//   sendTimeout: 60000,
//   responseType: ResponseType.json,
//   maxRedirects: 3,
// );
// Dio dio = Dio(baseOptions);
// ApiProvider apiProvider = ApiProvider();
// ImagePicker imagePicker = ImagePicker();
// NavigationService navigationService = NavigationService();
//
// configEasyLoading() {
//   EasyLoading.instance
//     ..indicatorType = EasyLoadingIndicatorType.fadingCircle
//     ..loadingStyle = EasyLoadingStyle.dark
//     ..indicatorSize = 45.0
//     ..radius = 10.0
//     ..progressColor = Colors.yellow
//     ..backgroundColor = Colors.green
//     ..indicatorColor = Colors.yellow
//     ..textColor = Colors.yellow
//     ..maskColor = Colors.blue.withOpacity(0.5)
//     ..userInteractions = false
//     ..dismissOnTap = false;
// }
//
// ThemeData themeData(context) => ThemeData(
//
//   // backgroundColor: Colors.white,
//     scaffoldBackgroundColor: Colors.white,
//     splashColor: Colors.transparent,
//     iconTheme: IconThemeData(
//       color: ColorPrimary,
//       opacity: 1,
//     ),
//     bottomSheetTheme: BottomSheetThemeData(
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)))),
//     // accentTextTheme: Theme.of(context).textTheme,
//     unselectedWidgetColor: Colors.black,
//     fontFamily: GoogleFonts.openSans().fontFamily,
//     primaryColor: ColorPrimary,
//     primaryColorDark: ColorPrimary,
//     buttonTheme: ButtonThemeData(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       buttonColor: ColorPrimary,
//       textTheme: ButtonTextTheme.primary,
//     ),
//     inputDecorationTheme: InputDecorationTheme(
//         hoverColor: ColorPrimary,
//
//         // filled: true,
//         // fillColor: Color.fromRGBO(242, 242, 242, 1),
//         hintStyle: TextStyle(
//           color: Color.fromRGBO(85, 85, 85, 1.0),
//           fontSize: 13,
//         ),
//         floatingLabelBehavior: FloatingLabelBehavior.auto,
//         alignLabelWithHint: true,
//         labelStyle: TextStyle(
//           // color: ColorPrimary,
//           fontSize: 13,
//         ),
//
//         // border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
//         // enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
//         // disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
//         // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
//         // errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
//         // focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
//         contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
//         errorStyle: TextStyle(color: Colors.red, fontSize: 15)),
//     appBarTheme: AppBarTheme(
//       elevation: 1,
//       systemOverlayStyle: SystemUiOverlayStyle(
//         statusBarColor: ColorPrimary,
//         // statusBarIconBrightness: Brightness.light,
//       ),
//       brightness: Brightness.dark,
//       backgroundColor: ColorPrimary,
//       iconTheme: IconThemeData(
//         color: Colors.white,
//       ),
//       centerTitle: true,
//       actionsIconTheme: IconThemeData(
//         color: Colors.white,
//       ),
//       // toolbarTextStyle: Theme.of(context).textTheme.headline6!.merge(TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
//       // titleTextStyle: Theme.of(context).textTheme.headline6!.merge(TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
//     ),
//     colorScheme: ColorScheme.fromSwatch(
//         primarySwatch: MaterialColor(
//           ColorPrimary.value,
//           <int, Color>{
//             50: Color(0xFFFFFFFF),
//             100: Color(0xFFD4D1FD),
//             200: Color(0xFFABA2F6),
//             300: Color(0xFF887BFC),
//             400: Color(0xFF796AFF),
//             500: Color(ColorPrimary.value),
//             600: Color(0xFF5344F8),
//             700: Color(0xFF4530FC),
//             800: Color(0xFF2C17FF),
//             900: Color(0xFF1500F5),
//           },
//         )).copyWith(secondary: ColorPrimary).copyWith(secondary: ColorPrimary));
// const AndroidNotificationChannel channel = AndroidNotificationChannel(
//     "high_importance_channel", "High Importance Notification",
//     importance: Importance.high, playSound: true);
//
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
//
// final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
//
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   print("A bg Message showed up: ${message.messageId}");
// }
//
// fcmToken() async {
//   try {
//     log("${await firebaseMessaging.getToken()}");
//   } catch (e) {
//     log("error");
//   }
// }
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await EasyLocalization.ensureInitialized();
//   await Firebase.initializeApp();
//   await fcmToken();
//
//   FirebaseMessaging.onBackgroundMessage((_firebaseMessagingBackgroundHandler));
//
//   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//     RemoteNotification? notification = message.notification;
//     AndroidNotification? android = message.notification?.android;
//
//     if (notification != null && android != null) {
//       flutterLocalNotificationsPlugin.show(
//           notification.hashCode,
//           notification.title,
//           notification.body,
//           NotificationDetails(
//             android: AndroidNotificationDetails(channel.id, channel.name,
//                 color: ColorPrimary, playSound: true, icon: "logo"),
//           ));
//     }
//     // Navigator.push(navigationService.navigatorKey.currentContext!,
//     //     MaterialPageRoute(builder: (_) => MoneyDueScreen()));
//   });
//
//   FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//     RemoteNotification? notification = message.notification;
//     AndroidNotification? android = message.notification?.android;
//     if (notification != null && android != null) {
//       Navigator.push(
//           navigationService.navigatorKey.currentContext!, MaterialPageRoute(builder: (_) => MoneyDueScreen(true)));
//     }
//   });
//
//   await flutterLocalNotificationsPlugin
//       .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
//       ?.createNotificationChannel(channel);
//   configEasyLoading();
//
//   await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//     alert: true,
//     badge: true,
//     sound: true,
//   );
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: ColorPrimary,
//   ));
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
//   dio.interceptors.add(LogInterceptor(
//       responseBody: true,
//       responseHeader: false,
//       requestBody: true,
//       request: true,
//       requestHeader: true,
//       error: true,
//       logPrint: (text) {
//         log(text.toString());
//       }));
//   // assets/locale
//   runApp(
//     EasyLocalization(
//         supportedLocales: Constant.language, path: 'assets/locale', fallbackLocale: Locale('en'), child: MyApp()),
//   );
// }
//
// class MyApp extends StatefulWidget {
//   // This widget is the root of your application.
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     super.initState();
//     init();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // FlutterStatusbarcolor.setStatusBarColor(Color(0xff493ad6));
//     return MaterialApp(
//       title: 'Vendor',
//       localizationsDelegates: context.localizationDelegates,
//       supportedLocales: context.supportedLocales,
//       locale: context.locale,
//       theme: themeData(context),
//       debugShowCheckedModeBanner: false,
//       navigatorKey: navigationService.navigatorKey,
//       builder: EasyLoading.init(),
//       onGenerateRoute: (route) {
//         switch (route.name) {
//           case "/":
//             return PageTransition(type: PageTransitionType.fade, child: SplashScreen());
//
//           case Routes.SplashScreen:
//             return PageTransition(type: PageTransitionType.fade, child: SplashScreen());
//
//           case Routes.SelectLanguage:
//             return PageTransition(type: PageTransitionType.fade, child: SelectLanguage());
//
//           case Routes.LoginScreen:
//             return PageTransition(type: PageTransitionType.fade, child: LoginScreen());
//
//           case Routes.HomeScreen:
//             return PageTransition(type: PageTransitionType.fade, child: HomeScreen());
//
//           case Routes.HomeScreenWithoutInventory:
//             return PageTransition(type: PageTransitionType.fade, child: HomeScreenWithoutInventory());
//
//           case Routes.BOTTOM_NAVIGATION_HOME:
//             int index = route.arguments as int;
//             return PageTransition(
//                 type: PageTransitionType.fade,
//                 child: BottomNavigationHome(
//                   index: index,
//                 ));
//
//           case Routes.BOTTOM_NAVIGATION_HOME_WITHOUTINVENTORY:
//             int index = route.arguments as int;
//             return PageTransition(
//                 type: PageTransitionType.fade,
//                 child: BottomNavigationHomeWithOutInventory(
//                   index: index,
//                 ));
//         }
//       },
//       home: SplashScreen(),
//     );
//   }
//
//   void onLocaleChange(Locale locale) {}
//
//   init() async {}
// }
