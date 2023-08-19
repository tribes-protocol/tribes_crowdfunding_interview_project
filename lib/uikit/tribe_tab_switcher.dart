import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeSwitcherTab {
  TribeSwitcherTab({
    required this.label,
    required this.child,
    this.selectedColor,
    this.unselectedColor,
  });

  final Widget label;
  final Widget child;

  final Color? selectedColor;
  final Color? unselectedColor;
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

class _TribeTabSwircherState extends State<TribeTabSwircher> with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                24.0,
              ),
              color: context.colors.labelLight1,
            ),
            labelColor: context.colors.labelDark1,
            unselectedLabelColor: context.colors.labelLight1,
            tabs: [
              if (tab1.selectedColor != null || tab1.unselectedColor != null)
                Tab(
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        _selectedIndex == 0 ? tab1.selectedColor! : tab1.unselectedColor!,
                        BlendMode.srcIn),
                    child: tab1.label,
                  ),
                )
              else
                Tab(child: tab1.label),
              if (tab2.selectedColor != null || tab2.unselectedColor != null)
                Tab(
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        _selectedIndex == 1 ? tab2.selectedColor! : tab2.unselectedColor!,
                        BlendMode.srcIn),
                    child: tab2.label,
                  ),
                )
              else
                Tab(child: tab2.label),
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
