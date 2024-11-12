import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:proc/models/response/jobs/jobs_response.dart';
import 'package:proc/services/helpers/jobs_helper.dart';
import 'package:proc/views/common/exports.dart';
import 'package:proc/views/common/loader.dart';
import 'package:proc/views/ui/jobs/widgets/job_tile.dart';
import 'package:proc/views/ui/search/widgets/custom_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(kOrange.value),
          iconTheme: IconThemeData(color: Color(kLight.value)),
          title: CustomField(
            hintText: "Search for a job",
            controller: search,
            onEditingComplete: () {
              setState(() {});
            },
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: const Icon(AntDesign.search1),
            ),
          ),
          elevation: 0,
        ),
        body: const SearchLoading(
          text: "Start Searching For Jobs",
        ));
  }
}
