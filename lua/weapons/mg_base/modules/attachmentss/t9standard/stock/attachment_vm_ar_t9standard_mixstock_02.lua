ATTACHMENT.Base = "att_vm_stock_medium01"
ATTACHMENT.Name = "Raider Pad"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_mixstock_02_LOD0.mdl")
ATTACHMENT.Icon = Material("kyo/attachments/t9standard/icon/mixstock_2.vmt")
-- ATTACHMENT.Bodygroups ={
--     ["tag_stock"] = 1
-- }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = 1.1
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.88
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.88
end