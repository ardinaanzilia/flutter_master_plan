import 'package:flutter/material.dart';
import 'package:flutter_master_plan/models/data_layer.dart';
import 'package:flutter_master_plan/provider/plan_provider.dart'; // pastikan impor PlanProvider

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();

    scrollController = ScrollController()
      ..addListener(() {
        // Menghapus fokus dari TextField saat scroll terjadi
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Mengambil Plan dari PlanProvider
    final planNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Master Plan Anzilia')),
      body: ValueListenableBuilder<Plan>(
        valueListenable: planNotifier, // Mendengarkan perubahan pada Plan
        builder: (context, plan, _) {
          return _buildList(plan, context); // Pass context to the list builder
        },
      ),
      floatingActionButton:
          _buildAddTaskButton(context), // Pass context as parameter
    );
  }

  // Fungsi untuk menambah task dengan BuildContext sebagai parameter
  Widget _buildAddTaskButton(BuildContext context) {
    // Ambil planNotifier menggunakan context
    ValueNotifier<Plan> planNotifier = PlanProvider.of(context);

    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        // Ambil data currentPlan dan tambah task baru
        Plan currentPlan = planNotifier.value;
        planNotifier.value = Plan(
          name: currentPlan.name,
          tasks: List<Task>.from(currentPlan.tasks)..add(const Task()),
        );
      },
    );
  }

  // Fungsi untuk membangun ListView
  Widget _buildList(Plan plan, BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      keyboardDismissBehavior: Theme.of(context).platform == TargetPlatform.iOS
          ? ScrollViewKeyboardDismissBehavior.onDrag
          : ScrollViewKeyboardDismissBehavior.manual,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(plan.tasks[index], index, context),
    );
  }

  // Fungsi untuk membangun task tile
  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    ValueNotifier<Plan> planNotifier = PlanProvider.of(context);

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          Plan currentPlan = planNotifier.value;
          planNotifier.value = Plan(
            name: currentPlan.name,
            tasks: List<Task>.from(currentPlan.tasks)
              ..[index] = Task(
                description: task.description,
                complete: selected ?? false,
              ),
          );
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          Plan currentPlan = planNotifier.value;
          planNotifier.value = Plan(
            name: currentPlan.name,
            tasks: List<Task>.from(currentPlan.tasks)
              ..[index] = Task(
                description: text,
                complete: task.complete,
              ),
          );
        },
      ),
    );
  }
}
