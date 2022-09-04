import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({
    Key? key,
  }) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  bool timerSelected = false;
  bool accesSelected = false;
  bool sphoneSelected = false;
  bool iphoneSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mc Flutter'),
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(color: Colors.white, border: Border.all()),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.account_circle,
                    size: 50,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Flutter McFlutter",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text("Experienced app development")
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("123 Main Street"), Text("(415) 555-0198")],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        accesSelected = !accesSelected;
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content:
                                  Text("Unete a un club con otras personas")));
                        setState(() {});
                      },
                      icon: Icon(Icons.accessibility_new,
                          color: accesSelected ? Colors.black : Colors.indigo)),
                  IconButton(
                      onPressed: () {
                        timerSelected = !timerSelected;
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text(
                                  "Cuenta regresiva para el evento: 31 días")));
                        setState(() {});
                      },
                      icon: Icon(Icons.timer,
                          color: timerSelected ? Colors.black : Colors.indigo)),
                  IconButton(
                      onPressed: () {
                        sphoneSelected = !sphoneSelected;
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text("Llama al número 4155550198")));
                        setState(() {});
                      },
                      icon: Icon(Icons.smartphone,
                          color:
                              sphoneSelected ? Colors.black : Colors.indigo)),
                  IconButton(
                      onPressed: () {
                        iphoneSelected = !iphoneSelected;
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text("Llama al celular 3317865113")));
                        setState(() {});
                      },
                      icon: Icon(Icons.phone_iphone,
                          color:
                              iphoneSelected ? Colors.black : Colors.indigo)),
                ],
              )
            ],
          ),
        ));
  }
}
