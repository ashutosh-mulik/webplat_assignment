import 'package:assignment/repo/models/UserModel.dart';
import 'package:assignment/screen/home/bloc/home_bloc.dart';
import 'package:assignment/screen/home/local_widgets/node.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      /// Create [HomeBloc] Provider
      create: (context) => HomeBloc(
        dataRepository: context.read(),
      )..add(HomeEventGetData()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Assignment"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              /// Show tree widget if data is received
              if (state is HomeDataReceived) {
                return ListView(
                  shrinkWrap: true,
                  children: generateTree(state.data, -1),
                );
              }

              /// Show [CircularProgressIndicator] while data is being loaded.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

  /// Method to generate tree nodes
  List<Node> generateTree(List<UserModel> data, int indx) {
    List<Node> nodeList = [];
    int index = indx + 1;
    for (UserModel element in data) {
      nodeList.add(
        Node(
          index: index,
          userName: element.username ?? '',
          name: element.name ?? '',
          backGroundColor: getBackgroundColor(element),
          children: generateTree(element.children ?? [], index),
        ),
      );
    }
    return nodeList;
  }

  /// Method to get Container background color
  Color getBackgroundColor(UserModel user) {
    /// 1. PackageAmount > 0 AND TotalAchievedIncome < TotalExpectedIncome ---- View must be in Green color.
    if ((user.packageAmount ?? 0) > 0 && ((user.totalAchievedIncome ?? 0) < (user.totalExpectedIncome ?? 0))) {
      return Colors.green;
    }

    /// 2. PackageAmount = 0 ---- View must be in Red color
    if ((user.packageAmount ?? 0) == 0) {
      return Colors.red;
    }

    /// 3. PackageAmount > 0 and TotalAchievedIncome >= TotalExpectedIncome ---- View must be in Pink color.
    if ((user.packageAmount ?? 0) > 0 && ((user.totalAchievedIncome ?? 0) >= (user.totalExpectedIncome ?? 0))) {
      return Colors.pink;
    }

    return Colors.green;
  }
}
