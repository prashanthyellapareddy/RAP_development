@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true

@VDM.viewType: #CONSUMPTION
@ObjectModel.usageType: {
  serviceQuality: #A,
  sizeCategory: #S,
  dataClass: #MIXED
}

@Search.searchable: true
define view entity ZC_BOM_DATA_SRCH as select distinct from ZI_BOM_DATA_SRCH
{
  @EndUserText.label: 'Material'
  @Search.defaultSearchElement: true
  key material,
 
  @EndUserText.label: 'BOM Number'
  @Search.defaultSearchElement: true
  key bom_number

 
  
}

