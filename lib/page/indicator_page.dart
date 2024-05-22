import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:indicator/components/app_styles.dart';
import 'package:indicator/components/app_text.dart';
import 'package:indicator/constatnts/colors.dart';

class IndicatorPage extends StatefulWidget {
  const IndicatorPage({super.key});

  @override
  _IndicatorPageState createState() => _IndicatorPageState();
}

class _IndicatorPageState extends State<IndicatorPage> {
  bool _showWelcomeMessage = false;
  bool _showInstruction = false;
  bool _showThankYouMessage = false;
  bool _showContainer = false;

  @override
  void initState() {
    super.initState();
    _startAnimationSequence();
  }

  void _startAnimationSequence() async {
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _showWelcomeMessage = true;
    });

    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _showInstruction = true;
    });

    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _showThankYouMessage = true;
    });

    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _showContainer = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blColor,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                AppText.title,
                style: AppStyles.titleStyle,
              ),
            ),
            const SizedBox(height: 80),
            const SpinKitFadingCircle(
              color: bColor,
              size: 110.0,
            ),
            const SizedBox(height: 60),
            Text(
              AppText.loadingMessage,
              textAlign: TextAlign.center,
              style: AppStyles.loadingMessageStyle,
            ),
            const SizedBox(height: 85),
            AnimatedOpacity(
              opacity: _showWelcomeMessage ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: Text(
                AppText.welcomeMessage,
                textAlign: TextAlign.center,
                style: AppStyles.welcomeMessageStyle,
              ),
            ),
            const SizedBox(height: 10),
            AnimatedOpacity(
              opacity: _showInstruction ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: Text(
                AppText.instruction,
                textAlign: TextAlign.center,
                style: AppStyles.instructionStyle,
              ),
            ),
            const SizedBox(height: 10),
            AnimatedOpacity(
              opacity: _showThankYouMessage ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: const Text(
                AppText.thankYouMessage,
                textAlign: TextAlign.center,
                style: AppStyles.thankYouMessageStyle,
              ),
            ),
            const SizedBox(height: 170),
            AnimatedOpacity(
              opacity: _showContainer ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage(),),);
                    },
                    child: Container(
                      width: 355,
                      height: 50,
                      decoration: ShapeDecoration(
                        gradient: const LinearGradient(
                          colors: [violet, fviolet],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 128,
                    top: 19,
                    child: Text(
                      AppText.containertext,
                      style: AppStyles.containertextstyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
