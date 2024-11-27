import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'option_select_custom_model.dart';
export 'option_select_custom_model.dart';

class OptionSelectCustomWidget extends StatefulWidget {
  const OptionSelectCustomWidget({
    super.key,
    this.icon,
    String? optionName,
    this.iconName,
  }) : optionName = optionName ?? 'Tomar Foto';

  final Widget? icon;
  final String optionName;
  final Widget? iconName;

  @override
  State<OptionSelectCustomWidget> createState() =>
      _OptionSelectCustomWidgetState();
}

class _OptionSelectCustomWidgetState extends State<OptionSelectCustomWidget> {
  late OptionSelectCustomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OptionSelectCustomModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
            child: FlutterFlowIconButton(
              borderRadius: 0.0,
              buttonSize: 40.0,
              hoverIconColor: FlutterFlowTheme.of(context).tertiary,
              icon: widget.iconName!,
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          Text(
            widget.optionName,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  color: FlutterFlowTheme.of(context).secondary,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}
