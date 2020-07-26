*"* use this source file for your ABAP unit test classes


CLASS ltcl_commonregex DEFINITION FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS
.
*?﻿<asx:abap xmlns:asx="http://www.sap.com/abapxml" version="1.0">
*?<asx:values>
*?<TESTCLASS_OPTIONS>
*?<TEST_CLASS>ltcl_Commonregex
*?</TEST_CLASS>
*?<TEST_MEMBER>f_Cut
*?</TEST_MEMBER>
*?<OBJECT_UNDER_TEST>ZCL_COMMONREGEX
*?</OBJECT_UNDER_TEST>
*?<OBJECT_IS_LOCAL/>
*?<GENERATE_FIXTURE/>
*?<GENERATE_CLASS_FIXTURE/>
*?<GENERATE_INVOCATION>X
*?</GENERATE_INVOCATION>
*?<GENERATE_ASSERT_EQUAL>X
*?</GENERATE_ASSERT_EQUAL>
*?</TESTCLASS_OPTIONS>
*?</asx:values>
*?</asx:abap>
  PRIVATE SECTION.
    DATA:
      mo_cut      TYPE REF TO zcl_commonregex.  "class under test

    METHODS:
      setup,
      teardown,
      _get_emails FOR TESTING,
      _get_times FOR TESTING,
      _get_percentages FOR TESTING,
      _get_links FOR TESTING,
      _get_acronyms FOR TESTING RAISING cx_static_check,
      _get_addresses FOR TESTING RAISING cx_static_check,
      _get_credit_cards FOR TESTING RAISING cx_static_check,
      _get_hex_colors FOR TESTING RAISING cx_static_check,
      _get_ipv4 FOR TESTING RAISING cx_static_check,
      _get_money FOR TESTING RAISING cx_static_check,
      _get_phones FOR TESTING RAISING cx_static_check,
      _get_date FOR TESTING RAISING cx_static_check.


ENDCLASS.       "ltcl_Commonregex


CLASS ltcl_commonregex IMPLEMENTATION.

  METHOD _get_emails.
    DATA: lt_exp TYPE rfc_tt_strings.

    APPEND 'associative@mail.com' TO lt_exp.

    cl_abap_unit_assert=>assert_equals( act = mo_cut->get_emails( ) exp = lt_exp msg = 'Testing emails').
  ENDMETHOD.


  METHOD setup.
    DATA: l_text1 TYPE string,
          l_text2 TYPE string,
          l_text3 TYPE string,
          l_text4 TYPE string,
          l_text5 TYPE string,
          l_text6 TYPE string,
          l_text7 TYPE string
          .

    l_text1 = 'John, please get that article on http://linkedin.com to me by 5:00PM\n'.
    l_text2 = 'on Jan 9th 2012. 4:00 would be ideal, actually. If you have any questions,\n'.
    l_text3 = 'you can reach my associate at (012)-345-6789 or associative@mail.com .\n'.
    l_text4 = 'I''ll be on UK during the whole week on a J.R.R. Tolkien P.L.C. convention 67%.'.
    l_text5 = 'price was $5,000.90 and localhost is 127.0.0.1 '.
    l_text6 = 'hex is #000055 and address is 56 Fifth Avenue, Rosebud, Vic 3939'.
    l_text7 = 'Your item was delivered in or at the mailbox on September 1, 2016 in TEXAS, MT 59102'.

    mo_cut = NEW #( i_text = |{ l_text1 } { l_text2 } { l_text3 } { l_text4 } { l_text5 } { l_text6 } { l_text7 }| ).

  ENDMETHOD.



  METHOD teardown.

  ENDMETHOD.

  METHOD _get_times.
    DATA: lt_exp TYPE rfc_tt_strings.

    APPEND '5:00PM' TO lt_exp.
    APPEND '4:00' TO lt_exp.

    cl_abap_unit_assert=>assert_equals( act = mo_cut->get_times( ) exp = lt_exp msg = 'Testing times').
  ENDMETHOD.

  METHOD _get_percentages.
    DATA: lt_exp TYPE rfc_tt_strings.

    APPEND '67%' TO lt_exp.

    cl_abap_unit_assert=>assert_equals( act = mo_cut->get_percentages( ) exp = lt_exp msg = 'Testing percentages').
  ENDMETHOD.

  METHOD _get_links.
    DATA: lt_exp TYPE rfc_tt_strings.

    APPEND 'https://linkedin.com' TO lt_exp.

    cl_abap_unit_assert=>assert_equals( act = mo_cut->get_links( ) exp = lt_exp msg = 'Testing links').
  ENDMETHOD.

  METHOD _get_acronyms.
    DATA: lt_exp TYPE rfc_tt_strings.

    APPEND 'J.R.R.' TO lt_exp.
    APPEND 'P.L.C.' TO lt_exp.

    cl_abap_unit_assert=>assert_equals( act = mo_cut->get_acronyms( ) exp = lt_exp msg = 'Testing acronyms').
  ENDMETHOD.

  METHOD _get_addresses.
    DATA: lt_exp TYPE rfc_tt_strings.

    APPEND 'www.linkedin.com' TO lt_exp.

    cl_abap_unit_assert=>assert_equals( act = mo_cut->get_addresses( ) exp = lt_exp msg = 'Testing address').
  ENDMETHOD.

  METHOD _get_credit_cards.
    DATA: lt_exp TYPE rfc_tt_strings.

    APPEND '5555 5555 4444 1111' TO lt_exp.

    cl_abap_unit_assert=>assert_equals( act = mo_cut->get_credit_cards( ) exp = lt_exp msg = 'Testing credit card').
  ENDMETHOD.

  METHOD _get_hex_colors.
    DATA: lt_exp TYPE rfc_tt_strings.

    APPEND '#000055' TO lt_exp.

    cl_abap_unit_assert=>assert_equals( act = mo_cut->get_hex_colors( ) exp = lt_exp msg = 'Testing hex').
  ENDMETHOD.

  METHOD _get_ipv4.
    DATA: lt_exp TYPE rfc_tt_strings.

    APPEND '127.0.0.1' TO lt_exp.

    cl_abap_unit_assert=>assert_equals( act = mo_cut->get_ipv4( ) exp = lt_exp msg = 'Testing ipv4').
  ENDMETHOD.

  METHOD _get_money.
    DATA: lt_exp TYPE rfc_tt_strings.

    APPEND '$5,000.90' TO lt_exp.

    cl_abap_unit_assert=>assert_equals( act = mo_cut->get_money( ) exp = lt_exp msg = 'Testing money').
  ENDMETHOD.

  METHOD _get_phones.
    DATA: lt_exp TYPE rfc_tt_strings.

    APPEND '(012)-345-6789' TO lt_exp.

    cl_abap_unit_assert=>assert_equals( act = mo_cut->get_phones( ) exp = lt_exp msg = 'Testing phones').
  ENDMETHOD.

  METHOD _get_date.
    DATA: lt_exp TYPE rfc_tt_strings.

    APPEND 'September 1, 2016' TO lt_exp.

    cl_abap_unit_assert=>assert_equals( act = mo_cut->get_date( ) exp = lt_exp msg = 'Testing date').

  ENDMETHOD.


ENDCLASS.
