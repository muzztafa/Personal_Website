import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    required double mediaHeight,
    required double mediaWidth,
    required BuildContext context,
    required String url,
    required String title,
    required String desc,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.fromLTRB(height * 0.1, height * 0.1, 0, 0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 3,
            )
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: SizedBox(
          height: 500,
          width: 100,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/bitmoji_hi.jpeg"),
              ),
              Text(
                "project.projectName",
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Lorem, ipsum doli modi quos culpa aut saepe! Alias!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 6),
                child: TextButton(
                  child: const Text(
                    'Check it Out',
                    style: TextStyle(fontSize: 17),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
