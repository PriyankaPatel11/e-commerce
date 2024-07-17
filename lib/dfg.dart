import 'package:flutter/material.dart';

class Myhjghgiuhj extends StatefulWidget {
  @override
  _MyhjghgiuhjState createState() => _MyhjghgiuhjState();
}

class _MyhjghgiuhjState extends State<Myhjghgiuhj> {
  TextEditingController _textEditingController = TextEditingController();
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _updateTextField();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      _updateTextField();
    });
  }

  void _updateTextField() {
    _textEditingController.text = _counter.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Increment Counter'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _textEditingController,
                enabled: false, // Disable editing in the TextField
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
