extends Resource
class_name FlagUpgradeSrc



export(String) var unique_name : String
export(String) var display_name : String

export(WUBsUtils.Flags) var variable : int = WUBsUtils.Flags.ALLOW_WALL_CLIMBING
export(int, 0, 8192) var size : int = 64




func get_class() -> String:
	return C.ClassNames.FlagUpgradeSrc