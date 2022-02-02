//Оружия которое надо запретить
local weapon = {
    ['weapon_357'] = true
}
//Работа которой мы запрещаем перечисленные выше оружия
local job = {
    [TEAM_CITIZEN] = true
}
hook.Add("PlayerCanPickupWeapon", "Proverka", function(ply, wep)
    if (weapon[wep:GetClass()] && job[ply:Team()]) then DarkRP.notify(ply, 1, 2,"Вам запрещено брать данное оружие!") return false end
end)
