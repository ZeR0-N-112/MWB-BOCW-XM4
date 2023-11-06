// Created by Crowbar 0.74

$modelname "attachment_vm_ar_t9standard_stock.mdl"

$bodygroup "slide"
{
	studio "attachment_vm_ar_t9standard_stock_LOD0.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$mostlyopaque


$cdmaterials "zeron/weapons/xm4/"

$cbox 0 0 0 0 0 0

$bbox -9.147 -1.396 -4.275 0 1.389 0.638

$definebone "tag_stock_attach" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_stock" "tag_stock_attach" -2.103001 0 0 0 0 0 0 0 0 0 0 0


$sequence "reference" {
	"attachment_vm_ar_t9standard_stock_LOD0.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$keyvalues
{
// CSGO compiler adds the qc_path keyvalue section automatically.
//	qc_path 
//	{
//		"value" "g:\other\gmod\source-files-mw\attachments\mike4\attachment_stock.qc"
//	}
}
