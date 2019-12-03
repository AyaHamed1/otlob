import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildTop(BuildContext context, String image, String resName, String date,){
  return Padding(
    padding: const EdgeInsets.only(top: 5, bottom: 5),
    child: Container(
      color: Colors.white,
      height: 110, width: MediaQuery.of(context).size.width,
      child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(children: <Widget>[
              Image.asset(image, height: 70, width: 70,),
              SizedBox(width: 10,),
              Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(resName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Row(children: <Widget>[
                    Text(date, style: TextStyle(fontSize: 15),),
                    SizedBox(width: 10,),
                    Text('14:30 pm', style: TextStyle(fontSize: 15),),
                  ],),
                  SizedBox(height: 10,),
                  Row(children: <Widget>[
                    Text("Order ID: 18544376", style: TextStyle(fontSize: 15),),
                    SizedBox(width: 10,),
                    Text('Delivered', style: TextStyle(fontSize: 15, color: Colors.green),),
                  ],)
                ],),
            ],),
          ),
    ),
  );
}
Widget buildAddress(BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      height: 150, width: MediaQuery.of(context).size.width,
      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Text('Delivery Address', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
      SizedBox(height: 10,),
      Text('Aya Hamed', style: TextStyle(color: Colors.grey, fontSize: 15),),
        SizedBox(height: 5,),
      Text('Hay EL Gamaa', style: TextStyle(color: Colors.grey, fontSize: 15),),
        SizedBox(height: 5,),
      Text('Masged AL Nukaiti, 35, 2', style: TextStyle(color: Colors.grey, fontSize: 15),),
        SizedBox(height: 5,),
      Text('شاؤع متفرع من احمد ماهر', style: TextStyle(color: Colors.grey, fontSize: 15),),
        SizedBox(height: 5,),
      Text('Mobile: 01065593103', style: TextStyle(color: Colors.grey, fontSize: 15),),
    ],),
    color: Colors.white,
    ),
  );
}

Widget buildSubtotal(String name, String price, Color color){
  return Row(children: <Widget>[
    Text(name, style: TextStyle(fontSize: 15, color: color),),
    Expanded(child: SizedBox(),),
    Text(price, style: TextStyle(fontSize: 15))
  ],);
}

Widget buildSummary(String order){
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Text('Order Summary', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          SizedBox(height: 5,),
          Row(children: <Widget>[
            Text('1  x  ', style: TextStyle(fontSize: 15, color: Colors.grey)),
            Text(order, style: TextStyle(fontSize: 15, color: Colors.grey)),
            Expanded(child: SizedBox(),),
            Text('61.40', style: TextStyle(fontSize: 15, color: Colors.grey))
          ],),
          Divider(thickness: 2,),
          buildSubtotal('Subtotal', 'EGP 61.40', Colors.grey),
            SizedBox(height: 18,),
          buildSubtotal('Delivery Fee', 'EGP 13.16', Colors.grey),
            SizedBox(height: 18,),
          buildSubtotal('VAT', 'EGP 10.44', Colors.grey),
            SizedBox(height: 18,),
          buildSubtotal('Total', 'EGP 85.00', Colors.black),
            SizedBox(height: 18,),
          Divider(thickness: 2,),
          buildSubtotal('Payment Method', 'Debit/Credit Card', Colors.black),
          SizedBox(height: 18,),
          buildSubtotal('Delivery Time', '45 min', Colors.black),
        ],),
      ),
    ),
  );
}