ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "11.8'' Ranger"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_heavy_02_LOD0.mdl")
ATTACHMENT.Icon = Material("kyo/attachments/t9standard/icon/heavybar_2.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.2
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.2
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.14
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.14
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.89
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.89
end