ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "13.5'' Reinforced Heavy"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_mixbarrel_01_LOD0.mdl")
ATTACHMENT.Icon = Material("kyo/attachments/t9standard/icon/mixbar_1.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.97
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.97
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.95
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.95
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.12
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.12
end