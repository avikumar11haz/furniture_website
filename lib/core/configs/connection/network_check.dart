import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_website/app/section/main/main_section.dart';
import 'package:furniture_website/core/providers/scroll_provider.dart';
import 'package:provider/provider.dart';

import 'bloc/connected_bloc.dart';

class NChecking extends StatelessWidget {
  const NChecking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConnectedBloc, ConnectedState>(
      listener: (context, state) {},
      builder: (context, state) {
        final scrollProvider = Provider.of<ScrollProvider>(context);
        if (state is ConnectedSucessState) {
          //  return const MainPage();
          return MainPage();
        } else {
          return MainPage();
        }
      },
    );
  }
}

class NoConnectionErorr extends StatelessWidget {
  const NoConnectionErorr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Connection failed!"),
          ],
        ),
      ),
    );
  }
}
// TODO
