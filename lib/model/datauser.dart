import 'package:flutter/cupertino.dart';

class UserData{
  ImageProvider image;
  String name;
  String status;
  String time;

  UserData(this.image,this.name,this.status,this.time);

}
List<UserData> ChatData =[
  UserData(AssetImage("images/image1.jpg"), "Jane Russel ", "Awesome Setup", "Now"),
  UserData(AssetImage("images/image2.jpg") ,"Glady's Murphy", "That's Great", "Yesterday"),
  UserData(AssetImage("images/image3.jpg"), "Jorge Henry", "Hey where are you?","31 Mar"),
  UserData(AssetImage("images/image4.jpg"),"Philip Fox","Busy! Call me in 20 mins",  "28 Mar"),
  UserData(AssetImage("images/image5.jpg"), "Debra Hawkins", "Thankyou, It's awesome", "23 Mar"),
  UserData(AssetImage("images/image6.jpg"), "Jacob Pena",  "will update you in evening", "17 Mar" ),
  UserData(AssetImage("images/image7.jpg"), "Andrey Jones", "Can you please share the file?", "24 Feb"),
  UserData(AssetImage("images/image8.jpg"),"John Wick", "How are you?",  "18 Feb"),
  UserData(AssetImage("images/image9.jpg"),"Andrew Philip","Busy! Call me in 5 mins","Now"),
  UserData(AssetImage("images/image10.jpg"),"Hanna Henry","Thank You","Today"),

];