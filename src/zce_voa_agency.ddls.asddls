@EndUserText.label: 'CDS Custom Enitity'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_VOA_AGENCY'

@UI.headerInfo: {
    typeName: 'Agencia',
    typeNamePlural: 'Agencias'
}

define custom entity ZCE_VOA_AGENCY
{
      @UI       : {
              lineItem:[{ position: 10 }],
              selectionField: [{ position : 10 }]
      }
  key agency_id : /dmo/agency_id;

      @UI       : {
               lineItem:[{ position: 10 }],
               selectionField: [{ position : 10 }]
      }
      name      : /dmo/agency_name;

      @UI       : {
          lineItem:[{ position: 20 }],
          selectionField: [{ position : 20 }]
      }

      street    : /dmo/street;

}
