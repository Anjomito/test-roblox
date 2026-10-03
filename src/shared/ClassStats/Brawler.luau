--!strict
-- ข้อมูล stat ของคลาส Brawler
-- เลือดเยอะรองจาก Warrior ตีแรงกว่า แต่ INT ต่ำสุด

local Types = require(script.Parent.Types)

local data: Types.ClassData = {
	name = "Brawler",
	displayName = "Brawler",
	role = "สายต่อยประชิด",
	stats = {
		ATK = 80,
		HP = 1100,
		AGI = 55,
		INT = 15,
	},
}

return data
