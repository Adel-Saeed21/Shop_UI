import 'package:flutter/material.dart';
import 'package:smarket/widget/ItemCard.dart';
import 'package:smarket/widget/CatogoriesItem.dart';

List<CatogoriesItem> Item = [
  const CatogoriesItem(
    photo: "images/il_1080xN.2293112578_6g71.jpg",
    text: "Men",
    does: men,
    title: "Men",
  ),
  const CatogoriesItem(
    title: "woman",
    photo: "images/OIP (1).jpeg",
    text: "Women",
    does: women,
  ),
  CatogoriesItem(
    photo: "images/OIP (3).jpeg",
    text: "Tech",
    does: tech,
    title: 'Tech',
  )
];
List<ItemCard> sales = [
  const ItemCard(
    image: "images/whiteheadphone.png",
    itemName: 'Headphone pro',
  ),
  const ItemCard(image: "images/SmartWatch.png", itemName: "Smart watch"),
  const ItemCard(image: "images/thjpeg.jpeg", itemName: "Iphone")
];
List<ItemCard> tech = [
  const ItemCard(image: "images/blackheadphone.png", itemName: "headphone pro"),
  const ItemCard(image: "images/SmartWatch.png", itemName: "smart watch"),
  const ItemCard(image: "images/blueheadphone.png", itemName: "headphone pro"),
  const ItemCard(image: "images/SmartWatch.png", itemName: "Smart watch")
];
const List<ItemCard> men = [
  ItemCard(image: "images/Shose.png", itemName: "shose"),
  ItemCard(image: "images/shirt.png", itemName: "shirt"),
  ItemCard(image: "images/suit.png", itemName: "suit"),
  ItemCard(image: "images/suit2.png", itemName: "suit"),
];
const List<ItemCard> women = [
  ItemCard(image: "images/woman3.png", itemName: ""),
  ItemCard(image: "images/woman3.png", itemName: ""),
  ItemCard(image: "images/woman1.png", itemName: ""),
  ItemCard(image: "images/woman2.png", itemName: ""),
  ItemCard(image: "images/woman4.png", itemName: "")
];
GlobalKey<FormState> SignUp = GlobalKey();
