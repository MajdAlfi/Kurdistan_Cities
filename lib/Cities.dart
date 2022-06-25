import 'package:flutter/material.dart';
import 'package:kurdistan_cities/Mock_Data/Mock_data.dart';

class cities extends StatelessWidget {
  const cities(
      {Key? key, required this.Name, required this.Imgurl, required this.lorem})
      : super(key: key);

  final Name;
  final Imgurl;
  final lorem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.network(Imgurl),
          SizedBox(
            height: 50,
          ),
          Text(
            Name,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 300,
              child: Text(
                lorem,
                style: TextStyle(fontWeight: FontWeight.w600),
              ))
        ],
      ),
    );
  }
}
