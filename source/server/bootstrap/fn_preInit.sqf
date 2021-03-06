/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private ['_code', '_function', '_file'];

{
    _code = '';
    _function = _x select 0;
    _file = _x select 1;

    if (isText (missionConfigFile >> 'CfgExileCustomCode' >> _function)) then
    {
        _file = getText (missionConfigFile >> 'CfgExileCustomCode' >> _function);
    };

    _code = compileFinal (preprocessFileLineNumbers _file);                    

    missionNamespace setVariable [_function, _code];
}
forEach 
[
	['ExileServer_object_construction_database_delete', 'exile_server\code\ExileServer_object_construction_database_delete.sqf'],
	['ExileServer_object_construction_database_insert', 'exile_server\code\ExileServer_object_construction_database_insert.sqf'],
	['ExileServer_object_construction_database_load', 'exile_server\code\ExileServer_object_construction_database_load.sqf'],
	['ExileServer_object_construction_database_lockUpdate', 'exile_server\code\ExileServer_object_construction_database_lockUpdate.sqf'],
	['ExileServer_object_construction_database_maintain', 'exile_server\code\ExileServer_object_construction_database_maintain.sqf'],
	['ExileServer_object_construction_network_addLockRequest', 'exile_server\code\ExileServer_object_construction_network_addLockRequest.sqf'],
	['ExileServer_object_construction_network_buildConstructionRequest', 'exile_server\code\ExileServer_object_construction_network_buildConstructionRequest.sqf'],
	['ExileServer_object_construction_network_buildTerritoryRequest', 'exile_server\code\ExileServer_object_construction_network_buildTerritoryRequest.sqf'],
	['ExileServer_object_construction_network_deconstructConstructionRequest', 'exile_server\code\ExileServer_object_construction_network_deconstructConstructionRequest.sqf'],
	['ExileServer_object_construction_network_lockConstructionRequest', 'exile_server\code\ExileServer_object_construction_network_lockConstructionRequest.sqf'],
	['ExileServer_object_construction_network_moveConstructionRequest', 'exile_server\code\ExileServer_object_construction_network_moveConstructionRequest.sqf'],
	['ExileServer_object_construction_network_swapConstructionRequest', 'exile_server\code\ExileServer_object_construction_network_swapConstructionRequest.sqf'],
	['ExileServer_object_construction_network_unlockConstructionRequest', 'exile_server\code\ExileServer_object_construction_network_unlockConstructionRequest.sqf'],
	['ExileServer_object_construction_network_upgradeConstructionRequest', 'exile_server\code\ExileServer_object_construction_network_upgradeConstructionRequest.sqf'],
	['ExileServer_object_container_createContainer', 'exile_server\code\ExileServer_object_container_createContainer.sqf'],
	['ExileServer_object_container_packContainer', 'exile_server\code\ExileServer_object_container_packContainer.sqf'],
	['ExileServer_object_container_database_delete', 'exile_server\code\ExileServer_object_container_database_delete.sqf'],
	['ExileServer_object_container_database_insert', 'exile_server\code\ExileServer_object_container_database_insert.sqf'],
	['ExileServer_object_container_database_load', 'exile_server\code\ExileServer_object_container_database_load.sqf'],
	['ExileServer_object_container_database_setPin', 'exile_server\code\ExileServer_object_container_database_setPin.sqf'],
	['ExileServer_object_container_database_update', 'exile_server\code\ExileServer_object_container_database_update.sqf'],
	['ExileServer_object_container_network_packRequest', 'exile_server\code\ExileServer_object_container_network_packRequest.sqf'],
	['ExileServer_object_floodLight_network_toggleFloodLightRequest', 'exile_server\code\ExileServer_object_floodLight_network_toggleFloodLightRequest.sqf'],
	['ExileServer_object_lock_network_lockToggle', 'exile_server\code\ExileServer_object_lock_network_lockToggle.sqf'],
	['ExileServer_object_lock_network_setPin', 'exile_server\code\ExileServer_object_lock_network_setPin.sqf'],
	['ExileServer_object_player_createBambi', 'exile_server\code\ExileServer_object_player_createBambi.sqf'],
	['ExileServer_object_player_sendStatsUpdate', 'exile_server\code\ExileServer_object_player_sendStatsUpdate.sqf'],
	['ExileServer_object_player_database_insert', 'exile_server\code\ExileServer_object_player_database_insert.sqf'],
	['ExileServer_object_player_database_load', 'exile_server\code\ExileServer_object_player_database_load.sqf'],
	['ExileServer_object_player_database_update', 'exile_server\code\ExileServer_object_player_database_update.sqf'],
	['ExileServer_object_player_event_killFeed', 'exile_server\code\ExileServer_object_player_event_killFeed.sqf'],
	['ExileServer_object_player_event_onMpKilled', 'exile_server\code\ExileServer_object_player_event_onMpKilled.sqf'],
	['ExileServer_object_player_network_connectionTest', 'exile_server\code\ExileServer_object_player_network_connectionTest.sqf'],
	['ExileServer_object_player_network_createPlayerRequest', 'exile_server\code\ExileServer_object_player_network_createPlayerRequest.sqf'],
	['ExileServer_object_player_network_endBambiStateRequest', 'exile_server\code\ExileServer_object_player_network_endBambiStateRequest.sqf'],
	['ExileServer_object_player_network_hasPlayerRequest', 'exile_server\code\ExileServer_object_player_network_hasPlayerRequest.sqf'],
	['ExileServer_object_player_network_loadPlayerRequest', 'exile_server\code\ExileServer_object_player_network_loadPlayerRequest.sqf'],
	['ExileServer_object_player_network_resetPlayerRequest', 'exile_server\code\ExileServer_object_player_network_resetPlayerRequest.sqf'],
	['ExileServer_object_player_network_savePlayerRequest', 'exile_server\code\ExileServer_object_player_network_savePlayerRequest.sqf'],
	['ExileServer_object_player_network_setPlayerMoneyRequest', 'exile_server\code\ExileServer_object_player_network_setPlayerMoneyRequest.sqf'],
	['ExileServer_object_player_network_switchMoveRequest', 'exile_server\code\ExileServer_object_player_network_switchMoveRequest.sqf'],
	['ExileServer_object_player_network_updatePlayerIncapacitatedRequest', 'exile_server\code\ExileServer_object_player_network_updatePlayerIncapacitatedRequest.sqf'],
	['ExileServer_object_tree_network_chopTreeRequest', 'exile_server\code\ExileServer_object_tree_network_chopTreeRequest.sqf'],
	['ExileServer_object_vehicle_createNonPersistentVehicle', 'exile_server\code\ExileServer_object_vehicle_createNonPersistentVehicle.sqf'],
	['ExileServer_object_vehicle_createPersistentVehicle', 'exile_server\code\ExileServer_object_vehicle_createPersistentVehicle.sqf'],
	['ExileServer_object_vehicle_remove', 'exile_server\code\ExileServer_object_vehicle_remove.sqf'],
	['ExileServer_object_vehicle_database_delete', 'exile_server\code\ExileServer_object_vehicle_database_delete.sqf'],
	['ExileServer_object_vehicle_database_insert', 'exile_server\code\ExileServer_object_vehicle_database_insert.sqf'],
	['ExileServer_object_vehicle_database_load', 'exile_server\code\ExileServer_object_vehicle_database_load.sqf'],
	['ExileServer_object_vehicle_database_update', 'exile_server\code\ExileServer_object_vehicle_database_update.sqf'],
	['ExileServer_object_vehicle_event_onDamaged', 'exile_server\code\ExileServer_object_vehicle_event_onDamaged.sqf'],
	['ExileServer_object_vehicle_event_onGetIn', 'exile_server\code\ExileServer_object_vehicle_event_onGetIn.sqf'],
	['ExileServer_object_vehicle_event_onGetOut', 'exile_server\code\ExileServer_object_vehicle_event_onGetOut.sqf'],
	['ExileServer_object_vehicle_event_onMPKilled', 'exile_server\code\ExileServer_object_vehicle_event_onMPKilled.sqf'],
	['ExileServer_object_vehicle_network_flipVehRequest', 'exile_server\code\ExileServer_object_vehicle_network_flipVehRequest.sqf'],
	['ExileServer_object_vehicle_network_lockVehicleRequest', 'exile_server\code\ExileServer_object_vehicle_network_lockVehicleRequest.sqf'],
	['ExileServer_object_vehicle_network_pushVehicleRequest', 'exile_server\code\ExileServer_object_vehicle_network_pushVehicleRequest.sqf'],
	['ExileServer_object_vehicle_network_rotateVehicleRequest', 'exile_server\code\ExileServer_object_vehicle_network_rotateVehicleRequest.sqf'],
	['ExileServer_object_vehicle_network_setFuelRequest', 'exile_server\code\ExileServer_object_vehicle_network_setFuelRequest.sqf'],
	['ExileServer_object_vehicle_network_unlockVehicleRequest', 'exile_server\code\ExileServer_object_vehicle_network_unlockVehicleRequest.sqf'],
	['ExileServer_system_clan_network_registerClanRequest', 'exile_server\code\ExileServer_system_clan_network_registerClanRequest.sqf'],
	['ExileServer_system_database_connect', 'exile_server\code\ExileServer_system_database_connect.sqf'],
	['ExileServer_system_database_query_fireAndForget', 'exile_server\code\ExileServer_system_database_query_fireAndForget.sqf'],
	['ExileServer_system_database_query_insertSingle', 'exile_server\code\ExileServer_system_database_query_insertSingle.sqf'],
	['ExileServer_system_database_query_selectFull', 'exile_server\code\ExileServer_system_database_query_selectFull.sqf'],
	['ExileServer_system_database_query_selectSingle', 'exile_server\code\ExileServer_system_database_query_selectSingle.sqf'],
	['ExileServer_system_database_query_selectSingleField', 'exile_server\code\ExileServer_system_database_query_selectSingleField.sqf'],
	['ExileServer_system_localityMonitor_initialize', 'exile_server\code\ExileServer_system_localityMonitor_initialize.sqf'],
	['ExileServer_system_localityMonitor_thread_monitor', 'exile_server\code\ExileServer_system_localityMonitor_thread_monitor.sqf'],
	['ExileServer_system_lootManager_dropItem', 'exile_server\code\ExileServer_system_lootManager_dropItem.sqf'],
	['ExileServer_system_lootManager_initialize', 'exile_server\code\ExileServer_system_lootManager_initialize.sqf'],
	['ExileServer_system_lootManager_spawnLootForPlayer', 'exile_server\code\ExileServer_system_lootManager_spawnLootForPlayer.sqf'],
	['ExileServer_system_lootManager_thread_despawnLoot', 'exile_server\code\ExileServer_system_lootManager_thread_despawnLoot.sqf'],
	['ExileServer_system_lootManager_thread_spawnLoot', 'exile_server\code\ExileServer_system_lootManager_thread_spawnLoot.sqf'],
	['ExileServer_system_network_dispatchIncomingMessage', 'exile_server\code\ExileServer_system_network_dispatchIncomingMessage.sqf'],
	['ExileServer_system_network_event_onHandleDisconnect', 'exile_server\code\ExileServer_system_network_event_onHandleDisconnect.sqf'],
	['ExileServer_system_network_event_onPlayerConnected', 'exile_server\code\ExileServer_system_network_event_onPlayerConnected.sqf'],
	['ExileServer_system_network_event_onPlayerDisconnected', 'exile_server\code\ExileServer_system_network_event_onPlayerDisconnected.sqf'],
	['ExileServer_system_network_send_broadcast', 'exile_server\code\ExileServer_system_network_send_broadcast.sqf'],
	['ExileServer_system_network_send_broadcastJip', 'exile_server\code\ExileServer_system_network_send_broadcastJip.sqf'],
	['ExileServer_system_network_send_to', 'exile_server\code\ExileServer_system_network_send_to.sqf'],
	['ExileServer_system_party_network_inviteToPartyRequest', 'exile_server\code\ExileServer_system_party_network_inviteToPartyRequest.sqf'],
	['ExileServer_system_party_network_kickFromPartyRequest', 'exile_server\code\ExileServer_system_party_network_kickFromPartyRequest.sqf'],
	['ExileServer_system_playerSaveQueue_initialize', 'exile_server\code\ExileServer_system_playerSaveQueue_initialize.sqf'],
	['ExileServer_system_playerSaveQueue_thread_saveplayer', 'exile_server\code\ExileServer_system_playerSaveQueue_thread_saveplayer.sqf'],
	['ExileServer_system_process_postInit', 'exile_server\code\ExileServer_system_process_postInit.sqf'],
	['ExileServer_system_process_preInit', 'exile_server\code\ExileServer_system_process_preInit.sqf'],
	['ExileServer_system_rcon_initialize', 'exile_server\code\ExileServer_system_rcon_initialize.sqf'],
	['ExileServer_system_rcon_setupEvents', 'exile_server\code\ExileServer_system_rcon_setupEvents.sqf'],
	['ExileServer_system_rcon_event_clearBuffers', 'exile_server\code\ExileServer_system_rcon_event_clearBuffers.sqf'],
	['ExileServer_system_rcon_event_kickAll', 'exile_server\code\ExileServer_system_rcon_event_kickAll.sqf'],
	['ExileServer_system_rcon_event_kickAllrestart', 'exile_server\code\ExileServer_system_rcon_event_kickAllrestart.sqf'],
	['ExileServer_system_rcon_event_ready', 'exile_server\code\ExileServer_system_rcon_event_ready.sqf'],
	['ExileServer_system_rcon_event_sendCommand', 'exile_server\code\ExileServer_system_rcon_event_sendCommand.sqf'],
	['ExileServer_system_rcon_thread_check', 'exile_server\code\ExileServer_system_rcon_thread_check.sqf'],
	['ExileServer_system_session_createId', 'exile_server\code\ExileServer_system_session_createId.sqf'],
	['ExileServer_system_session_getPlayerObject', 'exile_server\code\ExileServer_system_session_getPlayerObject.sqf'],
	['ExileServer_system_session_getRandomPlayer', 'exile_server\code\ExileServer_system_session_getRandomPlayer.sqf'],
	['ExileServer_system_session_getSessionId', 'exile_server\code\ExileServer_system_session_getSessionId.sqf'],
	['ExileServer_system_session_isRegisteredId', 'exile_server\code\ExileServer_system_session_isRegisteredId.sqf'],
	['ExileServer_system_session_unregister', 'exile_server\code\ExileServer_system_session_unregister.sqf'],
	['ExileServer_system_session_updatePlayerObject', 'exile_server\code\ExileServer_system_session_updatePlayerObject.sqf'],
	['ExileServer_system_session_network_startSessionRequest', 'exile_server\code\ExileServer_system_session_network_startSessionRequest.sqf'],
	['ExileServer_system_session_network_updateSessionRequest', 'exile_server\code\ExileServer_system_session_network_updateSessionRequest.sqf'],
	['ExileServer_system_simulationMonitor_addVehicle', 'exile_server\code\ExileServer_system_simulationMonitor_addVehicle.sqf'],
	['ExileServer_system_simulationMonitor_initialize', 'exile_server\code\ExileServer_system_simulationMonitor_initialize.sqf'],
	['ExileServer_system_simulationMonitor_removeVehicle', 'exile_server\code\ExileServer_system_simulationMonitor_removeVehicle.sqf'],
	['ExileServer_system_simulationMonitor_thread_toggleSimulation', 'exile_server\code\ExileServer_system_simulationMonitor_thread_toggleSimulation.sqf'],
	['ExileServer_system_swapOwnershipQueue_initialize', 'exile_server\code\ExileServer_system_swapOwnershipQueue_initialize.sqf'],
	['ExileServer_system_swapOwnershipQueue_thread_dispatchQueue', 'exile_server\code\ExileServer_system_swapOwnershipQueue_thread_dispatchQueue.sqf'],
	['ExileServer_system_territory_create', 'exile_server\code\ExileServer_system_territory_create.sqf'],
	['ExileServer_system_territory_database_insert', 'exile_server\code\ExileServer_system_territory_database_insert.sqf'],
	['ExileServer_system_territory_database_load', 'exile_server\code\ExileServer_system_territory_database_load.sqf'],
	['ExileServer_system_territory_maintenance_check', 'exile_server\code\ExileServer_system_territory_maintenance_check.sqf'],
	['ExileServer_system_territory_maintenance_kill', 'exile_server\code\ExileServer_system_territory_maintenance_kill.sqf'],
	['ExileServer_system_territory_maintenance_recalculateDueDate', 'exile_server\code\ExileServer_system_territory_maintenance_recalculateDueDate.sqf'],
	['ExileServer_system_territory_network_addToTerritoryRequest', 'exile_server\code\ExileServer_system_territory_network_addToTerritoryRequest.sqf'],
	['ExileServer_system_territory_network_payTerritoryProtectionMoneyRequest', 'exile_server\code\ExileServer_system_territory_network_payTerritoryProtectionMoneyRequest.sqf'],
	['ExileServer_system_territory_network_purchaseTerritory', 'exile_server\code\ExileServer_system_territory_network_purchaseTerritory.sqf'],
	['ExileServer_system_territory_network_removeFromTerritoryRequest', 'exile_server\code\ExileServer_system_territory_network_removeFromTerritoryRequest.sqf'],
	['ExileServer_system_territory_network_requestTerritoryUpgradeDialog', 'exile_server\code\ExileServer_system_territory_network_requestTerritoryUpgradeDialog.sqf'],
	['ExileServer_system_territory_network_territoryUpgradeRequest', 'exile_server\code\ExileServer_system_territory_network_territoryUpgradeRequest.sqf'],
	['ExileServer_system_thread_addTask', 'exile_server\code\ExileServer_system_thread_addTask.sqf'],
	['ExileServer_system_thread_initialize', 'exile_server\code\ExileServer_system_thread_initialize.sqf'],
	['ExileServer_system_thread_removeTask', 'exile_server\code\ExileServer_system_thread_removeTask.sqf'],
	['ExileServer_system_thread_threadAdjust', 'exile_server\code\ExileServer_system_thread_threadAdjust.sqf'],
	['ExileServer_system_thread_task_broadcastServerFps', 'exile_server\code\ExileServer_system_thread_task_broadcastServerFps.sqf'],
	['ExileServer_system_trading_network_purchaseItemRequest', 'exile_server\code\ExileServer_system_trading_network_purchaseItemRequest.sqf'],
	['ExileServer_system_trading_network_purchaseVehicleRequest', 'exile_server\code\ExileServer_system_trading_network_purchaseVehicleRequest.sqf'],
	['ExileServer_system_trading_network_purchaseVehicleSkinRequest', 'exile_server\code\ExileServer_system_trading_network_purchaseVehicleSkinRequest.sqf'],
	['ExileServer_system_trading_network_sellItemRequest', 'exile_server\code\ExileServer_system_trading_network_sellItemRequest.sqf'],
	['ExileServer_system_trading_network_sendMoneyRequest', 'exile_server\code\ExileServer_system_trading_network_sendMoneyRequest.sqf'],
	['ExileServer_system_trading_network_wasteDumpRequest', 'exile_server\code\ExileServer_system_trading_network_wasteDumpRequest.sqf'],
	['ExileServer_system_vehicleSaveQueue_addVehicle', 'exile_server\code\ExileServer_system_vehicleSaveQueue_addVehicle.sqf'],
	['ExileServer_system_vehicleSaveQueue_initialize', 'exile_server\code\ExileServer_system_vehicleSaveQueue_initialize.sqf'],
	['ExileServer_system_vehicleSaveQueue_removeVehicle', 'exile_server\code\ExileServer_system_vehicleSaveQueue_removeVehicle.sqf'],
	['ExileServer_system_vehicleSaveQueue_network_vehicleSaveRequest', 'exile_server\code\ExileServer_system_vehicleSaveQueue_network_vehicleSaveRequest.sqf'],
	['ExileServer_system_vehicleSaveQueue_thread_saveVehicles', 'exile_server\code\ExileServer_system_vehicleSaveQueue_thread_saveVehicles.sqf'],
	['ExileServer_system_weather_initialize', 'exile_server\code\ExileServer_system_weather_initialize.sqf'],
	['ExileServer_system_weather_thread_weatherSimulation', 'exile_server\code\ExileServer_system_weather_thread_weatherSimulation.sqf'],
	['ExileServer_util_getItemCargo', 'exile_server\code\ExileServer_util_getItemCargo.sqf'],
	['ExileServer_util_getObjectContainerCargo', 'exile_server\code\ExileServer_util_getObjectContainerCargo.sqf'],
	['ExileServer_util_log', 'exile_server\code\ExileServer_util_log.sqf'],
	['ExileServer_util_extDB2_createMessage', 'exile_server\code\ExileServer_util_extDB2_createMessage.sqf'],
	['ExileServer_util_fill_fillContainers', 'exile_server\code\ExileServer_util_fill_fillContainers.sqf'],
	['ExileServer_util_fill_fillItems', 'exile_server\code\ExileServer_util_fill_fillItems.sqf'],
	['ExileServer_util_fill_fillMagazines', 'exile_server\code\ExileServer_util_fill_fillMagazines.sqf'],
	['ExileServer_util_fill_fillWeapons', 'exile_server\code\ExileServer_util_fill_fillWeapons.sqf'],
	['ExileServer_util_position_findRoadPosition', 'exile_server\code\ExileServer_util_position_findRoadPosition.sqf'],
	['ExileServer_util_position_isPlayerNearby', 'exile_server\code\ExileServer_util_position_isPlayerNearby.sqf'],
	['ExileServer_util_time_addTime', 'exile_server\code\ExileServer_util_time_addTime.sqf'],
	['ExileServer_util_time_currentTime', 'exile_server\code\ExileServer_util_time_currentTime.sqf'],
	['ExileServer_util_time_toArma', 'exile_server\code\ExileServer_util_time_toArma.sqf'],
	['ExileServer_util_time_toMinutes', 'exile_server\code\ExileServer_util_time_toMinutes.sqf'],
	['ExileServer_util_time_uptime', 'exile_server\code\ExileServer_util_time_uptime.sqf'],
	['ExileServer_world_calculateVehicleGrid', 'exile_server\code\ExileServer_world_calculateVehicleGrid.sqf'],
	['ExileServer_world_deleateUnMaintained', 'exile_server\code\ExileServer_world_deleateUnMaintained.sqf'],
	['ExileServer_world_initialize', 'exile_server\code\ExileServer_world_initialize.sqf'],
	['ExileServer_world_loadAllDatabaseConstructions', 'exile_server\code\ExileServer_world_loadAllDatabaseConstructions.sqf'],
	['ExileServer_world_loadAllDatabaseContainers', 'exile_server\code\ExileServer_world_loadAllDatabaseContainers.sqf'],
	['ExileServer_world_loadAllDatabaseVehicles', 'exile_server\code\ExileServer_world_loadAllDatabaseVehicles.sqf'],
	['ExileServer_world_loadAllTerritories', 'exile_server\code\ExileServer_world_loadAllTerritories.sqf'],
	['ExileServer_world_spawnSpawnZoneVehicles', 'exile_server\code\ExileServer_world_spawnSpawnZoneVehicles.sqf'],
	['ExileServer_world_spawnVehicles', 'exile_server\code\ExileServer_world_spawnVehicles.sqf']
];

call ExileServer_system_process_preInit;

true