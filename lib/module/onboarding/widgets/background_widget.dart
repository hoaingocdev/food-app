part of onboarding;

class BackgroundWidget extends StatelessWidget {
  final String asset;
  final String title;
  final String text;
  const BackgroundWidget({
    Key? key,
    required this.asset,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          asset,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 38),
        Text(
          title,
          style: St.body24600.copyWith(color: Cl.color212931),
        ),
        const SizedBox(height: 12),
        Text(
          text,
          style: St.body16400.copyWith(
            color: Cl.color60666C,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
