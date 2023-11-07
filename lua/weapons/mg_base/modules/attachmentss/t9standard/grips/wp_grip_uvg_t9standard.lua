ATTACHMENT.Base = "att_grip"
ATTACHMENT.Name = "UVG Foregrip"
ATTACHMENT.Model = Model("models/efttt/foregrip/uvg_lod0.mdl")
ATTACHMENT.Icon = Material("icons/icon_f_uvg.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_grip_hide"] = 1
}
ATTACHMENT.BonemergeToCategory = {"Barrels"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.05
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.3
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.15
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.7

end
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)

    if (weapon.AlternateGrips) then 
        weapon:SetGripPoseParameter("grip_barshort_gripvert_offset") 
    else
        weapon:SetGripPoseParameter("grip_gripvert_offset")
    end
end