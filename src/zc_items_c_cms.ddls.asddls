@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Item Projection comsuption'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
//@Search.searchable: true

define view entity ZC_ITEMS_C_CMS
  as projection on zc_items_cms
{
  key     Itemuuid,
          Headeruuid,
          Id,
          Name,
          Description,
          Releasedate,
          Discontinueddate,
          @Semantics.amount.currencyCode: 'currency'
          Price,
  //        @Semantics.amount.currencyCode: 'currency'
  //        @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_VIRTUAL_ELEM_SADL_CMS'
//  virtual Price_VE : /dmo/total_price,

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
          _header : redirected to parent ZHEADER_C_CMS
}
