from Plugins.Plugin import PluginDescriptor
from Screens.Console import Console

def main(session, **kwargs):
	session.open(Console,
	             title = "Skin Updater",
	             cmdlist = ["sh '/usr/script/SkinUpdater.sh'"])

def Plugins(**kwargs):
	return [PluginDescriptor(
	             name = "Skin Updater",
	             description = "Updatescript only for Skins",
	             where = PluginDescriptor.WHERE_PLUGINMENU,
	             fnc = main,
	             icon = "plugin.png")]
