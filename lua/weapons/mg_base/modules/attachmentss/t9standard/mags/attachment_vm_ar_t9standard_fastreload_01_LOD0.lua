ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "Jungle-Style Mag"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_t9standard_fastreload_01_LOD0.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_ar_mike4_xmags2.vmt")

--Current mag
-- ATTACHMENT.BulletList = {
    -- [1] = {"j_b_017"},
    -- [2] = {"j_b_016"},
    -- [3] = {"j_b_014"},
-- }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Reload = weapon.Animations.Reload_Fastmag
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Fastmag
	weapon.Animations.Inspect = weapon.Animations.Inspect_alt
end