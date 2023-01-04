import 'package:flutter/material.dart';
import 'package:none_provider_bloc/samples/flutter_bloc/main-bloc.dart';
import 'package:none_provider_bloc/samples/none/main-none.dart';
import 'package:none_provider_bloc/samples/provider/main-provider.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // route to page
  onButtonTap(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('state_managment_comparation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            MenuButton(
              title: 'Provider',
              onPressed: () => onButtonTap(MainNone()),
            ),
            MenuButton(
              title: 'Provider',
              onPressed: () => onButtonTap(MainProvider()),
            ),
            MenuButton(
              title: 'BLoC',
              onPressed: () => onButtonTap(MainBloc()),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;

  const MenuButton({Key? key, this.title, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: MaterialButton(
        height: 50.0,
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(title!),
      ),
    );
  }
}
