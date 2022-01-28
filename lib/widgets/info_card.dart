import 'package:flutter/material.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({
    Key? key,
    this.title,
    this.bodyWidget,
    required this.actionsButtons,
  }) : super(key: key);

  final String? title;
  final Widget? bodyWidget;
  final List<Widget> actionsButtons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title != null
                ? Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                      left: 16,
                      right: 16,
                      top: 16,
                    ),
                    child: Text(
                      title ?? '',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  )
                : const SizedBox.shrink(),
            bodyWidget != null
                ? Padding(
                    padding: const EdgeInsets.only(
                      bottom: 16,
                      left: 16,
                      right: 16,
                      top: 8,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: bodyWidget,
                    ),
                  )
                : const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 8,
                left: 16,
                right: 16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: actionsButtons,
              ),
            )
          ],
        ),
      ),
    );
  }
}
