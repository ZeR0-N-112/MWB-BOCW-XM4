ATTACHMENT.Base = "att_vm_stock_medium01"
ATTACHMENT.Name = "Duster Stock"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_mixstock_01_LOD0.mdl")
ATTACHMENT.Icon = Material("kyo/attachments/t9standard/icon/mixstock_1.vmt")
-- ATTACHMENT.Bodygroups ={
--     ["tag_stock"] = 1
-- }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = 1.06
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
end