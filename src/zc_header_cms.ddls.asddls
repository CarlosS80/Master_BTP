@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Header'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
        serviceQuality: #B,
        sizeCategory: #S,
        dataClass: #MIXED }
define view entity zc_header_cms
  as select from zheader_cms
{
  key header_id             as header_id,
  key id                    as Id,
      email                 as Email,
      firstname             as Firstname,
      lastname              as Lastname,
      country               as Country,
      createon              as Createon,
      deliverydate          as Deliverydate,
      orderstatus           as Orderstatus,
      imageurl              as Imageurl,
      local_created_by      as local_created_by,
      local_created_at      as local_created_at,
      local_last_changed_by as local_last_changed_by,
      local_last_changed_at as local_last_changed_at,
      last_changed_at       as last_changed_at 

}
