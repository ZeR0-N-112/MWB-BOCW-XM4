// Created by Crowbar 0.74

$modelname "attachment_vm_ar_t9standard_barrel.mdl"

$bodygroup "slide"
{
	studio "attachment_vm_ar_t9standard_barrel_LOD0.smd"
}

$bodygroup "tag_tip"
{
	studio "attachment_vm_ar_t9standard_barrel_tip.smd"
	blank
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$mostlyopaque


$cdmaterials "zeron/weapons/xm4/"


$attachment "muzzle" "tag_flash_attachment" 0 0 0 rotate 0 0 0
$attachment "silencer" "tag_silencer" 0 0 0 rotate 0 0 0


$cbox 0 0 0 0 0 0

$bbox -0.494 -1.164 -1.084 14.052 1.414 2.751

$sequence "reference" {
	"attachment_vm_ar_t9standard_barrel_LOD0.smd"
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
//		"value" "c:\github\source files mw\source-files-mw\attachments\assault rifles\mike4\attachment_barrel.qc"
//	}
}

$include "Bar.qci"
