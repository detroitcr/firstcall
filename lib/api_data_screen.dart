import 'package:flutter/material.dart';
import 'package:practice/API/api.dart';
import 'package:practice/MODELS/api_models.dart';

class ApiDataScreen extends StatefulWidget {
  const ApiDataScreen({Key? key}) : super(key: key);

  @override
  State<ApiDataScreen> createState() => _ApiDataScreenState();
}

class _ApiDataScreenState extends State<ApiDataScreen> {
  ApiPracticeModel apiPracticeModel = ApiPracticeModel();
  APIService apiService = APIService();
  bool isLoading = true;
  @override
  void initState() {
    apiService.callAPI().then((value) {
      apiPracticeModel = value;
      isLoading = false;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoading ?const Center(child:  CircularProgressIndicator()): ListView.builder(
          scrollDirection: Axis.vertical,
            itemCount: apiPracticeModel.data!.length,
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  Text(
                    apiPracticeModel.data![index].name!,
                    style: const TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    apiPracticeModel.data![index].color!,
                    style: const TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    apiPracticeModel.data![index].color!,
                    style: const TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ],
              );
            })));
  }
}
