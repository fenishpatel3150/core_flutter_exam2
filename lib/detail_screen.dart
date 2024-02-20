import 'package:core_flutter_exam2/utils/product.dart';
import 'package:flutter/material.dart';

class detailscreen extends StatefulWidget {
  const detailscreen({super.key});

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEEE5DB),
        leading: Padding(
          padding:  EdgeInsets.only(left: 300),
          child: Icon(Icons.favorite_border),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              color: Colors.black,
              child: Image.asset('assets/image1.jpg',fit: BoxFit.fill,),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Men T-shirt ',style: TextStyle(color: Colors.grey,fontSize: 15),),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Icon(Icons.star,color: Colors.yellow,size: 20,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Text('4.9',style: TextStyle(
                        fontSize: 15
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 20),
                  child: Text(productimage[0]['name'],style: TextStyle(color: Colors.black,fontSize: 20),),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 20),
                  child: Text('Product Details',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 20),
                  child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting\n industry. Lorem Ipsum has been the industrys standard dummy text \never since the 1500s, when an unknown printer took a\n galley of type and scrambled it to make a type specimen book.\n It has survived not only five centuries, ',style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.normal),),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 20),
                  child: Text('Select Size',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.brown),
                    ),
                    child: Center(child: Text('S',style: TextStyle(color: Colors.white),),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.brown),
                    ),
                    child: Center(child: Text('M',style: TextStyle(color: Colors.white),),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.brown),
                    ),
                    child: Center(child: Text('L',style: TextStyle(color: Colors.white),),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.brown),
                    ),
                    child: Center(child: Text('Xl',style: TextStyle(color: Colors.white),),),
                  ),
                ),
              ],
            )

          ],

        ),
      ),
    );
  }
}
