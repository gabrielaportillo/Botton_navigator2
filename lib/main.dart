import 'package:flutter/material.dart';
import 'package:portillo/paginas_tabs/paginatb1.dart';
import 'package:portillo/paginas_tabs/paginatb2.dart';
import 'package:portillo/paginas_tabs/paginatb3.dart';

void main() {
  runApp(MaterialApp(
      // Title
      title: "Using Tabs",
      // Home
      home: Micasa()));
}

class Micasa extends StatefulWidget {
  @override
  MicasaState createState() => MicasaState();
}// fin de mi casa

class MicasaState extends State<Micasa> with SingleTickerProviderStateMixin {
 TabController controller;
  @override
  void initState() {
    super.initState();
 
    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  } //fin de iniciar estado

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }//fin de dispose

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        title: Text("Uso de la barra de navegación inferior, Portillo"),
        backgroundColor: Colors.black,
      ),
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[PrimerTab(), SegundoTab(), TercerTab()],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.black,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.auto_delete_outlined ),
            ),
            Tab(
              icon: Icon(Icons.auto_fix_high), 
            ),
            Tab(
              icon: Icon(Icons.cake_sharp),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );//
  }//fin de widget
}//micasastate
