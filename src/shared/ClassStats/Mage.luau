--!strict
-- ข้อมูล stat ของคลาส Mage
-- ATK ต่ำแต่ INT สูงมาก ดาเมจหลักมาจากเวท เลือดน้อยที่สุด

local Types = require(script.Parent.Types)

local data: Types.ClassData = {
	name = "Mage",
	displayName = "Mage",
	role = "สายเวทมนตร์",
	stats = {
		ATK = 30,
		HP = 700,
		AGI = 40,
		INT = 90,
	},
}

return data
