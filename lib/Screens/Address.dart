import 'package:flutter/material.dart';
import 'package:shopuo/Components/AddressResultComponent.dart';
import 'package:shopuo/Components/HeaderComponent.dart';
import 'package:shopuo/Components/SearchComponent.dart';
import 'package:shopuo/Models/AddressModel.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  final List<AddressModel> _addreses = addresses;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: HeaderComponent(
          leading: "assets/svg_icons/chevron-left.svg",
          title: "Address",
          trailing: "assets/svg_icons/plus.svg",
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SearchComponent(
                icon: "assets/svg_icons/search.svg",
                hintText: "Search addresses...",
              ),
            ),
            SizedBox(
              height: 40,
            ),
            AddressResultComponent(
              results: _addreses,
            )
          ],
        ),
      ),
    );
  }
}