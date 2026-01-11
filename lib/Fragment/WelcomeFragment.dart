import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Fragment/OnboardingFragment.dart';

class WelcomeFragment extends StatelessWidget {
  const WelcomeFragment({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Spacer(flex: 2),
              Image.network(
                "https://i.postimg.cc/Qtxc8xgv/welcome-image.png",
                height: size.height * 0.3,
                fit: BoxFit.contain,
              ),
              Spacer(flex: 3),
              Text(
                "Welcome to our freedom messaging app",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Freedom talk any person of your mother language.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.color?.withOpacity(0.64),
                ),
              ),
              Spacer(flex: 3,),
              TextButton.icon(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingFragment()));
              },
              icon: Icon(Icons.arrow_forward_ios,size: 18,),
                label: Text("Skip"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
