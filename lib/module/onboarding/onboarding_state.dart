part of onboarding;

class _OnboardingViewState extends TTState<_OnboardingModel, _OnboardingView> {
  @override
  Widget buildWithModel(BuildContext context, _OnboardingModel model) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 95),
            child: Center(
              child: Image.asset(Id.img_ting),
            ),
          ),
          const SizedBox(height: 17),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.48,
            child: PageView(
              onPageChanged: model.onPageChange,
              children: const [
                BackgroundWidget(
                  asset: Id.img_background1,
                  title: 'Find Your Favorite Food',
                  text: 'Find your favorite food anytime from your existing location easily',
                ),
                BackgroundWidget(
                  asset: Id.img_background2,
                  title: 'FExploring New Restaurants',
                  text: 'The new restaurants will be updated, you will enjoy the experience at new food',
                ),
                BackgroundWidget(
                  asset: Id.img_background3,
                  title: 'Eat With Your Family',
                  text: 'The restaurant for family filter helps youfind favorite food easy for members',
                ),
              ],
            ),
          ),
          const SizedBox(height: 36),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              builDot(isSelected: model.pageIndex == 0),
              const SizedBox(width: 16),
              builDot(isSelected: model.pageIndex == 1),
              const SizedBox(width: 16),
              builDot(isSelected: model.pageIndex == 2),
            ],
          ),
          const SizedBox(height: 36),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TTButtonWidget(
              onPressed: model.onLogin,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Skip for now',
            style: St.body14500.copyWith(color: Cl.color60666C),
          )
        ],
      ),
    );
  }

  Widget builDot({bool isSelected = false}) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Cl.color60666C : Cl.colorBEC2C5,
      ),
    );
  }
}
