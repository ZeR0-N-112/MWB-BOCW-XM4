ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "20'' M16 Rifle"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_barrel_01.mdl")
ATTACHMENT.Icon = Material("kyo/attachments/t9standard/icon/long_barrel_1.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.9
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.9
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.2
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.2
end