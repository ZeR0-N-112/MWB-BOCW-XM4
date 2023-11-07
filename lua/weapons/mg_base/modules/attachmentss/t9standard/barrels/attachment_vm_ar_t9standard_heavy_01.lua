ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "12.5'' Cavalry Lancer"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_heavy_01_LOD0.mdl")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

end