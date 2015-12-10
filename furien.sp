#pragma semicolon 1
#include <sourcemod>
#include <cstrike>
#include <sdktools>
#include <sdkhooks>

#include "Furien/client.sp"
//#include "Furien/globals.sp"
//#include "Furien/natives.sp"
//#include "Furien/forwards.sp"

#define PLUGIN_NAME "FurienMOD for CSGO"
#define PLUGIN_AUTHOR "ESK0 w/ etc...."
#define PLUGIN_VERSION "0.0"
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
public void OnPluginStart()
{
  HookEvent("round_prestart", Event_OnRoundPreStart);
  HookEvent("round_start", Event_OnRoundStart);
  HookEvent("round_end", Event_OnRoundEnd);
  HookEvent("player_spawn", Event_OnPlayerSpawn);
  HookEvent("player_death", Event_OnPlayerDeath);
  HookEvent("player_team", Event_OnPlayerPreTeam, EventHookMode_Pre);
}
public void OnMapStart()
{

}
public void OnMapEnd()
{

}
public void OnClientPutInServer(int client)
{

}
public void OnClientDisconnect(int client)
{

}

public Action Event_OnRoundPreStart(Handle event, const char[] name, bool dontBroadcast)
{
  return Plugin_Continue;
}
public Action Event_OnRoundStart(Handle event, const char[] name, bool dontBroadcast)
{
  return Plugin_Continue;
}
public Action Event_OnRoundEnd(Handle event, const char[] name, bool dontBroadcast)
{
  return Plugin_Continue;
}
public Action Event_OnPlayerSpawn(Handle event, const char[] name, bool dontBroadcast)
{
  //int client = GetClientOfUserId(GetEventInt(event, "userid"));
  return Plugin_Continue;
}
public Action Event_OnPlayerDeath(Handle event, const char[] name, bool dontBroadcast)
{
  //int victim = GetClientOfUserId(GetEventInt(event, "userid"));
  //int attacker = GetClientOfUserId(GetEventInt(event, "attacker"));
  return Plugin_Continue;
}
public Action Event_OnPlayerPreTeam(Handle event, const char[] name, bool dontbroadcast)
{
	dontbroadcast = true;
	return Plugin_Changed;
}
