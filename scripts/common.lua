ZEROPOS=HL2.Vector(0,0,0)
PLAYER=HL2.GetPlayer()

TIMEOUT_MODE_FAST=0.2
TIMEOUT_MODE_SHORTCUT=0.3

CURRENT_MODE=1
CURRENT_POWER=100





















function memStore(index,value)
	HL2.StoreWorkVar(index,value)
end

function memGet(index)
	HL2.GetWorkVar(index)
end

function memFree(index)
	memStore(index,nil)
end


function playSound(sound)
	HL2.PlaySoundEntity(sound,PLAYER)
end

function cmd(command)
	HL2.EntFire('cmd','Command',command,0,-1)
end


function consumePower(pow)
	POWER=POWER-pow;
end

function changeMode(mode)
	CURRENT_MODE=mode
	HL2.EntFire('CURRENT_MODE','!self','setvalue',mode)
end

function canPreformAction(powerCost)
	if POWER>=powerCost then
		return true
	else
		return false
	end
end

--call on load,new game
function init_setAmour()
	CURRENT_MODE=1
end

function init_setStrength()
	CURRENT_MODE=2
end

function init_setSpeed()
	CURRENT_MODE=3
end

function init_setCloak()
	CURRENT_MODE=4
end


function init_setPower_0()
	setPower(0)
end

function init_setPower_10()
	setPower(10)
end

function init_setPower_20()
	setPower(20)
end

function init_setPower_30()
	setPower(30)
end

function init_setPower_40()
	setPower(40)
end

function init_setPower_50()
	setPower(50)
end

function init_setPower_60()
	setPower(60)
end

function init_setPower_70()
	setPower(70)
end

function init_setPower_80()
	setPower(80)
end

function init_setPower_90()
	setPower(90)
end

function init_setPower_100()
	setPower(100)
end


--create ents funcs

function createModSprite(prefix)
	local var=HL2.CreateEntity('env_sprite')
	HL2.KeyValue(var,'targetname','modui_'..prefix)
	HL2.KeyValue(var,'renderfx',0)
	HL2.KeyValue(var,'rendermode',9)
	HL2.KeyValue(var,'renderamt',255)
	HL2.KeyValue(var,'rendercolor','255 255 255')
	HL2.KeyValue(var,'disablereceiveshadows',1)
	HL2.KeyValue(var,'framerate',0)
	HL2.KeyValue(var,'scale',0.015)
	HL2.KeyValue(var,'model','overlays/crylife/hud/sprites/Slot_'..prefix..'.vmt')
	HL2.KeyValue(var,'glowproxysize',0)
	HL2.SpawnEntity(var,0,0);
end

function mapInit()
	
	local var=HL2.CreateEntity('point_servercommand')
	HL2.KeyValue(var,'targetname','cmd')
	HL2.SpawnEntity(var,0,0);

	createModSprite('1_1')
	createModSprite('1_2')
	createModSprite('2_1')
	createModSprite('2_2')
	createModSprite('3_1')
	createModSprite('3_2')
	createModSprite('3_3')
	createModSprite('3_4')




end

function luaFunc_forward_press()
    -- Code for pressing forward
end

function luaFunc_forward_release()
    -- Code for releasing forward
end

function luaFunc_backward_press()
    -- Code for pressing backward
end

function luaFunc_backward_release()
    -- Code for releasing backward
end

function luaFunc_strafe_left_press()
    -- Code for pressing strafe left
end

function luaFunc_strafe_left_release()
    -- Code for releasing strafe left
end

function luaFunc_strafe_right_press()
    -- Code for pressing strafe right
end

function luaFunc_strafe_right_release()
    -- Code for releasing strafe right
end

function luaFunc_jump_press()
    -- Code for pressing jump
end

function luaFunc_jump_release()
    -- Code for releasing jump
end

function luaFunc_crouch_press()
    -- Code for pressing crouch
end

function luaFunc_crouch_release()
    -- Code for releasing crouch
end

function luaFunc_sprint_press()
    -- Code for pressing sprint
end

function luaFunc_sprint_release()
    -- Code for releasing sprint
end

function luaFunc_fire_press()
    -- Code for pressing fire
end

function luaFunc_fire_release()
    -- Code for releasing fire
end

function luaFunc_alt_fire_press()
    -- Code for pressing alternate fire
end

function luaFunc_alt_fire_release()
    -- Code for releasing alternate fire
end

function luaFunc_reload_press()
    -- Code for pressing reload
end

function luaFunc_reload_release()
    -- Code for releasing reload
end

function luaFunc_use_press()
    -- Code for pressing use
end

function luaFunc_use_release()
    -- Code for releasing use
end

function luaFunc_zoom_press()
    -- Code for pressing zoom
end

function luaFunc_zoom_release()
    -- Code for releasing zoom
end

function luaFunc_flashlight_press()
    -- Code for pressing flashlight
end

function luaFunc_flashlight_release()
    -- Code for releasing flashlight
end

function luaFunc_suit_menu_press()
    -- Code for pressing suit menu
end

function luaFunc_suit_menu_release()
    -- Code for releasing suit menu
end

function luaFunc_weapon_menu_press()
    -- Code for pressing weapon menu
end

function luaFunc_weapon_menu_release()
    -- Code for releasing weapon menu
end

function luaFunc_weapon_slot_1_press()
    -- Code for pressing weapon slot 1
end

function luaFunc_weapon_slot_1_release()
    -- Code for releasing weapon slot 1
end

function luaFunc_weapon_slot_2_press()
    -- Code for pressing weapon slot 2
end

function luaFunc_weapon_slot_2_release()
    -- Code for releasing weapon slot 2
end

function luaFunc_weapon_slot_3_press()
    -- Code for pressing weapon slot 3
end

function luaFunc_weapon_slot_3_release()
    -- Code for releasing weapon slot 3
end

function luaFunc_weapon_slot_4_press()
    -- Code for pressing weapon slot 4
end

function luaFunc_weapon_slot_4_release()
    -- Code for releasing weapon slot 4
end

function luaFunc_weapon_slot_5_press()
    -- Code for pressing weapon slot 5
end

function luaFunc_weapon_slot_5_release()
    -- Code for releasing weapon slot 5
end

function luaFunc_weapon_slot_6_press()
    -- Code for pressing weapon slot 6
end

function luaFunc_weapon_slot_6_release()
    -- Code for releasing weapon slot 6
end

function luaFunc_melee_press()
    -- Code for pressing melee
end

function luaFunc_melee_release()
    -- Code for releasing melee
end

function luaFunc_grenade_press()
    -- Code for pressing grenade
end

function luaFunc_grenade_release()
    -- Code for releasing grenade
end



