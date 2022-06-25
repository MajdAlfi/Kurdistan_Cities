import 'package:flutter/material.dart';
import 'package:kurdistan_cities/Cities.dart';
import 'package:kurdistan_cities/Mock_Data/Mock_data.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(1, 209, 216, 213),
          title: Text('Kurdistan Cities'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => builder(context, index),
            separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: 0,
                ),
            itemCount: mockData.length),
      ),
    );
  }
}

Widget builder(BuildContext context, int index) {
  return GestureDetector(
    onTap: () => {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => cities(
              Name: mockData[index]["Name"].toString(),
              Imgurl: mockData[index]["Img_url"].toString(),
              lorem: mockData[index]["Lorem"].toString())))
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 50),
        Container(
          height: 180,
          child: Stack(
            children: [
              Image.network(
                mockData[index]["Img_url"].toString(),
                height: 150,
                width: 250,
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 0,
                right: 20,
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 210, 209, 209),
                  ),
                  child: Center(
                    child: Text(
                      mockData[index]["Name"].toString(),
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
