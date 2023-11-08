ATTACHMENT.Base = "att_receiver"
ATTACHMENT.Name = "Steel Shredder"
ATTACHMENT.UIColor = Color(255, 84, 112)
ATTACHMENT.CosmeticChange = true
ATTACHMENT.Bodygroups ={
    ["sling"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)	
    weapon:SetViewModel("models/zeron/v_ar_t9standard_v27.mdl")
end