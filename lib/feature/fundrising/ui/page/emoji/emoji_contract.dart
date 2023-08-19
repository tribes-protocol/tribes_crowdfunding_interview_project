import 'dart:ui';

class EmojiContract {
  static const String path = '/emoji';
  static const String name = 'emoji';
}

class EmojiParams {
  const EmojiParams(this.emoji, this.color);

  final String emoji;
  final Color color;
}

class EmojiResult {
  const EmojiResult(this.emoji, this.color);

  final String emoji;
  final Color color;
}
