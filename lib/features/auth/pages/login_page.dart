// import 'package:flutter/material.dart';
// import 'package:flutterflow_ui/flutterflow_ui.dart';

// class LoginModel extends FlutterFlowModel<LoginWidget> {
//   ///  State fields for stateful widgets in this page.

//   final unfocusNode = FocusNode();
//   // State field(s) for emailAddress widget.
//   FocusNode? emailAddressFocusNode;
//   TextEditingController? emailAddressTextController;
//   String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
//   // State field(s) for password widget.
//   FocusNode? passwordFocusNode;
//   TextEditingController? passwordTextController;
//   late bool passwordVisibility;
//   String? Function(BuildContext, String?)? passwordTextControllerValidator;

//   @override
//   void initState(BuildContext context) {
//     passwordVisibility = false;
//   }

//   @override
//   void dispose() {
//     emailAddressFocusNode?.dispose();
//     emailAddressTextController?.dispose();

//     passwordFocusNode?.dispose();
//     passwordTextController?.dispose();
//   }
// }


// class LoginWidget extends StatefulWidget {
//   const LoginWidget({super.key});

//   @override
//   State<LoginWidget> createState() => _LoginWidgetState();
// }

// class _LoginWidgetState extends State<LoginWidget>
//     with TickerProviderStateMixin {
//   late LoginModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   final animationsMap = <String, AnimationInfo>{};

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => LoginModel());

//     _model.emailAddressTextController ??= TextEditingController();
//     _model.emailAddressFocusNode ??= FocusNode();

//     _model.passwordTextController ??= TextEditingController();
//     _model.passwordFocusNode ??= FocusNode();

//     animationsMap.addAll({
//       'containerOnPageLoadAnimation': AnimationInfo(
//         trigger: AnimationTrigger.onPageLoad,
//         effectsBuilder: () => [
//           VisibilityEffect(duration: 1.ms),
//           FadeEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 300.0.ms,
//             begin: 0.0,
//             end: 1.0,
//           ),
//           MoveEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 300.0.ms,
//             begin: Offset(0.0, 140.0),
//             end: Offset(0.0, 0.0),
//           ),
//           ScaleEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 300.0.ms,
//             begin: Offset(0.9, 1.0),
//             end: Offset(1.0, 1.0),
//           ),
//           TiltEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 300.0.ms,
//             begin: Offset(-0.349, 0),
//             end: Offset(0, 0),
//           ),
//         ],
//       ),
//     });
//   }

