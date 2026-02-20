@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Header interface'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZHEADER_I_CMS
provider contract  transactional_interface
  as projection on zheader_r_389_cms
{
  key HeaderUUID,
      Id,
      Email,
      Firstname,
      Lastname,
      Country,
      Createon,
      Deliverydate,
      Orderstatus,
      Imageurl,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,     
      
      
      /* Associations */
      _item : redirected to composition child ZC_ITEMS_I_CMS,
      _Orderstatus
}
