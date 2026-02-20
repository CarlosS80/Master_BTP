@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Header Projection comsuption'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true

define root view entity ZHEADER_C_CMS
  provider contract transactional_query
  as projection on zheader_r_389_cms
{
  key HeaderUUID,
      @Search.defaultSearchElement: true
      Id,
      Email,
      Firstname,
      Lastname,
      Country,
      Createon,
      Deliverydate,

      @ObjectModel.text.element: [ 'OverallStatusText' ]
      @Consumption.valueHelpDefinition: [{ entity: { name: '/DMO/I_Overall_Status_VH',
                                                     element: 'OverallStatus'},
                                           useForValidation: true }]
      Orderstatus,
      Imageurl,
      @Semantics.user.createdBy: true
      LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,


      _Orderstatus._Text.Text as OverallStatusText : localized,
      /* Associations */
      _item : redirected to composition child ZC_ITEMS_C_CMS
}
