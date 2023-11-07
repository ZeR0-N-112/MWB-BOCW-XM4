ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "11.8'' M16 Ranger"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_heavy_02_LOD0.mdl")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

end