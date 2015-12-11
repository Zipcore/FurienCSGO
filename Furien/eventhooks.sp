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
