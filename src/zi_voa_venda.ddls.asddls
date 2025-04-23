@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Composta de vendas'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity zi_voa_venda
  as select from zr_voa_venda
  association [1..*] to zr_voa_venda_it as _Item on $projection.VendaId = _Item.VendaId
{
  key VendaId,
      DataVenda,
      Vendedor,
      _Item // assiona quando precisar, não aparece automático.  Lefd JOIN // Só usa o assotiation quando precisar.
}