//   @override
//   void dispose() {
//     _model.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
//         body: Container(
//           height: double.infinity,
//           decoration: BoxDecoration(
//             color: Color(0xFF101F3C),
//           ),
//           alignment: AlignmentDirectional(0.0, -1.0),
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 32.0),
//                   child: Container(
//                     width: 200.0,
//                     height: 70.0,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(16.0),
//                     ),
//                     alignment: AlignmentDirectional(0.0, 0.0),
//                     child: Text(
//                       'brand.ai',
//                       style: FlutterFlowTheme.of(context).displaySmall.override(
//                             fontFamily: 'Outfit',
//                             color: Colors.white,
//                             letterSpacing: 0.0,
//                           ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(16.0),
//                   child: Container(
//                     width: double.infinity,
//                     constraints: BoxConstraints(
//                       maxWidth: 570.0,
//                     ),
//                     decoration: BoxDecoration(
//                       color: FlutterFlowTheme.of(context).secondaryBackground,
//                       boxShadow: [
//                         BoxShadow(
//                           blurRadius: 4.0,
//                           color: Color(0x33000000),
//                           offset: Offset(
//                             0.0,
//                             2.0,
//                           ),
//                         )
//                       ],
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     child: Align(
//                       alignment: AlignmentDirectional(0.0, 0.0),
//                       child: Padding(
//                         padding: EdgeInsets.all(32.0),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.max,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Welcome Back',
//                               textAlign: TextAlign.center,
//                               style: FlutterFlowTheme.of(context)
//                                   .displaySmall
//                                   .override(
//                                     fontFamily: 'Outfit',
//                                     letterSpacing: 0.0,
//                                   ),
//                             ),
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(
//                                   0.0, 12.0, 0.0, 24.0),
//                               child: Text(
//                                 'Fill out the information below in order to access your account.',
//                                 textAlign: TextAlign.center,
//                                 style: FlutterFlowTheme.of(context)
//                                     .labelMedium
//                                     .override(
//                                       fontFamily: 'Readex Pro',
//                                       letterSpacing: 0.0,
//                                     ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(
//                                   0.0, 0.0, 0.0, 16.0),
//                               child: Container(
//                                 width: double.infinity,
//                                 child: TextFormField(
//                                   controller: _model.emailAddressTextController,
//                                   focusNode: _model.emailAddressFocusNode,
//                                   autofocus: true,
//                                   autofillHints: [AutofillHints.email],
//                                   obscureText: false,
//                                   decoration: InputDecoration(
//                                     labelText: 'Email',
//                                     labelStyle: FlutterFlowTheme.of(context)
//                                         .labelLarge
//                                         .override(
//                                           fontFamily: 'Readex Pro',
//                                           letterSpacing: 0.0,
//                                         ),
//                                     enabledBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: FlutterFlowTheme.of(context)
//                                             .primaryBackground,
//                                         width: 2.0,
//                                       ),
//                                       borderRadius: BorderRadius.circular(12.0),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: FlutterFlowTheme.of(context)
//                                             .primary,
//                                         width: 2.0,
//                                       ),
//                                       borderRadius: BorderRadius.circular(12.0),
//                                     ),
//                                     errorBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: FlutterFlowTheme.of(context)
//                                             .alternate,
//                                         width: 2.0,
//                                       ),
//                                       borderRadius: BorderRadius.circular(12.0),
//                                     ),
//                                     focusedErrorBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: FlutterFlowTheme.of(context)
//                                             .alternate,
//                                         width: 2.0,
//                                       ),
//                                       borderRadius: BorderRadius.circular(12.0),
//                                     ),
//                                     filled: true,
//                                     fillColor: FlutterFlowTheme.of(context)
//                                         .primaryBackground,
//                                   ),
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyLarge
//                                       .override(
//                                         fontFamily: 'Readex Pro',
//                                         letterSpacing: 0.0,
//                                       ),
//                                   keyboardType: TextInputType.emailAddress,
//                                   validator: _model
//                                       .emailAddressTextControllerValidator
//                                       .asValidator(context),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(
//                                   0.0, 0.0, 0.0, 16.0),
//                               child: Container(
//                                 width: double.infinity,
//                                 child: TextFormField(
//                                   controller: _model.passwordTextController,
//                                   focusNode: _model.passwordFocusNode,
//                                   autofocus: true,
//                                   autofillHints: [AutofillHints.password],
//                                   obscureText: !_model.passwordVisibility,
//                                   decoration: InputDecoration(
//                                     labelText: 'Password',
//                                     labelStyle: FlutterFlowTheme.of(context)
//                                         .labelLarge
//                                         .override(
//                                           fontFamily: 'Readex Pro',
//                                           letterSpacing: 0.0,
//                                         ),
//                                     enabledBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: FlutterFlowTheme.of(context)
//                                             .primaryBackground,
//                                         width: 2.0,
//                                       ),
//                                       borderRadius: BorderRadius.circular(12.0),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: FlutterFlowTheme.of(context)
//                                             .primary,
//                                         width: 2.0,
//                                       ),
//                                       borderRadius: BorderRadius.circular(12.0),
//                                     ),
//                                     errorBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: FlutterFlowTheme.of(context)
//                                             .alternate,
//                                         width: 2.0,
//                                       ),
//                                       borderRadius: BorderRadius.circular(12.0),
//                                     ),
//                                     focusedErrorBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: FlutterFlowTheme.of(context)
//                                             .alternate,
//                                         width: 2.0,
//                                       ),
//                                       borderRadius: BorderRadius.circular(12.0),
//                                     ),
//                                     filled: true,
//                                     fillColor: FlutterFlowTheme.of(context)
//                                         .primaryBackground,
//                                     suffixIcon: InkWell(
//                                       onTap: () => setState(
//                                         () => _model.passwordVisibility =
//                                             !_model.passwordVisibility,
//                                       ),
//                                       focusNode: FocusNode(skipTraversal: true),
//                                       child: Icon(
//                                         _model.passwordVisibility
//                                             ? Icons.visibility_outlined
//                                             : Icons.visibility_off_outlined,
//                                         color: FlutterFlowTheme.of(context)
//                                             .secondaryText,
//                                         size: 24.0,
//                                       ),
//                                     ),
//                                   ),
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyLarge
//                                       .override(
//                                         fontFamily: 'Readex Pro',
//                                         letterSpacing: 0.0,
//                                       ),
//                                   validator: _model
//                                       .passwordTextControllerValidator
//                                       .asValidator(context),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(
//                                   0.0, 0.0, 0.0, 16.0),
//                               child: FFButtonWidget(
//                                 onPressed: () async {
//                                   GoRouter.of(context).prepareAuthEvent();

//                                   final user =
//                                       await authManager.signInWithEmail(
//                                     context,
//                                     _model.emailAddressTextController.text,
//                                     _model.passwordTextController.text,
//                                   );
//                                   if (user == null) {
//                                     return;
//                                   }

//                                   context.goNamedAuth('null', context.mounted);
//                                 },
//                                 text: 'Sign In',
//                                 options: FFButtonOptions(
//                                   width: double.infinity,
//                                   height: 44.0,
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       0.0, 0.0, 0.0, 0.0),
//                                   iconPadding: EdgeInsetsDirectional.fromSTEB(
//                                       0.0, 0.0, 0.0, 0.0),
//                                   color: FlutterFlowTheme.of(context).primary,
//                                   textStyle: FlutterFlowTheme.of(context)
//                                       .titleSmall
//                                       .override(
//                                         fontFamily: 'Readex Pro',
//                                         color: Colors.white,
//                                         letterSpacing: 0.0,
//                                       ),
//                                   elevation: 3.0,
//                                   borderSide: BorderSide(
//                                     color: Colors.transparent,
//                                     width: 1.0,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12.0),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(
//                                   16.0, 0.0, 16.0, 24.0),
//                               child: Text(
//                                 'Or sign in with',
//                                 textAlign: TextAlign.center,
//                                 style: FlutterFlowTheme.of(context)
//                                     .labelMedium
//                                     .override(
//                                       fontFamily: 'Readex Pro',
//                                       letterSpacing: 0.0,
//                                     ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(
//                                   0.0, 0.0, 0.0, 16.0),
//                               child: FFButtonWidget(
//                                 onPressed: () async {
//                                   GoRouter.of(context).prepareAuthEvent();
//                                   final user = await authManager
//                                       .signInWithGoogle(context);
//                                   if (user == null) {
//                                     return;
//                                   }

//                                   context.goNamedAuth('null', context.mounted);
//                                 },
//                                 text: 'Continue with Google',
//                                 icon: FaIcon(
//                                   FontAwesomeIcons.google,
//                                   size: 20.0,
//                                 ),
//                                 options: FFButtonOptions(
//                                   width: double.infinity,
//                                   height: 44.0,
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       0.0, 0.0, 0.0, 0.0),
//                                   iconPadding: EdgeInsetsDirectional.fromSTEB(
//                                       0.0, 0.0, 0.0, 0.0),
//                                   color: FlutterFlowTheme.of(context)
//                                       .secondaryBackground,
//                                   textStyle: FlutterFlowTheme.of(context)
//                                       .titleSmall
//                                       .override(
//                                         fontFamily: 'Readex Pro',
//                                         color: FlutterFlowTheme.of(context)
//                                             .primaryText,
//                                         letterSpacing: 0.0,
//                                       ),
//                                   elevation: 0.0,
//                                   borderSide: BorderSide(
//                                     color: FlutterFlowTheme.of(context)
//                                         .primaryBackground,
//                                     width: 2.0,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12.0),
//                                   hoverColor: FlutterFlowTheme.of(context)
//                                       .primaryBackground,
//                                 ),
//                               ),
//                             ),

//                             // You will have to add an action on this rich text to go to your login page.
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(
//                                   0.0, 12.0, 0.0, 12.0),
//                               child: RichText(
//                                 textScaler: MediaQuery.of(context).textScaler,
//                                 text: TextSpan(
//                                   children: [
//                                     TextSpan(
//                                       text: 'Don\'t have an account?  ',
//                                       style: TextStyle(),
//                                     ),
//                                     TextSpan(
//                                       text: 'Sign Up here',
//                                       style: FlutterFlowTheme.of(context)
//                                           .bodyMedium
//                                           .override(
//                                             fontFamily: 'Readex Pro',
//                                             color: FlutterFlowTheme.of(context)
//                                                 .primary,
//                                             letterSpacing: 0.0,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                     )
//                                   ],
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyMedium
//                                       .override(
//                                         fontFamily: 'Readex Pro',
//                                         letterSpacing: 0.0,
//                                       ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ).animateOnPageLoad(
//                       animationsMap['containerOnPageLoadAnimation']!),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
