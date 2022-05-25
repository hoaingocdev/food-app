part of login;

class _LoginViewState extends TTState<_LoginModel, _LoginView> {
  @override
  Widget buildWithModel(BuildContext context, _LoginModel model) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Cl.color212931,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
