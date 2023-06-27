import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Belem Chris"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: [
          IconButton(
              icon: const Icon(Icons.email),
              onPressed: () => debugPrint("Email Tapped")),
          IconButton(
            icon: const Icon(Icons.access_alarm),
            onPressed: () => debugPrint("Alarm on"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        child: const Icon(Icons.account_balance_rounded),
        onPressed: () => debugPrint("Hello"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: "Time"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "PhoneBooK"),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: "Images")
        ],
      ),
      backgroundColor: Colors.amberAccent.shade400,
      body: Container(
        alignment: Alignment.center,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton()
            // InkWell(
            //   child: const Text(
            //    "Tap Me",
            //    style: TextStyle(fontSize: 23.4),

            //   onTap: () => debugPrint("tapped......."),//
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const snackBar = SnackBar(
          content: Text("Hello Chris"),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Text("Sign In"),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.yellow,
      child: Center(
          child: Text(
        "Hello Belem Chris",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 50.6,
          fontStyle: FontStyle.normal,
        ),
      )),
    );
  }
}
