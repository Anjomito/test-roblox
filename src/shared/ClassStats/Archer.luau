--!strict
-- ข้อมูล stat ของคลาส Archer
-- ตีจากระยะไกล เลือดน้อย ต้องรักษาระยะห่างจากศัตรู

local Types = require(script.Parent.Types)

local data: Types.ClassData = {
	name = "Archer",
	displayName = "Archer",
	role = "สายยิงระยะไกล",
	stats = {
		ATK = 75,
		HP = 800,
		AGI = 65,
		INT = 30,
	},
}

return data
