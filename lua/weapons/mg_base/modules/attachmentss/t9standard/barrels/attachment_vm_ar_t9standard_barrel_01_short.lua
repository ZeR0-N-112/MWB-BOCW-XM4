ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "13.7'' Extended"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_barrel_01_LOD0_short.mdl")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

end