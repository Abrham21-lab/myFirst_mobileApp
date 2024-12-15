import 'package:flutter/material.dart';

class ContextMenuWidget extends StatelessWidget {
  final Widget child;

  ContextMenuWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onSecondaryTapDown: (details) {
        showMenu(
          context: context,
          position: RelativeRect.fromLTRB(
            details.globalPosition.dx,
            details.globalPosition.dy,
            details.globalPosition.dx,
            details.globalPosition.dy,
          ),
          items: [
            PopupMenuItem(value: 'copy', child: Text('Copy')),
            PopupMenuItem(value: 'paste', child: Text('Paste')),
            PopupMenuItem(value: 'delete', child: Text('Delete')),
          ],
        ).then((value) {
          if (value != null) {
            _handleMenuSelection(context, value);
          }
        });
      },
      child: child,
    );
  }

  void _handleMenuSelection(BuildContext context, String value) {
    switch (value) {
      case 'copy':
      // Implement copy functionality
        break;
      case 'paste':
      // Implement paste functionality
        break;
      case 'delete':
      // Implement delete functionality
        break;
    }
  }
}
