import 'package:flutter/material.dart';

Widget profileCardMenu({
  required width
}){
  return Center(
    child: Container(
      width: width,
      child: Column(
        children: [
          Text(
            "My Order",
            
          ),
          Text(
            "My Favourite"
          ),
          Text(
            "My Address"
          ),
          Text(
            "My Account"
          ),
          Text(
            "Log Out"
          )
        ],
      ),
    ),
  );
}