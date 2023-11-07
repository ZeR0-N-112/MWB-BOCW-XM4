ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "Jungle-Style Mag"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_fastreload_01_LOD0.mdl")
ATTACHMENT.Icon = Material("kyo/attachments/t9standard/icon/fastmag_1.vmt")

ATTACHMENT.BulletList = {
    [0] = {"j_loose_round"},
    [1] = {"j_bullet"},
    [2] = {"j_bullet_01"},
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Reload = weapon.Animations.Reload_Fastmag
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Fastmag
	weapon.Animations.Inspect = weapon.Animations.Inspect_alt
end