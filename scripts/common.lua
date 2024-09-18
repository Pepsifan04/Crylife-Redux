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


function luaFunc_forward()
    -- Code for moving forward
end

function luaFunc_backward()
    -- Code for moving backward
end

function luaFunc_strafe_left()
    -- Code for strafing left
end

function luaFunc_strafe_right()
    -- Code for strafing right
end

function luaFunc_jump()
    -- Code for jumping
end

function luaFunc_crouch()
    -- Code for crouching
end

function luaFunc_sprint()
    -- Code for sprinting
end

function luaFunc_fire()
    -- Code for firing
end

function luaFunc_alt_fire()
    -- Code for alternate fire
end

function luaFunc_reload()
    -- Code for reloading
end

function luaFunc_use()
    -- Code for using/interacting
end

function luaFunc_zoom()
    -- Code for zooming/aiming down sights
end

function luaFunc_flashlight()
    -- Code for toggling flashlight
end

function luaFunc_suit_menu()
    -- Code for opening suit menu
end

function luaFunc_weapon_menu()
    -- Code for opening weapon menu
end

function luaFunc_weapon_slot_1()
    -- Code for selecting weapon slot 1
end

function luaFunc_weapon_slot_2()
    -- Code for selecting weapon slot 2
end

function luaFunc_weapon_slot_3()
    -- Code for selecting weapon slot 3
end

function luaFunc_weapon_slot_4()
    -- Code for selecting weapon slot 4
end

function luaFunc_weapon_slot_5()
    -- Code for selecting weapon slot 5
end

function luaFunc_weapon_slot_6()
    -- Code for selecting weapon slot 6
end

function luaFunc_melee()
    -- Code for melee attack
end

function luaFunc_grenade()
    -- Code for using grenade
end


