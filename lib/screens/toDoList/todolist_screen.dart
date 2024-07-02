import 'package:flutter/material.dart';

class TodolistScreen extends StatefulWidget {
  const TodolistScreen({super.key});

  @override
  State<TodolistScreen> createState() => _TodolistScreenState();
}

class _TodolistScreenState extends State<TodolistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      body: Center(
        child: Text('To Do List Page'),
      ),
    );
  }
}
