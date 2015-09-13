/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_messageName","_messageParameters","_exludeSessionID","_player"];
_messageName = _this select 0;
_messageParameters = _this select 1;
_exludeSessionID = [_this, 2, "-1"] call BIS_fnc_param;
PublicMessage = [_messageName, _messageParameters];
{
	if !((_x select 0) isEqualTo _exludeSessionID) then
	{
		_player = _x select 1;
		(owner _player) publicVariableClient "PublicMessage";
	};
}
forEach ExileSessions;
PublicMessage = nil;