import 'dart:ui';

import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home:QuoteList(),

));

class  QuoteList extends StatefulWidget {
  @override
  State createState() => _State();
}

class _State extends State {

List<Quote> quotes = [
  Quote(author: 'Oscar May', text:'Be yourself, everyone else is already taken...'),
  Quote(author: 'Jeremy Lincoln', text:'sbdhcwgvdcwdbncjwh'),
  Quote(author: 'Rob Stewart', text:'lolollasvwgc')

 
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes!'),
        titleTextStyle: TextStyle(
          color: Colors.black,
           fontStyle: FontStyle.italic,
           fontSize: 25.0,
           ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote)=> Text('${quote.text} - ${quote.author}')).toList(),   
        
      ),
      
    );
  }
}


