#pragma semicolon 1
#include <sourcemod>
#include <cstrike>
#include <sdktools>
#include <sdkhooks>

#include "Furien/globals.sp"
#include "Furien/client.sp"
#include "Furien/functions.sp"
#include "Furien/misc.sp"
#include "Furien/eventhooks.sp"
#include "Furien/commands_callbacks.sp"
#include "Furien/menus.sp"
#include "Furien/menus_callbacks.sp"
#include "Furien/mysql.sp"

#define PLUGIN_NAME "FurienMOD for CSGO"
#define PLUGIN_AUTHOR "ESK0 w/ etc...."
#define PLUGIN_VERSION "0.1a"
#define PLUGIN_DESCRIPTION "Very famous CS 1.6 mod with very huge community for CSGO"
#define PLUGIN_URL "https://github.com/ESK0/FurienCSGO"

public Plugin myinfo =
{
  name = PLUGIN_NAME,
  author = PLUGIN_AUTHOR,
  version = PLUGIN_VERSION,
  description = PLUGIN_DESCRIPTION,
  url = PLUGIN_URL
};
public APLRes AskPluginLoad2(Handle myself, bool late, char[] error, err_max)
{
  if(GetEngineVersion() != Engine_CSGO)
  {
    SetFailState("[FurienGO] - Game is unsupported, Only CS:GO!");
  }
  return APLRes_Success;
}
public void OnPluginStart()
{
  HookEvent("round_prestart", Event_OnRoundPreStart);
  HookEvent("round_start", Event_OnRoundStart);
  HookEvent("round_end", Event_OnRoundEnd);
  HookEvent("player_spawn", Event_OnPlayerSpawn);
  HookEvent("player_death", Event_OnPlayerDeath);
  HookEvent("player_team", Event_OnPlayerPreTeam, EventHookMode_Pre);

  for(int i; i < sizeof(g_sRadioCommands); i++)
	{
		AddCommandListener(Command_BlockRadio, g_sRadioCommands[i]);
	}
}
public void OnMapStart()
{
  SetCvarStr("mp_teamname_1", "ANTI-FURIENS");
  SetCvarStr("mp_teamname_2", "FURIENS");
  SetCvarInt("sv_ignoregrenaderadio", 1);
  SetCvarInt("sv_disable_immunity_alpha", 1);

  MySql_Connect();
}
public void OnMapEnd()
{

}
public void OnClientPutInServer(int client)
{
  if(IsValidClient(client))
  {
    MySql_LoadClient(client);
  }
}
public void OnClientDisconnect(int client)
{

}
