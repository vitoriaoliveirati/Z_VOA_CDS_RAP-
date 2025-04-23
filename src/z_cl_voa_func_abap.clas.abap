CLASS z_cl_voa_func_abap DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_sadl_exit_calc_element_read .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_cl_voa_func_abap IMPLEMENTATION.


  METHOD if_sadl_exit_calc_element_read~calculate.

    DATA: lt_data_in TYPE STANDARD TABLE OF zi_voa_view_entity_agency.

    lt_data_in = CORRESPONDING #( it_original_data ). "Pegando os dados de entrada do it_original_data e jogando para a tabela interna lt_data_in

    LOOP AT lt_Data_in ASSIGNING FIELD-SYMBOL(<fs_data>).

    <fs_data>-AbapName = 'Vitória Oliveira'.

    ENDLOOP.

    ct_calculated_data = CORRESPONDING #( lt_data_in )."Saida



  ENDMETHOD.


  METHOD if_sadl_exit_calc_element_read~get_calculation_info.
  ENDMETHOD.
ENDCLASS.
