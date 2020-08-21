import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:handy/presentation/pages/home/custom_raised_button.dart';
import '../../../utils/constants/assets.dart';
import '../../shared/app_colors.dart';
import './custom_drawer.dart';
import './custom_progress_indicator.dart';
import './custom_progress_value.dart';
import './home_list_item.dart';

/// build [HomePage] of [Handy]
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// used to show [SnackBar]
  final scaffoldKey = GlobalKey<ScaffoldState>();

  ScrollController _scrollController;

  bool _isExpanded = true;

  List<Widget> _items = [
    HomeListItem(
      title: 'Calorie',
      iconPath: Assets.icons.calorie,
      rightTopWidget: CustomProgressIndicator(0.4),
      leftBottomWidget: CustomProgressValue(
        title: 'Cal',
        totalPart: 1800,
        completedPart: 782,
      ),
      rightBottomWidget: CustomRaisedButton(
        title: 'Add',
        onTap: () {},
      ),
    ),
    HomeListItem(
      title: 'Water',
      iconPath: Assets.icons.waterDrop,
      rightTopWidget: CustomProgressIndicator(0.6),
      leftBottomWidget: CustomProgressValue(
        title: 'glasses',
        totalPart: 12,
        completedPart: 7,
      ),
      rightBottomWidget: Container(),
    ),
    HomeListItem(
      title: 'Sleep',
      iconPath: Assets.icons.moon,
      rightTopWidget: CustomProgressIndicator(0.9),
      leftBottomWidget: CustomProgressValue(
        title: 'hours',
        totalPart: 8,
        completedPart: 7,
      ),
      rightBottomWidget: CustomRaisedButton(
        title: 'Edit',
        onTap: () {},
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _isExpanded = _scrollController.hasClients &&
              _scrollController.offset < (200.0 - kToolbarHeight - 20);
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawerScrimColor: AppColors.primaryColor,
        key: scaffoldKey,
        drawer: CustomDrawer(),
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
              backgroundColor: AppColors.primaryColor,
              elevation: 0,
              leading: IconButton(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                icon: Icon(
                  Icons.menu,
                  color: _isExpanded ? Colors.white : Colors.black,
                ),
                onPressed: () {
                  scaffoldKey.currentState.openDrawer();
                },
              ),
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                title: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      _isExpanded
                          ? 'Good morning, Kanan\n'
                              'you should take \'Orphenadrine\' at 9PM'
                          : 'Good morning, Kanan',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: _isExpanded ? Colors.white : Colors.black,
                            fontWeight: _isExpanded
                                ? FontWeight.w600
                                : FontWeight.normal,
                          ),
                    ),
                  ),
                ),
                collapseMode: CollapseMode.parallax,
                background: Image.asset(
                  Assets.images.forYou,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => _items[i],
                childCount: _items.length,
              ),
            ),
            SliverFillRemaining(),
          ],
        ),
      ),
    );
  }
}
