ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "20'' M16 Reinforced"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_barrel_02.mdl")
ATTACHMENT.Icon = Material("kyo/attachments/t9standard/icon/long_barrel_pro_1.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.87
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.87
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.25
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.25
end