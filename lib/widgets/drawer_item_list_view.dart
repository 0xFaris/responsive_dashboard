import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'Dashboard', imagePath: Assets.imagesDashboard),
    DrawerItemModel(
      title: 'My Transaction',
      imagePath: Assets.imagesMyTransctions,
    ),
    DrawerItemModel(title: 'Statistics', imagePath: Assets.imagesStatistics),

    DrawerItemModel(
      title: 'Wallet Account',
      imagePath: Assets.imagesWalletAccount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      imagePath: Assets.imagesMyInvestments,
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: index == selectedIndex,
            ),
          ),
        );
      },
    );
  }
}
