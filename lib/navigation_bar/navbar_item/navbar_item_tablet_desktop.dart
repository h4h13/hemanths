import 'package:flutter/material.dart';
import 'package:hemanth_dev/datamodels/navbar_item_model.dart';
import 'package:stacked/stacked.dart';

class NavBarItemTabletDesktop extends ViewModelWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return Text(
      model.title,
      style: Theme.of(context).textTheme.headline6.copyWith(
            color: Colors.white,
          ),
    );
  }
}
