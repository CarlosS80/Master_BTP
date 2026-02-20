CLASS zcl_data_gen_cms DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_data_gen_cms IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.



    DATA: ta_zheader_cms TYPE TABLE OF zheader_cms,
          ta_zitems_cms  TYPE TABLE OF zitems_cms,
          wa_zheader_cms TYPE zheader_cms,
          wa_zitems_cms  TYPE zitems_cms.

    TRY.

*    DELETE FROM zheader_cms.
*    DELETE FROM zitems_cms.

        CLEAR wa_zheader_cms.
        wa_zheader_cms-header_uuid = cl_system_uuid=>create_uuid_x16_static( ).
        wa_zheader_cms-id = 'O00001'.
        wa_zheader_cms-email = 'Test001@test.com'.
        wa_zheader_cms-firstname = 'Juan'.
        wa_zheader_cms-lastname = 'Guitierres'.
        wa_zheader_cms-country = 'VE'.
        wa_zheader_cms-createon = cl_abap_context_info=>get_system_date( ).
        wa_zheader_cms-deliverydate = cl_abap_context_info=>get_system_date( ).
        wa_zheader_cms-orderstatus = 'O'.
*    wa_zheader_cms-imageurl
        APPEND wa_zheader_cms TO ta_zheader_cms.



        CLEAR wa_zitems_cms.
        wa_zitems_cms-item_uuid          = cl_system_uuid=>create_uuid_x16_static( ).
        wa_zitems_cms-parent_uui         = wa_zheader_cms-header_uuid.
        wa_zitems_cms-id                 = 'OP00001'.
        wa_zitems_cms-name               = 'Pepsi'.
        wa_zitems_cms-description        = 'Refresco sabor cola'.
        wa_zitems_cms-releasedate        = cl_abap_context_info=>get_system_date( ).
        wa_zitems_cms-discontinueddate   = wa_zitems_cms-releasedate + 90.
        wa_zitems_cms-price              = '1.99'.
        wa_zitems_cms-currency           = 'USD'.
        wa_zitems_cms-height             = 3.
        wa_zitems_cms-width              = 2.
        wa_zitems_cms-depth              = 10.
        wa_zitems_cms-quantity           = 1000.
        wa_zitems_cms-unitofmeasure      = 'ST'.
        APPEND wa_zitems_cms TO ta_zitems_cms.

        CLEAR wa_zitems_cms.
        wa_zitems_cms-item_uuid          = cl_system_uuid=>create_uuid_x16_static( ).
        wa_zitems_cms-parent_uui         = wa_zheader_cms-header_uuid.
        wa_zitems_cms-id                 = 'OP00002'.
        wa_zitems_cms-name               = 'Polar'.
        wa_zitems_cms-description        = 'Cerveza pilsen'.
        wa_zitems_cms-releasedate        = cl_abap_context_info=>get_system_date( ).
        wa_zitems_cms-discontinueddate   = wa_zitems_cms-releasedate + 90.
        wa_zitems_cms-price              = '1.99'.
        wa_zitems_cms-currency           = 'USD'.
        wa_zitems_cms-height             = 3.
        wa_zitems_cms-width              = 2.
        wa_zitems_cms-depth              = 10.
        wa_zitems_cms-quantity           = 500.
        wa_zitems_cms-unitofmeasure      = 'ST'.
        APPEND wa_zitems_cms TO ta_zitems_cms.

        CLEAR wa_zitems_cms.
        wa_zitems_cms-item_uuid          = cl_system_uuid=>create_uuid_x16_static( ).
        wa_zitems_cms-parent_uui         = wa_zheader_cms-header_uuid.
        wa_zitems_cms-id                 = 'OP00003'.
        wa_zitems_cms-name               = 'Gatorade'.
        wa_zitems_cms-description        = 'Bebida deportiva'.
        wa_zitems_cms-releasedate        = cl_abap_context_info=>get_system_date( ).
        wa_zitems_cms-discontinueddate   = wa_zitems_cms-releasedate + 90.
        wa_zitems_cms-price              = '2.50'.
        wa_zitems_cms-currency           = 'USD'.
        wa_zitems_cms-height             = 3.
        wa_zitems_cms-width              = 2.
        wa_zitems_cms-depth              = 10.
        wa_zitems_cms-quantity           = 300.
        wa_zitems_cms-unitofmeasure      = 'ST'.
        APPEND wa_zitems_cms TO ta_zitems_cms.

        CLEAR wa_zheader_cms.
        wa_zheader_cms-header_uuid = cl_system_uuid=>create_uuid_x16_static( ).
        wa_zheader_cms-id = 'O00002'.
        wa_zheader_cms-email = 'Test002@test.com'.
        wa_zheader_cms-firstname = 'Alberto'.
        wa_zheader_cms-lastname = 'Valdez'.
        wa_zheader_cms-country = 'VE'.
        wa_zheader_cms-createon = cl_abap_context_info=>get_system_date( ).
        wa_zheader_cms-deliverydate = cl_abap_context_info=>get_system_date( ).
        wa_zheader_cms-orderstatus = 'O'.
