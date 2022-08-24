import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_cat_happy/src/auth/components/custom_text_field.dart';
import 'package:flutter_app_cat_happy/src/auth/sing_up_screen.dart';
import 'package:flutter_app_cat_happy/src/base/base_screen.dart';
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color2 = Color(
      0xffFFFFFF,
    );

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Nome da aplicação
                    const FittedBox(
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontSize: 25,
                          ),
                          children: [
                            TextSpan(
                              text: 'Pet shop',
                              style: TextStyle(
                                  fontFamily: 'Muslish',
                                  color: Color(0xff4E4D4B),
                                  fontWeight: FontWeight.normal),
                            ),
                            TextSpan(
                              text: ' Cat Happy',
                              style: TextStyle(
                                  fontFamily: 'Muslish',
                                  color: Color(0xff100F0D),
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                    ),

                    //Categorias
                    SizedBox(
                      height: 18,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Mulish',
                            color: Color(0xff4E4D4B)),
                        child: AnimatedTextKit(
                          pause: Duration.zero,
                          repeatForever: true,
                          animatedTexts: [
                            FadeAnimatedText('Ração'),
                            FadeAnimatedText('Petiscos'),
                            FadeAnimatedText('Areias e Banhos'),
                            FadeAnimatedText('Arranhadores e Brinquedos'),
                            FadeAnimatedText('Famárcia'),
                            FadeAnimatedText('E muitos mais :)'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // formulário basic
              Container(
                height: 670,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                  color: color2,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/logo.jpeg'),
                    ),
                    Container(
                      height: 10,
                    ),

                    //email
                    const CustomTextField(
                      icon: Icons.email,
                      label: 'E-mail',
                      textInputType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),

                    //senha
                    const CustomTextField(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                      textInputAction: TextInputAction.done,
                    ),
                    // Botão de entrar
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        )),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (c) {
                                return const BaseScreen();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            fontSize: 18,
                            color: color2,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    //Botão de esqueceu a senha
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Esqueceu a senha ?',
                          style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff597C8F),
                          ),
                        ),
                      ),
                    ),

                    // Divisor
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              'Ou',
                              style: TextStyle(
                                color: Color(0xff4E4D4B),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Criar nova conta
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            side: const BorderSide(
                              width: 2,
                              color: Color(0xffCE4A95),
                            )),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c) {
                                return SingUpScreen();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Criar conta',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xffCE4A95),
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
