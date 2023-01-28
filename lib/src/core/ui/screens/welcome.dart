import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_docs_clone/gen/assets.gen.dart';
import 'package:google_docs_clone/gen/colors.gen.dart';
import 'package:google_docs_clone/src/core/extensions/build_context.dart';
import 'package:google_docs_clone/src/core/ui/widgets/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.65),
              BlendMode.darken,
            ),
            image: AssetImage(Assets.images.bgWelcome.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Google Docs',
                style: context.tt.headline1?.copyWith(
                  color: ColorName.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Collaborative document tools for your business',
                textAlign: TextAlign.center,
                style: context.tt.headline6?.copyWith(
                  color: ColorName.white,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Button.solid(
                text: 'TRY NOW',
                borderRadius: BorderRadius.circular(8),
                padding: const EdgeInsets.symmetric(
                  horizontal: 48,
                  vertical: 24,
                ),
                onTap: () => context.push('/home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
