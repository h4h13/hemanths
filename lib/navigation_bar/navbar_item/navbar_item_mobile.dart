import 'package:flutter/material.dart';
import 'package:hemanth_dev/datamodels/navbar_item_model.dart';
import 'package:hemanth_dev/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:hemanth_dev/services/navigation_service.dart';

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
      onTap: () {
        locator<NavigationService>().navigateTo(model.navigationPath);
        Navigator.of(context).pop();
      },
    );
  }
}
