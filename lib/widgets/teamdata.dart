import 'package:test_searchable_dropdown/models/program.dart';
import 'package:test_searchable_dropdown/models/key_value_data.dart';
import 'package:test_searchable_dropdown/services/program_service.dart';
import 'package:test_searchable_dropdown/services/service_locator.dart';
import 'package:test_searchable_dropdown/widgets/formdatacard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
// import 'package:searchable_dropdown/searchable_dropdown.dart';

class TeamData extends StatefulWidget {
  @override
  _TeamDataState createState() => _TeamDataState();
}

class _TeamDataState extends State<TeamData> {
  DateTime selectedDate = DateTime.now();

  int selectedScrumMasterIs;
  int selectedProductOwnerIs;
  int programId;

  List<Program> programList;
  List<DropdownMenuItem<KeyValueData>> dropDownItemlist;
  int textScallingFactor;
  double textScallingFactorRadioButton;

  Map routeData = {};
  ProgramService _programService = locator<ProgramService>();

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      routeData = routeData.isNotEmpty
          ? routeData
          : ModalRoute.of(context).settings.arguments;
      getData();
    });
  }

  getData() async {
    programList = await _programService.getAllBasicProgramDetails();
    dropDownItemlist = programList
        .map((data) => DropdownMenuItem<KeyValueData>(
              child: Text(data.name),
              value: KeyValueData(idKey: data.id, value: data.name),
            ))
        .toList();
    setState(() {
      programId = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    textScallingFactor = MediaQuery.of(context).textScaleFactor.round();
    textScallingFactorRadioButton = textScallingFactor * 1.2;
    return Container(
      child: Text(
        "Without Searchable dropdown"
      ),
    );
  }
}
