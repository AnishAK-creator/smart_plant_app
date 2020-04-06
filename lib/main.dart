import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: Main(),
  ));
}
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(

          backgroundColor: Colors.green,
          title: Text(
            " Plant Shop",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            RaisedButton(
              onPressed: () {
                print("Clicked");
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Buy();
                }));



              },
              child: Text(
                "Next",
                style: TextStyle(
                    color: Colors.green
                ),
              ),
            ),
          ],



        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: 400,
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Our Plants",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Floweret Plants",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Price:\$66 | Size: Medium | Specie: Flowering",

                    ),

                    Row(
                        children: <Widget>[
                          Image.asset('assets/images/jasmine3.jpg'),


                        ]

                    ),

                  ],
                ),
              ),
            ),
            Text(
              "Explore More",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),

            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                fillColor: Colors.white,
                filled: true,
              ),

            ),
            SizedBox(
              height: 12,
            ),

            Row(

              children: <Widget>[

                Container(
                  height: 200,
                  width:150,
                  color: Colors.green,
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/images/rose2.jpg'),
                      Text(
                        "Rose",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                ),

                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 200,
                  width:150,
                  color: Colors.green,
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/images/Jasmine.jpg'),
                      Text(
                        "Jasmine",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),

          ],

        ),
      ),
    );
  }
}
class Buy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        actions: <Widget>[
          RaisedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text(
                "Go Back"
            ),
          ),
          SizedBox(
            width: 12,
          ),
        ],
        backgroundColor: Colors.green,

        title: Text(
          "Details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Reviews",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Family",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),

              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Size",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),

              ),
              SizedBox(
                width: 20,
              ),

            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.star,color: Colors.yellow),
              Icon(Icons.star,color: Colors.yellow),
              Icon(Icons.star,color: Colors.yellow),

              SizedBox(
                width: 20,
              ),
              Text(
                "Flowerlet",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Height: 62 Inc",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
              ),
              SizedBox(
                width: 20,
              ),

            ],
          ),
          Image.asset('assets/images/Jasmine.jpg'),
          Text(
            "\$200",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          Text(
            "Details:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Text(
            "Jasmine is a beautiful flower,it also gives good smell",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),
          ),

        ],

      ),


    );
  }
}

