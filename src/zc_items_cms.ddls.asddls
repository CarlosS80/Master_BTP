@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'items'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
        serviceQuality: #B,
        sizeCategory: #S,
        dataClass: #MIXED }
define view entity zc_items_cms
  as select from zitems_cms 
{
  key id               as Id,
      name             as Name,
      description      as Description,
      releasedate      as Releasedate,
      discontinueddate as Discontinueddate,
      currency         as Currency,
      @Semantics.amount.currencyCode: 'currency'
      price            as Price,
      @Semantics.quantity.unitOfMeasure: 'unitofmeasure'
      height           as Height,
      @Semantics.quantity.unitOfMeasure: 'unitofmeasure'
      width            as Width,
      depth            as Depth,
      @Semantics.quantity.unitOfMeasure: 'unitofmeasure'
      quantity         as Quantity,
      unitofmeasure    as Unitofmeasure  
}
