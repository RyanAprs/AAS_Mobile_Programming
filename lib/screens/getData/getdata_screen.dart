import 'package:flutter/material.dart';

class GetDataScreen extends StatefulWidget {
  const GetDataScreen({super.key});

  @override
  State<GetDataScreen> createState() => _GetDataScreenState();
}

class _GetDataScreenState extends State<GetDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Data'),
      ),
      body: Center(
        child: Text('Get Data Page'),
      ),
    );
  }
}
