ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "20'' M16 Reinforced"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_barrel_02.mdl")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

end