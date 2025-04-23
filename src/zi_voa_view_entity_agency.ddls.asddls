@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View Entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_VOA_VIEW_ENTITY_AGENCY // temos uma entidade de depende de uma fonte de dados para retornar os valores, mas tem as customes endity qye não depende de uma fonte de dados e sim de uma lógica
  as select from /dmo/agency //tabela de treinamento padrão SAP
{
  key /dmo/agency.agency_id             as AgencyId,
      /dmo/agency.name                  as Name,
      /dmo/agency.street                as Street,
      /dmo/agency.postal_code           as PostalCode,
      /dmo/agency.city                  as City,
      /dmo/agency.country_code          as CountryCode,
      /dmo/agency.phone_number          as PhoneNumber,
      /dmo/agency.email_address         as EmailAddress,
      /dmo/agency.web_address           as WebAddress,
      concat( concat ( $projection.AgencyId, '-' ), name ) as Concatenado, //Colocou o $projection, porque não estava reconhecendo, não é case sensitive. E foram duas contetenações por isso duas vezes.
      @ObjectModel.virtualElementCalculatedBy: 'ABAP:Z_CL_VOA_FUNC_ABAP'
      cast ('' as abap.char(255)) as AbapName // converte um espaço vazio em um abap de 255 caracteres com o nome abapname
     
}
