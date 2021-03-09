import 'package:agriterra/presentation/core/constants/app_constants.dart';
import 'package:agriterra/presentation/core/helpers/ui_helper.dart';
import 'package:agriterra/presentation/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String pathIcon;
  final Color colorGradientStart;
  final Color colorGradientFinish;
  final bool isVertical;
  final Function onPressed;
  final TextTheme textTheme;
  final AppConstants constants;
  final menuIconsFolder = "assets/images/menu_icons/";

  MenuItem({
    this.title,
    this.subtitle,
    this.pathIcon,
    this.colorGradientStart,
    this.colorGradientFinish,
    this.isVertical = false,
    this.onPressed,
    this.textTheme,
    this.constants,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isVertical
          ? EdgeInsets.all(UIHelper.spaceMedium)
          : EdgeInsets.symmetric(horizontal: 22, vertical: 11),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: isVertical ? Alignment.topCenter : Alignment.centerLeft,
              end: isVertical ? Alignment.bottomCenter : Alignment.centerRight,
              colors: [colorGradientStart, colorGradientFinish],
            ),
            borderRadius: BorderRadius.circular(UIHelper.spaceMedium),
          ),
          child: isVertical ? _buildVerticalItem() : _buildHorizontalItem(),
        ),
      ),
    );
  }

  Widget _buildHorizontalItem() {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            "$menuIconsFolder$pathIcon",
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 28,
                right: 22,
                bottom: UIHelper.spaceMedium,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: textTheme.headline5.copyWith(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  subtitle.isNotEmpty
                      ? Text(
                          subtitle,
                          style: textTheme.subtitle2.copyWith(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        )
                      : SizedBox(),
                  UIHelper.verticalSpaceMedium(),
                  _seeChipBtn(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildVerticalItem() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 18,
      ),
      child: Container(
        height: 240,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Image.asset(
                  "$menuIconsFolder$pathIcon",
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UIHelper.verticalSpaceMedium(),
                  Text(
                    title,
                    style: textTheme.subtitle1.copyWith(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                  ),
                  subtitle.isNotEmpty
                      ? Text(
                          subtitle,
                          style: textTheme.subtitle2.copyWith(
                            fontSize: 11,
                            color: Colors.white,
                          ),
                          maxLines: 2,
                          textAlign: TextAlign.start,
                        )
                      : SizedBox(),
                ],
              ),
            ),
            UIHelper.verticalSpaceMedium(),
            Align(
              alignment: Alignment.centerRight,
              child: _seeChipBtn(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _seeChipBtn() {
    return Container(
      height: 30,
      child: Chip(
        elevation: 4,
        padding: EdgeInsets.symmetric(
          horizontal: 12,
        ),
        label: Text(
          constants.see,
          style: textTheme.bodyText2.copyWith(
            color: colorGradientFinish,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
