import 'package:flutter/material.dart';
import 'package:whatzapp_demo_flutter/components/customAppBar.dart';

void main() {
  runApp(const MyApp());
}
const dark_header_bg = Color(0xFF202c33);
const text_primary = Color(0xFFe9edef);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatzApp Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Scaffold(
        appBar: CustomAppBar(
          title: "WhatzApp Demo",
          backgroundColor: dark_header_bg,
          color: Colors.white,
          icon: Icon(Icons.arrow_back_ios, color: Colors.white,size: 18,),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.camera_alt_outlined),
              onPressed: () {},
              color: Colors.white,
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
              color: Colors.white,
            ),
            PopupMenuButton(
              position: PopupMenuPosition.under,
              color: dark_header_bg,
              icon: const Icon(Icons.more_vert, color: Colors.white,),
               itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text("Nouveau groupe",style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                  ),
                  PopupMenuItem(
                    child: Text("Nouvelle diffusion",style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                  PopupMenuItem(
                    child: Text("Communautés",style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                  PopupMenuItem(
                    child: Text("Etiquettes",style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                  PopupMenuItem(
                    child: Text("Appareils connectés",style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                  PopupMenuItem(
                    child: Text("Messages importants",style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                  PopupMenuItem(
                    child: Text("Paramètres",style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ];
              },
            ),
          ],
        ),



        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: dark_header_bg,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: dark_header_bg,
              icon: Icon(Icons.message),
              label: 'Discussions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Appels',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.blur_circular_rounded),
              label: 'Actus',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store_outlined),
              label: 'Outils',
            ),
          ],
        ),
      ),
    );
  }
}


