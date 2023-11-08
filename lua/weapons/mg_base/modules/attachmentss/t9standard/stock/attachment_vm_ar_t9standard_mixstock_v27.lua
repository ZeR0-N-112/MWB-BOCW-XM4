ATTACHMENT.Base = "att_vm_stock_medium01"
ATTACHMENT.Name = "Steel Shredder"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_t9standard_mixstock_01_v27_LOD0.mdl")
ATTACHMENT.Icon = Material("kyo/attachments/t9standard/icon/mixstock_1.vmt")
ATTACHMENT.UIColor = Color(255, 84, 112)
ATTACHMENT.CosmeticChange = true
-- ATTACHMENT.Bodygroups ={
--     ["tag_stock"] = 1
-- }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end