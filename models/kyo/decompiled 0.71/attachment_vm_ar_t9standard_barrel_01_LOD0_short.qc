// Created by Crowbar 0.71

$modelname "attachment_vm_ar_t9standard_barrel_01_LOD0_short.mdl"

$bodygroup "slide"
{
	studio "attachment_vm_ar_t9standard_barrel_01_LOD0_short.smd"
}
$bodygroup "tag_tip"
{
	studio "attachment_vm_ar_t9standard_barrel_01_short_tip.smd"
	blank
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$mostlyopaque

$cdmaterials "zeron\weapons\xm4\"

$attachment "muzzle" "tag_flash_attachment" -12 0 0 rotate 0 0 0
$attachment "silencer" "tag_silencer" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -0.494 -1.164 -1.084 14.052 1.414 2.751

$definebone "tag_barrel_attach" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_silencer" "tag_barrel_attach" 14.618999 0.051 0.071 0 0 0 0.99 0 0 0 0 0
$definebone "tag_tip" "tag_barrel_attach" 14.618999 0.051 0.071 0 0 0 0 0 0 0 0 0
$definebone "tag_flash_attachment" "tag_tip" 14.618999 0.051 0.071 0 0 0 0 0 0 0 0 0


$sequence "reference" {
	"attachment_vm_ar_t9standard_mixbarrel_01_LOD0_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$keyvalues
{
}
