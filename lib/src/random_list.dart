import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RandomListState();
  
}

class _RandomListState extends State<RandomList>{
  final List<WordPair> _suggestions = <WordPair>[];
  final Set<WordPair> _saved = Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    final randomWord = WordPair.random();    
    return Scaffold(
        appBar: AppBar(
          title: Text("naming app"),
        ),
        body: Center(child: Text(randomWord.asPascalCase, textScaleFactor: 1.5,)),
      );
  }

}