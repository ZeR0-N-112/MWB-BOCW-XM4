ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "STANAG 50 Rnd"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_extclip_02_LOD0.mdl")
ATTACHMENT.Icon = Material("kyo/attachments/t9standard/icon/exmag.vmt")

ATTACHMENT.BulletList = {
    [0] = {"j_loose_round"},
    [1] = {"j_bullet"},
    [2] = {"j_bullet_01"},
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 50
    weapon.Animations.Reload = weapon.Animations.Reload_Xmag
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag
	weapon.Animations.Inspect = weapon.Animations.Inspect_alt
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
end