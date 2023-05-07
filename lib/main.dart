import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multilingual/translation_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // first we have to change this materialApp to GetMaterialApp
      title: 'Flutter Demo',
      translations:
          Messages(), // your translations , this is the class which i create
      locale: const Locale(
          'hi', 'IN'), // translations will be displayed in that locale
      //  now if i change this for hindi , let see what will happen
      //  after restarting our text got change
//  now let's see how to do it dynamically
      fallbackLocale: const Locale('en',
          'US'), // in case your locale does not support or something goes wrong , this locale will be used
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Multilingual'),
    );
  }
}
/*

Hey everyone , it's been a long time 
, today we are going to see how to do multilingual in flutter
it's means  usinng multiple language 
so we are going to see how to achieve this using Get plugin 
Get is use for statemanagement along with other thing like this and many more  we will see those too later

so to do this let's see documentation


let's start 

to use multiple language we have to provider translation for our text 

how does this plugin work

- we provider a map of text in all the language we want to add in our app
and we use key for those 
actually let's see rather


let me create a file to store this translation



now this is all the setup , now how to use them 
let's see


Thanks for watching


*/

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                var locale = const Locale('en', 'US');
                Get.updateLocale(
                    locale); // to change language you just have to update locale
              },
              child: const Text("English"),
            ),
            ElevatedButton(
              onPressed: () {
                var locale = const Locale('hi', 'IN');
                Get.updateLocale(locale);
              },
              child: const Text("Hindi"),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: const Text("Click")),
            Text("hello".tr),
            Text(
              "noOfClick".trParams({
                "count": count.toString(), // you can only use  string
              }),
            ),

            //  you have to use key for that text and append it with tr like this
            //  that's how we use it
            //  that's it
            //  this is how you can use multilingual
            //  now for bonus let see how can we add some dynamic value into it
          ],
        ),
      ),
    );
  }
}
