 // ignore_for_file: use_build_context_synchronously

 import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'loginPage_model.dart';
export 'loginPage_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  //  _model = createModel(context, () => LoginPageModel());
   

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.emailAddressLoginController ??= TextEditingController();
    _model.emailAddressLoginFocusNode ??= FocusNode();

    _model.passwordLoginController ??= TextEditingController();
    _model.passwordLoginFocusNode ??= FocusNode();

    _model.firstnameController ??= TextEditingController();
    _model.firstnameFocusNode ??= FocusNode();

    _model.lastnameController ??= TextEditingController();
    _model.lastnameFocusNode ??= FocusNode();

    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordCreateController ??= TextEditingController();
    _model.passwordCreateFocusNode ??= FocusNode();

    _model.passwordConfirmController ??= TextEditingController();
    _model.passwordConfirmFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor:const Color(0x001A1F24),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height * 1,
                    constraints: const BoxConstraints(
                      maxWidth: 600,
                    ),
                    decoration: const BoxDecoration(),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/qualia_logo.png',
                                    width: 142,
                                    height: 126,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: const Alignment(0, 0),
                                      child: TabBar(
                                        isScrollable: true,
                                        labelColor: const Color(0X006D5FED),
                                        unselectedLabelColor:const Color(0X00FFFFFF),
                                        labelPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                24, 0, 24, 0),
                                        unselectedLabelStyle: const TextStyle(),
                                        indicatorColor:const Color(0X006D5FED),                                            
                                        indicatorWeight: 3,
                                        tabs: const [
                                          Tab(
                                            text: 'Login',
                                            icon: FaIcon(
                                              FontAwesomeIcons.handHoldingHeart,
                                            ),
                                          ),
                                          Tab(
                                            text: 'Register',
                                            icon: Icon(
                                              Icons.how_to_reg,
                                            ),
                                          ),
                                        ],
                                        controller: _model.tabBarController,
                                        onTap: (i) async {
                                          [() async {}, () async {}][i]();
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        controller: _model.tabBarController,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24, 0, 24, 0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 20, 0, 0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .emailAddressLoginController,
                                                      focusNode: _model
                                                          .emailAddressLoginFocusNode,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Email Address',                                                        
                                                        hintText:
                                                            'Enter your email...',
                                                   enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        filled: true,
                                                        fillColor:const 
                                                            Color(0X001A1F24),
                                                        contentPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    24, 20, 24),
                                                      ),
                                                                                                      
                                                      validator: (value) {
                                                          if (value != null) {
                                                            if (value.contains('@') && value.endsWith('.com')) {
                                                              return null;
                                                            }
                                                            return 'Enter a Valid Email Address';
                                                          }
                                                          return null;
                                                        },
                                                  ),),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 12, 0, 0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .passwordLoginController,
                                                      focusNode: _model
                                                          .passwordLoginFocusNode,
                                                      obscureText: !_model
                                                          .passwordLoginVisibility,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Password',
                                                        hintText:'Enter your password...',
                                                       enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                           const 
                                                            Color(0X001A1F24),
                                                        contentPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    24, 20, 24),
                                                        suffixIcon: InkWell(
                                                          onTap: () => setState(
                                                            () => _model
                                                                    .passwordLoginVisibility =
                                                                !_model
                                                                    .passwordLoginVisibility,
                                                          ),
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                                  true),
                                                          child: Icon(
                                                            _model.passwordLoginVisibility
                                                                ? Icons
                                                                    .visibility_outlined
                                                                : Icons
                                                                    .visibility_off_outlined,
                                                            color:const 
                                                            Color(0X0095A1AC),
                                                            size: 20,
                                                          ),
                                                        ),
                                                      ),
                                                     validator: (value) {
                                                      if (value == null || value.isEmpty) {
                                                        return 'Please enter your Password';
                                                      }
                                                      return null;
                                                    },
                                                   ),
                                                  ),
                                                  // Padding(
                                                  //   padding:
                                                  //       const EdgeInsetsDirectional
                                                  //           .fromSTEB(
                                                  //               0, 24, 0, 0),
                                                  //   child:ElevatedButton(
                                                      
                                                  //     style:ElevatedButton.styleFrom(
                                                  //      shape: RoundedRectangleBorder(
                                                  //                         borderRadius: BorderRadius.circular(20), 
                                                  //   )),
                                                  //     onPressed: () async {
                                                  //       GoRouter.of(context)
                                                  //           .prepareAuthEvent();                                                       
                                                  //       final user =
                                                  //           await authManager
                                                  //               .signInWithEmail(
                                                  //         context,
                                                  //         _model
                                                  //             .emailAddressLoginController!
                                                  //             .text,
                                                  //         _model
                                                  //             .passwordLoginController!
                                                  //             .text,
                                                  //       );
                                                  //       if (user == null) {
                                                  //         return;
                                                  //       }

                                                      //   context.pushNamedAuth(
                                                      //       'DashboardPage',
                                                      //       context.mounted);
                                                      // },
                                                      // text: 'Login',
                                                      // options: FFButtonOptions(
                                                      //   width: 230,
                                                      //   height: 50,
                                                      //   padding:
                                        //                     const EdgeInsetsDirectional
                                        //                         .fromSTEB(
                                        //                             0, 0, 0, 0),
                                        //                 iconPadding:
                                        //                     const EdgeInsetsDirectional
                                        //                         .fromSTEB(
                                        //                             0, 0, 0, 0),
                                        //                 color:
                                        //                      const 
                                        //                     Color(0X009489F5),
                                        //                 textStyle:
                                        //                          (fontFamily:
                                        //                               'Manrope',
                                        //                           color:  const 
                                        //                     Color(0X00FFFFFF),
                                        //                         ),
                                        //                 elevation: 3,
                                        //                 borderSide: const BorderSide(
                                        //                   color: Colors
                                        //                       .transparent,
                                        //                   width: 1,
                                        //                 ),
                                        //                 borderRadius:
                                        //                     BorderRadius
                                        //                         .circular(40),
                                        //               ),
                                        //             ),
                                        // ),
                                                  
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24, 0, 24, 0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 20, 0, 0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .firstnameController,
                                                      focusNode: _model
                                                          .firstnameFocusNode,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'First name',
                                                       
                                                        hintText:
                                                            'Enter your first name...',
                                                   
                                                       
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        filled: true,
                                                        fillColor:const
                                                            Color(0X001A1F24),
                                                        contentPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    24, 20, 24),
                                                      ),
                                                                                                            
                                                      validator: (value) {
                                                            if (value == null || value.isEmpty) {
                                                              return 'Please enter first name'
                                                              ;
                                                            }
                                                            return null;
                                                          },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 20, 0, 0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .lastnameController,
                                                      focusNode: _model
                                                          .lastnameFocusNode,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Last name',
                                                       hintText:
                                                            'Enter your last name...',
                                                        
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        filled: true,
                                                        fillColor:const
                                                            Color(0X001A1F24),
                                                        contentPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    24, 20, 24),
                                                      ),
                                                      
                                                     validator: (value) {
                                                          if (value == null || value.isEmpty) {
                                                            return 'Name please?';
                                                          }
                                                          return null;
                                                        },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 20, 0, 0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .emailAddressController,
                                                      focusNode: _model
                                                          .emailAddressFocusNode,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Email Address',
                                                        
                                                        hintText:
                                                            'Enter your email...',
                                                        
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        filled: true,
                                                        fillColor:const
                                                            Color(0X001A1F24),
                                                        contentPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    24, 20, 24),
                                                      ),

                                                       validator: (value) {
                                                          if (value != null) {
                                                            if (value.contains('@') && value.endsWith('.com')) {
                                                              return null;
                                                            }
                                                            return 'Enter a Valid Email Address';
                                                          }
                                                          return null;
                                                        },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 12, 0, 0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .passwordCreateController,
                                                      focusNode: _model
                                                          .passwordCreateFocusNode,
                                                      obscureText: !_model
                                                          .passwordCreateVisibility,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Password',
                                                        
                                                        hintText:
                                                            'Enter your password...',
                                                       
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            const
                                                           Color(0X001A1F24),
                                                        contentPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    24, 20, 24),
                                                        suffixIcon: InkWell(
                                                          onTap: () => setState(
                                                            () => _model
                                                                    .passwordCreateVisibility =
                                                                !_model
                                                                    .passwordCreateVisibility,
                                                          ),
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                                  true),
                                                          child: Icon(
                                                            _model.passwordCreateVisibility
                                                                ? Icons
                                                                    .visibility_outlined
                                                                : Icons
                                                                    .visibility_off_outlined,
                                                            color: const Color(
                                                                0x98FFFFFF),
                                                            size: 20,
                                                          ),
                                                        ),
                                                      ),
                                                      
                                                       validator: (value) {
                                                          if (value == null || value.isEmpty) {
                                                            return 'Please enter password';
                                                          }
                                                          return null;
                                                        },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 12, 0, 0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .passwordConfirmController,
                                                      focusNode: _model
                                                          .passwordConfirmFocusNode,
                                                      obscureText: !_model
                                                          .passwordConfirmVisibility,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Confirm Password',
                                                       
                                                        hintText:
                                                            'Enter your password...',
                                                        
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        filled: true,
                                                        fillColor:const
                                                            Color(0X001A1F24),
                                                        contentPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    24, 20, 24),
                                                        suffixIcon: InkWell(
                                                          onTap: () => setState(
                                                            () => _model
                                                                    .passwordConfirmVisibility =
                                                                !_model
                                                                    .passwordConfirmVisibility,
                                                          ),
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                                  true),
                                                          child: Icon(
                                                            _model.passwordConfirmVisibility
                                                                ? Icons
                                                                    .visibility_outlined
                                                                : Icons
                                                                    .visibility_off_outlined,
                                                            color: const Color(
                                                                0x98FFFFFF),
                                                            size: 20,
                                                          ),
                                                        ),
                                                      ),
                                                      
                                                      validator: (value) {
                                                          if (value == null || value.isEmpty) {
                                                            return 'Please enter password';
                                                          }
                                                          return null;
                                                        },
                                                    ),
                                                  ),
                                                  // Padding(
                                                  //   padding:
                                                  //       const EdgeInsetsDirectional
                                                  //           .fromSTEB(
                                                  //               0, 24, 0, 24),
                                                  //   child: FFButtonWidget(
                                                      // onPressed: () async {
                                                      //   GoRouter.of(context)
                                                      //       .prepareAuthEvent();
                                                      //   if (_model
                                                      //           .passwordCreateController!
                                                      //           .text !=
                                                      //       _model
                                                      //           .passwordConfirmController!
                                                      //           .text) {
                                                      //     ScaffoldMessenger.of(
                                                      //             context)
                                                      //         .showSnackBar(
                                                      //       const SnackBar(
                                                      //         content: Text(
                                                      //           'Passwords don\'t match!',
                                                      //         ),
                                                      //       ),
                                                      //     );
                                                      //     return;
                                                      //   }

                                                      //   final user = supabase.auth.currentUser!.id;
                                                      //       await supabase
                                                      //           .createAccountWithEmail(
                                                      //     context,
                                                        //   _model
                                                        //       .emailAddressController!
                                                        //       .text,
                                                        //   _model
                                                        //       .passwordCreateController!
                                                        //       .text,
                                                        // );
                                                        // if (user == null) {
                                                        //   return;
                                                        // }

                                                        // await DoctorsTable()
                                                        //     .insert({
                                                        //   'doctor_id':
                                                        //       currentUserUid,
                                                        //   'created_at':
                                                        //       supaSerialize<
                                                        //               DateTime>(
                                                        //           getCurrentTimestamp),
                                                        //   'first_name': _model
                                                        //       .firstnameController!
                                                        //       .text,
                                                        //   'last_name': _model
                                                        //       .lastnameController
                                                        //       !
                                                        //       .text,
                                                      //     'email': _model
                                                      //         .emailAddressController!
                                                      //         .text,
                                                      //   });

                                                      //   context.pushNamedAuth(
                                                      //       'loginPage',
                                                      //       context.mounted);
                                                      // },
                                                      // text: 'Create Account',
                                                      // options: FFButtonOptions(
                                                      //   width: 230,
                                                      //   height: 50,
                                                      //   padding:
                                                      //       const EdgeInsetsDirectional
                                                      //           .fromSTEB(
                                                      //               0, 0, 0, 0),
                                                      //   iconPadding:
                                                      //       const EdgeInsetsDirectional
                                                      //           .fromSTEB(
                                                      //               0, 0, 0, 0),
                                                  //       color:const
                                                  //           Color(0X009489F5),
                                                  //       textStyle:
                                                  //          (  fontFamily:
                                                  //                     'Manrope',
                                                  //                 color:const Color(0X00FFFFFF)
                                                  //               ),
                                                  //       elevation: 3,
                                                  //       borderSide: const BorderSide(
                                                  //         color: Colors
                                                  //             .transparent,
                                                  //         width: 1,
                                                  //       ),
                                                  //       borderRadius:
                                                  //           BorderRadius
                                                  //               .circular(40),
                                                  //     ),
                                                  //   ),
                                                  // ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                       ) ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              //context.pushNamed('splashPage');
                            },
                            child:const  Icon(
                              Icons.arrow_back,
                              color: Color(0X0095A1AC),
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              )],
          ),
  ]),
      ),
    ));
  }
}
