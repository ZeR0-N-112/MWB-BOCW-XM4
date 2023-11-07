ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "13.7'' Extended"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_barrel_02_LOD0_short.mdl")
ATTACHMENT.Icon = Material("kyo/attachments/t9standard/icon/heavybar_1.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.02
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.02
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.02
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.02
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.02
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.02
end