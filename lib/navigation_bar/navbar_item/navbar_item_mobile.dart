import 'package:flutter/material.dart';
import 'package:hemanth_dev/datamodels/navbar_item_model.dart';
import 'package:stacked/stacked.dart';

class NavBarItemMobile extends ViewModelWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return ListTile(
      leading: Icon(
        model.iconData,
        color: Colors.white,
      ),
      title: Text(
        model.title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onTap: () {},
    );
  }
}