*    wa_zheader_cms-imageurl
        APPEND wa_zheader_cms TO ta_zheader_cms.

        CLEAR wa_zitems_cms.
        wa_zitems_cms-item_uuid          = cl_system_uuid=>create_uuid_x16_static( ).
        wa_zitems_cms-parent_uui         = wa_zheader_cms-header_uuid.
        wa_zitems_cms-id                 = 'OP00001'.
        wa_zitems_cms-name               = 'Pepsi'.
        wa_zitems_cms-description        = 'Refresco sabor cola'.
        wa_zitems_cms-releasedate        = cl_abap_context_info=>get_system_date( ).
        wa_zitems_cms-discontinueddate   = wa_zitems_cms-releasedate + 90.
        wa_zitems_cms-price              = '1.99'.
        wa_zitems_cms-currency           = 'USD'.
        wa_zitems_cms-height             = 3.
        wa_zitems_cms-width              = 2.
        wa_zitems_cms-depth              = 10.
        wa_zitems_cms-quantity           = 1000.
        wa_zitems_cms-unitofmeasure      = 'ST'.
        APPEND wa_zitems_cms TO ta_zitems_cms.

        CLEAR wa_zitems_cms.
        wa_zitems_cms-item_uuid          = cl_system_uuid=>create_uuid_x16_static( ).
        wa_zitems_cms-parent_uui         = wa_zheader_cms-header_uuid.
        wa_zitems_cms-id                 = 'OP00002'.
        wa_zitems_cms-name               = 'Polar'.
        wa_zitems_cms-description        = 'Cerveza pilsen'.
        wa_zitems_cms-releasedate        = cl_abap_context_info=>get_system_date( ).
        wa_zitems_cms-discontinueddate   = wa_zitems_cms-releasedate + 90.
        wa_zitems_cms-price              = '1.99'.
        wa_zitems_cms-currency           = 'USD'.
        wa_zitems_cms-height             = 3.
        wa_zitems_cms-width              = 2.
        wa_zitems_cms-depth              = 10.
        wa_zitems_cms-quantity           = 500.
        wa_zitems_cms-unitofmeasure      = 'ST'.
        APPEND wa_zitems_cms TO ta_zitems_cms.

      CATCH cx_uuid_error INTO DATA(lx_uuid_error).
        out->write( lx_uuid_error->get_text( ) ).
        RETURN.
    ENDTRY.

    INSERT zheader_cms FROM TABLE @ta_zheader_cms.
    INSERT zitems_cms FROM TABLE @ta_zitems_cms.
    out->write( 'Header data inserted successfully!' ).
  ENDMETHOD.

ENDCLASS.
