ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "13.5'' Task Force"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_mixbarrel_02_LOD0.mdl")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

end