part of onboarding;

class _OnboardingModel extends TTChangeNotifier<_OnboardingView> {
  int pageIndex = 0;
  void onPageChange(int value) {
    if (pageIndex != value) {
      pageIndex = value;
      notifyListeners();
    }
  }

  void onLogin() {
    Navigator.of(context!).push(
      MaterialPageRoute(
        builder: (_) {
          return createLogin();
        },
      ),
    );
  }
}
