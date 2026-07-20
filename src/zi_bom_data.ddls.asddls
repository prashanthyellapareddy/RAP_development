@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOM Interface view'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_BOM_DATA
  as select from zbom_data
{

  key bom_number,
  key version,
  key material,
      parent_material,
      quantity

}
