--!strict
-- รวมข้อมูล stat ของทั้ง 6 คลาสไว้ที่เดียว
-- วิธีใช้ (ได้ทั้ง server และ client เพราะอยู่ใน ReplicatedStorage):
--   local ClassStats = require(ReplicatedStorage.Shared.ClassStats)
--   local warrior = ClassStats.get("Warrior")
--   print(warrior.stats.HP) --> 1200
--
-- ค่าตัวเลขทั้งหมดเป็นค่าเริ่มต้นสำหรับทดสอบ ปรับสมดุลได้ที่ไฟล์ของแต่ละคลาส
-- สำคัญ: client อ่านค่านี้ไปแสดงบน UI ได้ แต่การคำนวณดาเมจจริงต้องทำฝั่ง server เท่านั้น

local Types = require(script.Types)

export type Stats = Types.Stats
export type ClassData = Types.ClassData

-- ลำดับคลาส ใช้เรียงปุ่มในหน้าเลือกคลาส
local CLASS_ORDER = { "Warrior", "Archer", "Mage", "Assassin", "Brawler", "Lancer" }

local classes: { [string]: ClassData } = {}

for _, className in CLASS_ORDER do
	local data: ClassData = require(script:FindFirstChild(className) :: ModuleScript) :: any

	-- table.freeze ทำให้แก้ค่าไม่ได้ระหว่างเกมรัน
	-- กันบั๊กที่สคริปต์ไหนเผลอเขียนทับ stat ของคลาสทั้งเกม
	table.freeze(data.stats)
	table.freeze(data)
	classes[className] = data
end

local ClassStats = {}

-- ดึงข้อมูลคลาสจากชื่อ ถ้าไม่มีคลาสนี้จะคืน nil
-- ฝั่ง server ควรเช็ก nil เสมอ เพราะชื่อคลาสที่ client ส่งมาอาจถูกปลอมได้
function ClassStats.get(className: string): ClassData?
	return classes[className]
end

-- คืนรายการชื่อคลาสทั้งหมดตามลำดับ (เป็นสำเนา แก้ไขได้โดยไม่กระทบของจริง)
function ClassStats.getAllNames(): { string }
	return table.clone(CLASS_ORDER)
end

return table.freeze(ClassStats)
