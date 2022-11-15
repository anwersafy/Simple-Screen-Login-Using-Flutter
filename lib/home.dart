import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppBarEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            leading: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            title: const Text('              HomePage'),
            actions: [
              Icon(Icons.search),
              Icon(Icons.notifications),
            ],
          ),
          body: Column(children: [
            Container(
              width: 200.0,
              alignment: Alignment.bottomCenter,
              child: Padding(

                padding: const EdgeInsets.all(22.0),

                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22)
                    ),

                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Stack
                    (
                    alignment: Alignment.bottomCenter,
                      children: [

                    Image(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg'),
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: Colors.black.withOpacity(.5),
                      width: double.infinity,
                      child: Text(
                        'Flower',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                       vertical: 10.0,
                        horizontal: 10.0
                      ),
                    ),
                  ]),
                ),
              ),
            )
          ]),
        ));
  }
}
