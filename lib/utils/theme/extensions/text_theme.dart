import 'package:flutter/material.dart';

class AppTextTheme extends ThemeExtension<AppTextTheme> {
  final Color textColorLightTheme = const Color(0xffffffff);
  final Color textColorDarkTheme = const Color(0xff000000);

  final TextStyle title;

  final TextStyle subTitle;

  final TextStyle body;
  final TextStyle caption;

  const AppTextTheme({
    this.title = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: Color(0xff000000),
    ),
    this.subTitle = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Color(0xff000000),
    ),
    this.body = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color(0xff000000),
    ),
    this.caption = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xff000000),
    ),
  });

  factory AppTextTheme.dark() {
    return const AppTextTheme(
      title: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: Color(0xffffffff),
      ),
      subTitle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Color(0xffffffff),
      ),
      body: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color(0xffffffff),
      ),
      caption: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xffffffff),
      ),
    );
  }

  @override
  AppTextTheme copyWith({
    TextStyle? title,
    TextStyle? subTitle,
    TextStyle? body,
    TextStyle? caption,
  }) {
    return AppTextTheme(
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      body: body ?? this.body,
      caption: caption ?? this.caption,
    );
  }

  @override
  ThemeExtension<AppTextTheme> lerp(
    covariant ThemeExtension<AppTextTheme>? other,
    double t,
  ) {
    if (other == null) {
      return this;
    }

    if (other is AppTextTheme) {
      return AppTextTheme(
        title: TextStyle.lerp(title, other.title, t)!,
        subTitle: TextStyle.lerp(subTitle, other.subTitle, t)!,
        body: TextStyle.lerp(body, other.body, t)!,
        caption: TextStyle.lerp(caption, other.caption, t)!,
      );
    }

    return this;
  }
}
