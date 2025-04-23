@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View Entity Basic'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zr_voa_venda_it
  as select from ztvoavendait
{
  key venda_id   as VendaId,
  key venda_item as VendaItem,
      product_id as ProductId,
      quantidade as Quantidade
}
