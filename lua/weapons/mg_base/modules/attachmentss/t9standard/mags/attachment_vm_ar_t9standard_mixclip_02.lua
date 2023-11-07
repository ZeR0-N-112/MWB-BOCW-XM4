ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "33rnd Tac Fast mag"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_mixclip_01_LOD0.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_ar_mike4_xmags.vmt")

ATTACHMENT.BulletList = {
    [0] = {"j_loose_round"},
    [1] = {"j_bullet"},
    [2] = {"j_bullet_01"},
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 33
	weapon.Animations.Inspect = weapon.Animations.Inspect_alt
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.02
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.02
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 1.14
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 1.14
end