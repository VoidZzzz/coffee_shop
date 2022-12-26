import 'package:coffee_shop/widgets/list_view_cappuccino.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 1,
          child: TabBar(
            controller: tabController,
            labelColor: Colors.deepOrange,
            unselectedLabelColor: Colors.white70,
            tabs: const [
              Tab(text: "Cappuccino"),
              Tab(text: "Expresso"),
              Tab(text: "Latte"),
            ],
          ),
        ),
        Expanded(
          flex: 6,
          child: TabBarView(
            controller: tabController,
            children: const [
              CapppuListView(imageScale: 2, title: "Cappuccino", image: 'images/cappy.jpeg', price: '5.25', subtitle: 'with Oat Milk'),
              Text('hi'),
              Text('hi'),
            ],
          ),
        ),
      ],
    );
  }
}
