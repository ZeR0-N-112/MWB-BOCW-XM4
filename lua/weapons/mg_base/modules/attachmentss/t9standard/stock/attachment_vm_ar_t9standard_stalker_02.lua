ATTACHMENT.Base = "att_vm_stock_medium01"
ATTACHMENT.Name = "SAS Combat Stock"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_stalker_02_LOD0.mdl")
ATTACHMENT.Icon = Material("kyo/attachments/t9standard/icon/stalker_2.vmt")
-- ATTACHMENT.Bodygroups ={
--     ["tag_stock"] = 1
-- }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = 1.14
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.55
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.55
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
end