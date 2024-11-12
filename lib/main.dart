import 'package:flutter/material.dart';
import 'package:flutter_master_plan/views/plan_screen.dart';
import 'provider/plan_provider.dart'; // tambahkan ini untuk impor PlanProvider
import 'models/data_layer.dart'; // tambahkan ini untuk impor Plan

void main() => runApp(const MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: PlanProvider(
        notifier: ValueNotifier<Plan>(
            const Plan(name: 'New Plan', tasks: [])), // buat instance Plan baru
        child: const PlanScreen(),
      ),
    );
  }
}
