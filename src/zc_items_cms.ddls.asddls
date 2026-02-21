@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'items root'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
        serviceQuality: #B,
        sizeCategory: #S,
        dataClass: #MIXED }
define view entity zc_items_cms
  as select from zitems_cms 

  association to parent zheader_r_389_cms as _header on $projection.Headeruuid = _header.Headeruuid
{

  key item_uuid             as Itemuuid,
      header_uuid           as Headeruuid,
      id                    as Id,
      name                  as Name,
      description           as Description,
      releasedate           as Releasedate,
      discontinueddate      as Discontinueddate,
      @Semantics.amount.currencyCode: 'currency'
      price                 as Price,
      currency              as Currency,
      @Semantics.quantity.unitOfMeasure: 'unitofmeasure'
      height                as Height,
      @Semantics.quantity.unitOfMeasure: 'unitofmeasure'
      width                 as Width,
      depth                 as Depth,
      @Semantics.quantity.unitOfMeasure: 'unitofmeasure'
      quantity              as Quantity,
      unitofmeasure         as Unitofmeasure,

      // Etag fields
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      
      _header
}
