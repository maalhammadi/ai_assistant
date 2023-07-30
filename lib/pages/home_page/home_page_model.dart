import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String answer = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  // State field(s) for studenlevel widget.
  String? studenlevelValue;
  FormFieldController<String>? studenlevelValueController;
  // State field(s) for writinglevel widget.
  String? writinglevelValue;
  FormFieldController<String>? writinglevelValueController;
  // State field(s) for referencingstyle widget.
  String? referencingstyleValue;
  FormFieldController<String>? referencingstyleValueController;
  // State field(s) for numberofwords widget.
  TextEditingController? numberofwordsController;
  String? Function(BuildContext, String?)? numberofwordsControllerValidator;
  String? _numberofwordsControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for question widget.
  TextEditingController? questionController;
  String? Function(BuildContext, String?)? questionControllerValidator;
  String? _questionControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for direction widget.
  TextEditingController? directionController;
  String? Function(BuildContext, String?)? directionControllerValidator;
  String? _directionControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for topics widget.
  List<String>? topicsValues;
  FormFieldController<List<String>>? topicsValueController;
  // Stores action output result for [Backend Call - API (LLMCall)] action in Button widget.
  ApiCallResponse? apiResultb5c;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    numberofwordsControllerValidator = _numberofwordsControllerValidator;
    questionControllerValidator = _questionControllerValidator;
    directionControllerValidator = _directionControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    numberofwordsController?.dispose();
    questionController?.dispose();
    directionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
