import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopuo/Models/AddressModel.dart';
import 'package:shopuo/Styles/Color.dart';
import 'package:shopuo/Styles/Typography.dart';

class AddressCard extends StatelessWidget {
  final AddressModel address;

  const AddressCard({Key key, this.address}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.18,
      child: Container(
        child: ListTile(
          title: Text(
            address.title,
            style: MyTypography.heading6SB.copyWith(
              color: MyColor.neutralBlack,
            ),
          ),
          subtitle: Text(
            address.description,
            style: MyTypography.bodyInput.copyWith(
              color: MyColor.neutralBlack,
            ),
          ),
        ),
      ),
      secondaryActions: <Widget>[
        Container(
          color: MyColor.primaryGreen,
          child: Center(
            child: SvgPicture.asset("assets/svg_icons/edit-2.svg"),
          ),
        ),
        Container(
          color: MyColor.primaryRed,
          child: Center(
            child: SvgPicture.asset("assets/svg_icons/trash-2.svg"),
          ),
        ),
      ],
    );
  }
}