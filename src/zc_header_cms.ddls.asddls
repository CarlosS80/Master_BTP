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
  key id           as Id,
      email        as Email,
      firstname    as Firstname,
      lastname     as Lastname,
      country      as Country,
      createon     as Createon,
      deliverydate as Deliverydate,
      orderstatus  as Orderstatus,
      imageurl     as Imageurl
}
