import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  final bool isLiked;
  final void Function(bool isLiked) onLiked;

  LikeButton({required this.isLiked, required this.onLiked});

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  late bool _isLiked;

  @override
  void initState() {
    super.initState();
    _isLiked = widget.isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: _isLiked ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
      onPressed: () {
        setState(() {
          _isLiked = !_isLiked;
        });
        widget.onLiked(_isLiked);
      },
    );
  }
}
