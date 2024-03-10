import 'package:flutter/material.dart';
import 'package:flutter_application_13/presentation/screens/registr_screen.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
             backgroundColor: Colors.white10,
             elevation: 0, 
            ),
      ),
      debugShowCheckedModeBanner: false,
      home: Registr(),
    );
  }
}


// TextField(
//               decoration: InputDecoration(
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15),
//                   borderSide: BorderSide(
//                     color: Colors.grey
//                   ),
//                 )
//               ),
                       
//                        ),