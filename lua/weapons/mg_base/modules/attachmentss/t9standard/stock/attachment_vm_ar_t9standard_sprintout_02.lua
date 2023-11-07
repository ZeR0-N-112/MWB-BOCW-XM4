ATTACHMENT.Base = "att_vm_stock_medium01"
ATTACHMENT.Name = "Buffer Tube"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_sprintout_02_LOD0.mdl")
ATTACHMENT.Icon = Material("kyo/attachments/t9standard/icon/sprintout_2.vmt")
-- ATTACHMENT.Bodygroups ={
--     ["tag_stock"] = 1
-- }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = 0.6
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.26
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.26
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.26
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.26
end