import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:clean_arc_flutter/app/infrastructure/contract/base_controller.dart';
import 'package:clean_arc_flutter/app/misc/user_data.dart';

import '../pages.dart';

class HomeController extends BaseController {
  UserData _sp;

  UserData get sp => _sp;

  HomeController(this._sp) : super() {
    // setupFlushbar();
  }

  @override
  void initListeners() {
    super.initListeners();
  }

  @override
  void onInternetConnected() {
    super.onInternetConnected();
    // kFlushbar..show(getContext());
  }

  @override
  void onInternetDisconnected() {
    super.onInternetDisconnected();
  }
}

class SearchPage extends StatefulWidget {
  final String Nama;
  const SearchPage({Key? key, required this.Nama}) : super(key: key);
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('Button 1'),
          onPressed: () {
             Modular.to.pushNamed('/firstApp', arguments: widget.Nama);
          },
        ),
      ],
    );
  }
}
