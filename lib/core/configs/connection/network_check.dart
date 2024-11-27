import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/app/sections/main/main_section.dart';
import 'bloc/connected_cubit.dart';

class NChecking extends StatelessWidget {
  const NChecking({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConnectedCubit, ConnectedState>(
      listener: (context, state) {
         if (state is ConnectedFailureState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(
                const SnackBar(
                  content: Text('Internet Lost'),
                  behavior: SnackBarBehavior.floating,
                  ),

              );
        }
      },
      builder: (context, state) {
        if (state is ConnectedSuccessState) {
          return const MainPage();
        }else {
          return const NoConnectionErorr();
        }
      },
    );
  }
}

class NoConnectionErorr extends StatelessWidget {
  const NoConnectionErorr({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LoadingAnimationWidget.staggeredDotsWave(
            //     color: primaryColor, size: 50.0),
            // SizedBox(height: 3.h),
            Text("Connection failed!"),
          ],
        ),
      ),
    );
  }
}

