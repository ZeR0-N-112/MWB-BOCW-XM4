ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "13.7'' Takedown"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_barrel_01_LOD0_short.mdl")
ATTACHMENT.Icon = Material("kyo/attachments/t9standard/icon/heavybar_1.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.05
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.05
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.97
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.97
end