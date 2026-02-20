@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'items interface'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_ITEMS_I_CMS
  as projection on zc_items_cms
{
  key ItemUUID,
      HeaderUUID,
      Id,
      Name,
      Description,
      Releasedate,
      Discontinueddate,
      @Semantics.amount.currencyCode: 'currency'
      Price,
      Currency,
      @Semantics.quantity.unitOfMeasure: 'unitofmeasure'
      Height,
      @Semantics.quantity.unitOfMeasure: 'unitofmeasure'
      Width,
      Depth,
      @Semantics.quantity.unitOfMeasure: 'unitofmeasure'
      Quantity,
      Unitofmeasure,
      LocalLastChangedAt,
      /* Associations */
      _header : redirected to parent ZHEADER_I_CMS
}
