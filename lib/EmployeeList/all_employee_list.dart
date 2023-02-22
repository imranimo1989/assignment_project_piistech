import 'package:flutter/material.dart';

import '../Model/apiClient.dart';

class AllEmployeeList extends StatefulWidget {
  const AllEmployeeList({Key? key}) : super(key: key);

  @override
  State<AllEmployeeList> createState() => _AllEmployeeListState();
}

class _AllEmployeeListState extends State<AllEmployeeList> {
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
    await getUserListFromApi();
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
          await getUserListFromApi();
        },
        child: dataLoadingInProgress
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: getEmployeList.users?.length ?? 0,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: ListTile(
                        leading: SizedBox(
                            height: 80,
                            width: 80,
                            child: Image.network(
                                "${getEmployeList.users?[index].image ?? ""} ")),
                        title: Text(
                            "${getEmployeList.users?[index].firstName ?? ""} "
                            "${getEmployeList.users?[index].lastName ?? ""} "
                            "${getEmployeList.users?[index].maidenName ?? ""} "),
                        subtitle: Text(
                            "${getEmployeList.users?[index].company?.name ?? ""} "
                                "${getEmployeList.users?[index].company?.department ?? ""} "

                        ),
                        trailing: Text(
                            "${getEmployeList.users?[index].bloodGroup ?? ""} "),
                      ),
                    ),
                  );
                }),
      ),
    );
  }
}