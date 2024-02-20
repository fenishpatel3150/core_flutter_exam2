import 'package:core_flutter_exam2/utils/product.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New York USA',style: TextStyle(fontSize: 20),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xfff1f1f1),
                ),
                child: Icon(Icons.notifications)),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 30,left: 20),
                  child: Container(
                    height: 40,
                    width: 270,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff704f38)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Icon(Icons.search_rounded),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Search'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Padding(
                  padding:  EdgeInsets.only(top: 30,left: 5),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff704f38),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.menu,color: Colors.white,),
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    height: 180,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                         borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/image3.jpg',fit: BoxFit.fill,)),
                  ),
                )
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Category',style: TextStyle(fontSize: 20),),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text('See All',style: TextStyle(fontSize: 12,color:Color(0xff704f38) ),),
                ),
              ],
            ),
            SizedBox(height: 25,),
            SingleChildScrollView(
             scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(productname.length, (index) =>smallbox(index)),
              ),
            ),
            SizedBox(height: 25,),
          Column(
            children: List.generate(productimage.length, (index) => InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/second',arguments: productimage);
              },child: bigbox(index),
            )),
          ),

          ],
        ),
      ),

    );
  }
}

Widget smallbox(index) {
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.only(left: 10),
        child: Container(
          height: 35,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xff704f38),),
          ),
          child: Center(child: Text(productname[index]['name'])),

        ),
      )
    ],
  );
}

Widget bigbox(index){
  return Column(
    children: [
      Row(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                child: Padding(
                  padding:  EdgeInsets.only(top: 155),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Text(productimage[index]['name'],style: TextStyle(color: Colors.black,fontSize: 10),),
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(),
                              child: Text('4.9',style: TextStyle(
                                fontSize: 10
                              ),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(right: 110),
                        child: Text('${productimage[index]['price']}',style: TextStyle(color: Colors.black,fontSize: 10),),
                      ),

                    ],
                  ),
                ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(productimage[index]['image'],fit: BoxFit.fill,)),
                ),
              ),

            ],
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                child: Padding(
                  padding:  EdgeInsets.only(top: 155),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Text(productimage2[index]['name'],style: TextStyle(color: Colors.black,fontSize: 10),),
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(),
                              child: Text('4.9',style: TextStyle(
                                fontSize: 10
                              ),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(right: 110),
                        child: Text('${productimage2[index]['price']}',style: TextStyle(color: Colors.black,fontSize: 10),),
                      ),

                    ],
                  ),
                ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(productimage2[index]['image'],fit: BoxFit.fill,)),
                ),
              ),

            ],
          ),
        ],
      ),
    ],
  );
}
