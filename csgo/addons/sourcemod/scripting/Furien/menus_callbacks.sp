public h_AF_SelectWeapon(Menu menu, MenuAction action, client, Position)
{
  if(IsValidClient(client, true))
  {
    if(action == MenuAction_Select)
    {
      char Item[10];
      menu.GetItem(Position, Item, sizeof(Item));
      Money_TakeClientMoney(client, StringToInt(g_sAntiFuriensWeps[StringToInt(Item)+2]));
      GivePlayerItem(client, g_sAntiFuriensWeps[StringToInt(Item)+1]);
    }
  }
}
