ATTACHMENT.Base = "att_grip"
ATTACHMENT.Name = "Stand Grip"
ATTACHMENT.Model = Model("models/efttt/foregrip/wbj.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_wbj.vmt")

ATTACHMENT.Bipod = true
ATTACHMENT.Bodygroups = {
    ["tag_grip_hide"] = 1
}
ATTACHMENT.BonemergeToCategory = {"Barrels"}
ATTACHMENT.Bodygroups ={
    ["tag_grip_hide"] = 1,
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_grip_rail"] = 1,
}
 

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.8
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.8
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.35
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.35
	    if (weapon.AlternateGrips) then 
        weapon:SetGripPoseParameter("grip_gripvert_offset") 
    end
end