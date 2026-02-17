@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Header root'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zheader_r_389_cms
  as select from zheader_cms
  // composition of target_data_source_name as _association_name
{
  key header_id             as HeaderId,
  key id                    as Id,
      email                 as Email,
      firstname             as Firstname,
      lastname              as Lastname,
      country               as Country,
      createon              as Createon,
      deliverydate          as Deliverydate,
      orderstatus           as Orderstatus,
      imageurl              as Imageurl,
      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      
      // Etag fields
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt
      //    _association_name // Make association public
}
