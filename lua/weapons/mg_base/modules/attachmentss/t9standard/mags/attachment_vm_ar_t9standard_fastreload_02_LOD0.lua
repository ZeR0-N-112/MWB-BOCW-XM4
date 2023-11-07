ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "SAS Mag Clamp"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_fastreload_02_LOD0.mdl")
ATTACHMENT.Icon = Material("kyo/attachments/t9standard/icon/fastmag_2.vmt")
ATTACHMENT.BulletList = {
    [0] = {"j_loose_round"},
    [1] = {"j_bullet"},
    [2] = {"j_bullet_01"},
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Reload = weapon.Animations.Reload_Fastmag
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Fastmag
	weapon.Animations.Inspect = weapon.Animations.Inspect_alt
	weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 1.15
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 1.15
	weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.925
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.925
end