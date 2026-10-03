--!strict
-- ข้อมูล stat ของคลาส Warrior
-- เลือดเยอะ ตีแรงพอใช้ แต่ช้า เหมาะกับมือใหม่

local Types = require(script.Parent.Types)

local data: Types.ClassData = {
	name = "Warrior",
	displayName = "Warrior",
	role = "สายประชิด ถึกและสมดุล",
	stats = {
		ATK = 70,
		HP = 1200,
		AGI = 40,
		INT = 20,
	},
}

return data
