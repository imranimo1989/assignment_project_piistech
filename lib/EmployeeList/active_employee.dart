import 'package:flutter/material.dart';

import '../Model/apiClient.dart';

class ActiveEmployee extends StatefulWidget {
  const ActiveEmployee({Key? key}) : super(key: key);

  @override
  State<ActiveEmployee> createState() => _ActiveEmployeeState();
}

class _ActiveEmployeeState extends State<ActiveEmployee> {
  bool dataLoadingInProgress = false;

  @override
  void initState() {
    getDataLoad();
    super.initState();
  }

  getDataLoad() async {
    setState(() {
      dataLoadingInProgress = true;
    });
    await getActiveEmployeeListFromApi();
    setState(() {
      dataLoadingInProgress = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Employee'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await getAllEmployeeListFromApi();
        },
        child: dataLoadingInProgress
            ? const Center(
          child: CircularProgressIndicator(),
        )
            : ListView.builder(
            itemCount: getActiveEmployeeData.activeEmployee?.length,
            itemBuilder: (context, index) {
              print(getActiveEmployeeData.activeEmployee?.length);
              return Card(

              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("${index+1}:   " "${getActiveEmployeeData.activeEmployee?[index].name?? ""}", style:const TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ),


              );

            }),
      ),
    );
  }
}
