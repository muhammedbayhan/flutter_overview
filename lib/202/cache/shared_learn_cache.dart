import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStateful<SharedLearn> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDefaultValue();
  }

Future<void> getDefaultValue() async {
  final prefs=await SharedPreferences.getInstance();
  final int? counter=prefs.getInt('counter');
  _onChangeValue(counter.toString());
}
  int _currentValue = 0;


  void _onChangeValue(String value) {
    final _value = int.parse(value);
    // ignore: unnecessary_null_comparison
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          isLoading ?
          Center(child: CircularProgressIndicator(color: Colors.red,)):SizedBox.shrink()],
        centerTitle: true,
        title: Text(_currentValue.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          changeLoading();
          final prefs = await SharedPreferences.getInstance();
          await prefs.setInt('counter', _currentValue);
                    changeLoading();

        },
        child: Icon(Icons.save),
      ),
      body: TextField(
        onChanged: (value) {
          _onChangeValue(value);
        },
      ),
    );
  }
}

abstract class LoadingStateful<T extends StatefulWidget> extends State<T>{

  bool isLoading=false;
  void changeLoading(){
    setState(() {
      isLoading=!isLoading;
    });
  }
}