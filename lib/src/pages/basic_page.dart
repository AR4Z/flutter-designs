import 'package:flutter/material.dart';


class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subTitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              this._buildImage(),
              this._buildTitle(),
              this._buildActions(),
              this._buildDescription(),
              this._buildDescription(),
              this._buildDescription(),
              this._buildDescription(),
              this._buildDescription(),
              this._buildDescription(),
            ]
        ),
      )
    );
  }


  Widget _buildImage() {
    return Image(
        image: NetworkImage('https://33bopn2vwq9l20z09k1ikaal-wpengine.netdna-ssl.com/wp-content/uploads/2010/06/canada_3584c-copy-1280x630.jpg')
    );
  }

  Widget _buildTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Landscape', style: titleStyle,),
                  SizedBox(height: 7.0),
                  Text('Beautiful landscape', style: subTitleStyle)
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('4.1', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _buildActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        this._buildActionButton(Icons.call, 'CALL'),
        this._buildActionButton(Icons.near_me, 'ROUTE'),
        this._buildActionButton(Icons.share, 'SHARE')
      ],
    );
  }

  Widget _buildActionButton(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0,),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _buildDescription() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Nunquam fallere frondator. When one traps vision and core, one is able to fear peace. One beloved faith i give you: discover each other.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
