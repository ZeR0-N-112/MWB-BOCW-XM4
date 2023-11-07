ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "12.5'' Cavalry Lancer"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_heavy_01_LOD0.mdl")
ATTACHMENT.Icon = Material("kyo/attachments/t9standard/icon/heavybar_1.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.9
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.9
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.96
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.96
end