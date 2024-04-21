import 'package:flutter/material.dart';
import 'package:whatzapp_demo_flutter/components/customAppBar.dart';
import 'package:whatzapp_demo_flutter/pages/actusPage.dart';
import 'package:whatzapp_demo_flutter/pages/appelsPage.dart';
import 'package:whatzapp_demo_flutter/pages/discussionsPage.dart';
import 'package:whatzapp_demo_flutter/pages/outilsPage.dart';

void main() {
  runApp(const MyApp());
}
const dark_header_bg = Color(0xFF202c33);
const text_primary = Color(0xFFe9edef);
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final PageController _pageController = new PageController();
  var  _pageIndex =0;
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

        body: PageView(
          controller: _pageController,
          onPageChanged: (value) {
            setState((){
              _pageIndex = value;
            });
          },

          children: <Widget>[
            DiscussionsPage(),
            AppelsPage(),
            ActusPage(),
            OutilsPage(),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          backgroundColor: dark_header_bg,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (value) {
            print(value);
            _pageController.jumpToPage(value);
          },
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              tooltip: "Discussions",
              backgroundColor: dark_header_bg,
              icon: Icon(Icons.message),
              label: 'Discussions',
            ),
            BottomNavigationBarItem(
              backgroundColor: dark_header_bg,
              icon: Icon(Icons.call_outlined),
              label: 'Appels',
            ),
            BottomNavigationBarItem(
              backgroundColor: dark_header_bg,
              icon: Icon(Icons.blur_circular_rounded),
              label: 'Actus',
            ),
            BottomNavigationBarItem(
              backgroundColor: dark_header_bg,
              icon: Icon(Icons.store_outlined),
              label: 'Outils',
            ),
          ],
        ),
      ),
    );
  }
}


