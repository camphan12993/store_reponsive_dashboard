import 'package:flutter/material.dart';
import 'package:test_web/constaints.dart';

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
    final Size _size = MediaQuery.of(context).size;
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
            width: _size.width > screenMd ? 160 : null,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: _colorBg.value, borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: AnimatedBuilder(
                animation: _colorIcon,
                builder: (context, child) => Row(
                  children: [
                    Icon(
                      widget.icon,
                      size: 20,
                      color: _colorIcon.value,
                    ),
                    if (_size.width > screenMd) ...[
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        widget.label,
                        style: TextStyle(
                          color: _colorIcon.value,
                        ),
                      )
                    ] else
                      SizedBox.shrink(),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
