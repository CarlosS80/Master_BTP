@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Header root'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zheader_r_389_cms
  as select from zheader_cms
  composition [0..*] of zc_items_cms             as _item
  association [1..1] to /DMO/I_Overall_Status_VH as _Orderstatus 
                on $projection.Orderstatus = _Orderstatus.OverallStatus
{
  key header_uuid           as HeaderUUID,   
      id                    as Id,
      email                 as Email,
      firstname             as Firstname,
      lastname              as Lastname,
      country               as Country,
      createon              as Createon,
      deliverydate          as Deliverydate,
      orderstatus           as Orderstatus,
      imageurl              as Imageurl,
      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,

      // Etag fields
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,

      _item,
      _Orderstatus

}
