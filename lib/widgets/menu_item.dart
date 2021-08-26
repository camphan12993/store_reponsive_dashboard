import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  final IconData icon;
  final String label;
  const MenuItem({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late AnimationController _iconAnimationController;
  late Animation _colorIcon;
  late Animation _colorBg;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    _iconAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    _colorIcon =
        ColorTween(begin: Colors.white, end: Theme.of(context).primaryColor)
            .animate(_iconAnimationController);
    _colorBg =
        ColorTween(begin: Theme.of(context).primaryColor, end: Colors.white)
            .animate(_animationController);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorBg,
      builder: (context, child) => MouseRegion(
          onEnter: (e) {
            _animationController.forward();
            _iconAnimationController.forward();
          },
          onExit: (e) {
            _animationController.reverse();
            _iconAnimationController.reverse();
          },
          child: Container(
            decoration: BoxDecoration(
                color: _colorBg.value, borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: AnimatedBuilder(
                animation: _colorIcon,
                builder: (context, child) => Icon(
                  widget.icon,
                  size: 24,
                  color: _colorIcon.value,
                ),
              ),
            ),
          )),
    );
  }
}
