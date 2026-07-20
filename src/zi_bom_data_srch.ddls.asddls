@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOM data for Search'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_BOM_DATA_SRCH 
  as select distinct from zbom_data
{

  key bom_number,
  key material,
  parent_material
 
} where parent_material = ' '
