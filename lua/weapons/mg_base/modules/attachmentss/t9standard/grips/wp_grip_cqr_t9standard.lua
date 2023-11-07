ATTACHMENT.Base = "att_grip"
ATTACHMENT.Name = "CQR Foregrip"
ATTACHMENT.Model = Model("models/efttt/foregrip/attachment_vm_cqr.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_cqr.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_grip_hide"] = 1
}
ATTACHMENT.BonemergeToCategory = {"Barrels"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.85
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.55
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.55
	    if (weapon.AlternateGrips) then 
        weapon:SetGripPoseParameter("grip_barshort_gripvert_offset") 
    end
end