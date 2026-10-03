--!strict
-- ข้อมูล stat ของคลาส Assassin
-- เร็วที่สุดและตีแรง แต่บาง พลาดนิดเดียวอาจตายได้

local Types = require(script.Parent.Types)

local data: Types.ClassData = {
	name = "Assassin",
	displayName = "Assassin",
	role = "สายลอบสังหาร เร็วและแรง",
	stats = {
		ATK = 85,
		HP = 750,
		AGI = 90,
		INT = 25,
	},
}

return data
