CLASS z_cl_voa_cds_rap DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.


    INTERFACES if_sadl_exit_calc_element_read .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_cl_voa_cds_rap IMPLEMENTATION.


  METHOD if_sadl_exit_calc_element_read~calculate.

    DATA: lt_data_in TYPE STANDARD TABLE OF zi_voa_view_entity_agency.
    lt_data_in = CORRESPONDING #( it_original_data ).

    LOOP AT lt_data_in ASSIGNING FIELD-SYMBOL(<fs_data>).
      <fs_data>-AbapName = 'Vitória Oliveira'.
    ENDLOOP.

    ct_calculated_data = CORRESPONDING #( lt_data_in ).

  ENDMETHOD.


  METHOD if_sadl_exit_calc_element_read~get_calculation_info.
  ENDMETHOD.
ENDCLASS.
