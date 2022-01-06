import 'package:flutter/material.dart';
import '../../main.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        padding: const EdgeInsets.only(top: 100),
        shrinkWrap: true,
        children: [
          Center(
            child: FractionallySizedBox(
              widthFactor: 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ProjectCard(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              AppRoutes.retroMucicApp.path,
                            );
                          },
                          text: 'Android',
                          title: 'Retro Music',
                        ),
                      ),
                      Expanded(
                        child: ProjectCard(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              AppRoutes.paiseApp.path,
                            );
                          },
                          text: 'Android',
                          title: 'Paisa',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.title,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => onPressed(),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).primaryTextTheme.headline6?.copyWith(),
              ),
              Text(
                text,
                style: Theme.of(context).primaryTextTheme.bodyText1?.copyWith(
                      color: Colors.grey,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
