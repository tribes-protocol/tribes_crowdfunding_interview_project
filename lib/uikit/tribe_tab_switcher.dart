import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeSwitcherTab {
  TribeSwitcherTab({
    required this.label,
    required this.child,
  });

  final String label;
  final Widget child;
}

class TribeTabSwircher extends StatefulWidget {
  const TribeTabSwircher({
    super.key,
    required this.tabs,
  }) : assert(
          tabs.length == 2,
          'TribeTabSwircher support only 2 items',
        );

  final List<TribeSwitcherTab> tabs;

  @override
  State<TribeTabSwircher> createState() => _TribeTabSwircherState();
}

class _TribeTabSwircherState extends State<TribeTabSwircher>
    with SingleTickerProviderStateMixin {
  final GlobalKey _key = GlobalKey();
  late TabController _controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _controller = TabController(length: 2, vsync: this);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final tab1 = widget.tabs.first;
    final tab2 = widget.tabs.last;

    return Column(
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: context.colors.labelLight6,
            borderRadius: BorderRadius.circular(
              24,
            ),
          ),
          child: TabBar(
            controller: _controller,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                24.0,
              ),
              color: context.colors.labelLight1,
            ),
            labelColor: context.colors.labelDark1,
            unselectedLabelColor: context.colors.labelLight1,
            tabs: [
              Tab(
                child: Text(
                  tab1.label,
                  style: context.textStyles.body
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              Tab(
                child: Text(
                  tab2.label,
                  style: context.textStyles.body
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        TribeSpaceVertical.double(),
        Expanded(
          child: TabBarView(
            controller: _controller,
            children: [
              tab1.child,
              tab2.child,
            ],
          ),
        ),
      ],
    );
  }
}
