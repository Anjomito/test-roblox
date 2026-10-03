--!strict
-- ข้อมูล stat ของคลาส Lancer
-- ตีได้ไกลกว่าสายประชิดเล็กน้อย stat กลาง ๆ ทุกด้าน

local Types = require(script.Parent.Types)

local data: Types.ClassData = {
	name = "Lancer",
	displayName = "Lancer",
	role = "สายหอก ระยะกลาง",
	stats = {
		ATK = 78,
		HP = 950,
		AGI = 60,
		INT = 25,
	},
}

return data
