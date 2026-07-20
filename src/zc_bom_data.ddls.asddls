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
define view entity ZC_BOM_DATA
  as select from ZI_BOM_DATA
{
  @EndUserText.label: 'BOM Number'
  @Search.defaultSearchElement: true
  key bom_number,

  @EndUserText.label: 'Version'
  @Search.defaultSearchElement: true
  key version,

  @EndUserText.label: 'Material'
  @Search.defaultSearchElement: true
  key material,

  @EndUserText.label: 'Parent Material'
  parent_material,

  @EndUserText.label: 'Quantity'
  @Semantics.quantity.unitOfMeasure: 'QuantityUnit'  // optional, see note below
  quantity,

  // Optional constant unit if you want UoM semantics.
  // Remove this if unit does not apply in your case.
  @EndUserText.label: 'Quantity Unit'
  cast( 'EA' as abap.unit(3) ) as QuantityUnit
}
