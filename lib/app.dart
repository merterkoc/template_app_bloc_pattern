import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_app_bloc_pattern/bloc/home_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        title: 'Template App Bloc Pattern',
        home: HomeView(),
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Template App Bloc Pattern'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Template App Bloc Pattern'),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<HomeBloc>().add(const HomeIncrement());
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 30),
              FloatingActionButton(
                onPressed: () {
                  context.read<HomeBloc>().add(const HomeDecrement());
                },
                child: const Icon(Icons.remove),
              ),
            ],
          ),
          const SizedBox(height: 30),
          FloatingActionButton(
            onPressed: () {
              context.read<HomeBloc>().add(const HomeReset());
            },
            child: const Icon(Icons.lock_reset),
          ),
          const SizedBox(height: 30),
          Text(
            context.select((HomeBloc bloc) => bloc.state.counter.toString()),
          ),
        ],
      ),
    );
  }
}
