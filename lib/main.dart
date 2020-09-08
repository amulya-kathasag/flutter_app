import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _id;
  String _name;
  double _price;
  String _description;
  String _image;
  String _url;
  int _views;
  int _total_order;
  int _total_revenue;

  final GlobalKey<_MyHomePageState> _form = GlobalKey<_MyHomePageState>();

  Widget _buildIdField(){

    return TextFormField(
      decoration: InputDecoration(labelText: 'Id'),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly
        ]
    );
  }
  Widget _buildNameField(){

    return TextFormField(
        decoration: InputDecoration(labelText: 'Name'),
        keyboardType: TextInputType.text,

    );
  }
  Widget _buildPriceField(){

    return TextFormField(
        decoration: InputDecoration(labelText: 'Price'),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly
        ]
    );
  }
  Widget _buildDescriptionField(){
    return TextFormField(
        decoration: InputDecoration(labelText: 'Description'),
        keyboardType: TextInputType.text,

    );
  }
  Widget _buildImageField(){
    return TextFormField(
        decoration: InputDecoration(labelText: 'Image'),
        keyboardType: TextInputType.text,

    );
  }
  Widget _buildUrlField(){

    return TextFormField(
        decoration: InputDecoration(labelText: 'Url'),
        keyboardType: TextInputType.url,

    );
  }
  Widget _buildViewsField(){

    return TextFormField(
        decoration: InputDecoration(labelText: 'Views'),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly
        ]
    );
  }
  Widget _buildOrderField(){
    return TextFormField(
        decoration: InputDecoration(labelText: 'Total order'),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly
        ]
    );
  }
  Widget _buildRevenueField(){

    return TextFormField(
        decoration: InputDecoration(labelText: 'Revenue'),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly
        ]
    );
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(

        title: Text(widget.title),
      ),
      body:Container(
        padding: const EdgeInsets.symmetric(horizontal: 43.0),
        child: Form(

          child: Column(

            children: <Widget>[
              _buildIdField(),
              _buildNameField(),
              _buildPriceField(),
              _buildDescriptionField(),
              _buildImageField(),
              _buildUrlField(),
              _buildViewsField(),
              _buildOrderField(),
              _buildRevenueField(),
              SizedBox(height: 8),
              RaisedButton(
                child: Text('Post',),
              )

            ],
          ),
        ),

      )
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
