import 'package:admin_dashboard/constants/app_theme.dart';
import 'package:admin_dashboard/constants/responsive.dart';
import 'package:admin_dashboard/routing/route_names.dart';
import 'package:admin_dashboard/screens/dash_board_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _form = GlobalKey<FormState>();
  bool isloading = false;
  final TextEditingController _telephone = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: Container(
          alignment: Alignment.center,
          child: SizedBox(
            height: size.height / 1.3,
            width: size.width / 1.3,
            child: Card(
              elevation: 10,
              child: Row(
                children: [
                  if (!Responsive.isMobile(context))
                    Expanded(
                        child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    bleu,
                                    mainColor,
                                  ],
                                  begin: const FractionalOffset(0.0, 0.0),
                                  end: const FractionalOffset(1.0, 0.0),
                                  stops: const [0.0, 1.0],
                                  tileMode: TileMode.clamp),
                            ),
                            child: const Image(
                              image: AssetImage('assets/images/logo.png'),
                            ))),
                  Expanded(
                      child: Form(
                    key: _form,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            logoWidget(),
                            titleText(),
                            const SizedBox(height: 20),
                            telephoneBuild(),
                            const SizedBox(height: 20),
                            passwordBuild(),
                            const SizedBox(height: 20),
                            loginButtonBuild(),
                            const SizedBox(height: 20),
                            forgotPasswordWidget(),
                          ],
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget logoWidget() {
    final size = MediaQuery.of(context).size;
    return Image.asset(
      "assets/images/logo.png",
      height: size.height / 5,
      width: size.width / 5,
    );
  }

  Widget titleText() {
    final bodyText1 = Theme.of(context).textTheme.bodyText1;
    return Container(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Text(
        'Bienvenue sur E-Station',
        style: GoogleFonts.raleway(
            textStyle: bodyText1, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }

  Widget telephoneBuild() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        controller: _telephone,
        decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.person,
            ),
            labelText: 'Téléphone'),
      ),
    );
  }

  Widget passwordBuild() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        controller: _password,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
          ),
          labelText: 'Password',
        ),
      ),
    );
  }

  Widget loginButtonBuild() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: const EdgeInsets.only(bottom: 5),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 10),
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(LayoutRoute);
              },
              child: Text(
                'CONNEXION',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w700,
                  fontSize: MediaQuery.of(context).size.height / 50,
                ),
              ))),
    ]);
  }

  Widget forgotPasswordWidget() {
    final button = Theme.of(context).textTheme.button;
    return TextButton(
        onPressed: () {},
        child: Text(
          'Mot de passe oublié ?',
          style: GoogleFonts.raleway(textStyle: button),
          textAlign: TextAlign.start,
        ));
  }
}