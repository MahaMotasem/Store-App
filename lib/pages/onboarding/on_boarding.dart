import 'package:flutter/material.dart';
import 'package:store_app/pages/sign_in/sign_in.dart';
import 'package:store_app/pages/splash/splash_content.dart';
import 'package:store_app/widgets/custom_elevated_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Market Mate, Let’s shop!",
      "image": "https://i.postimg.cc/mhhVywp9/splash-1.png"
    },
    {
      "text":
          "We help people connect with store \n making shopping easier,smarter, and more enjoyable",
      "image": "https://i.postimg.cc/PNcy3w0R/splash-2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "https://i.postimg.cc/wRtVxqR2/splash-3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"],
                    text: splashData[index]['text'],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => AnimatedContainer(
                            duration: const Duration(milliseconds: 250),
                            margin: const EdgeInsets.only(right: 5),
                            height: 6,
                            width: currentPage == index ? 20 : 6,
                            decoration: BoxDecoration(
                              color: currentPage == index
                                  ? const Color(0xFFFF7643)
                                  : const Color(0xFFD8D8D8),
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(flex: 3),
                      CustomElevatedButton(
                        text: "Continue",
                        onPressed:  () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInScreen(),
                ));
                        },
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

