@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumo App Vendas'
@Metadata.ignorePropagatedAnnotations: true

define root view entity zc_voa_venda_01
  as projection on zi_voa_venda
{
  key VendaId,
      DataVenda,
      Vendedor,
      /* Associations */
      _Item
}
