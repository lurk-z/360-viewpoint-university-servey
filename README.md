# 360 Viewpoint University Survey

ทัวร์เสมือนจริง 360° แบบอินเทอร์แอกทีฟ สร้างจากภาพพาโนรามาในโฟลเดอร์ `images/`
ออกแบบโครงสร้าง/ฟีเจอร์ตามแนวทางของ [KKBS Virtual Tour](https://kkbs360.kku.ac.th/)

An interactive 360° virtual tour built from the panoramas in `images/`, modeled on the KKBS Virtual Tour.

## วิธีเปิด / How to run

**แนะนำ (ทุกเบราว์เซอร์):** ดับเบิลคลิก `start-tour.bat`
แล้วเบราว์เซอร์จะเปิดที่ `http://localhost:8360` ให้อัตโนมัติ
(ต้องมี Python หรือ Node.js อย่างใดอย่างหนึ่งในเครื่อง)

> ทัวร์ 360 ต้องเปิดผ่านเว็บเซิร์ฟเวอร์ ภาพพาโนรามาจึงจะโหลดได้ครบในทุกเบราว์เซอร์
> การดับเบิลคลิก `index.html` ตรง ๆ อาจใช้ได้บน Firefox แต่ Chrome จะบล็อกการโหลดภาพแบบ `file://`

**Recommended:** double-click `start-tour.bat` — it launches a small local server and opens the tour. Requires Python or Node.js installed.

## ฟีเจอร์ / Features

- 4 ฉาก 360° เชื่อมกันด้วยจุด hotspot (ทางเข้าอาคาร · ระเบียง/บันได · ลานจอดจักรยาน · ห้องภายใน)
- จุดข้อมูล (info points) คลิกเปิดรายละเอียด
- หมุนอัตโนมัติ · เต็มจอ · เข็มทิศ · ซูม · รีเซ็ตมุมมอง
- แถบเลือกฉากแบบรูปย่อ (thumbnails) + แผนผังเส้นทางย่อ (mini-map)
- สองภาษา ไทย/อังกฤษ สลับได้ทันที
- คีย์ลัด: ลูกศรซ้าย/ขวา เปลี่ยนฉาก, Esc ปิดหน้าต่าง

## โครงสร้างไฟล์ / Structure

```
index.html            หน้าเว็บทัวร์หลัก (UI + ตรรกะทั้งหมด)
start-tour.bat        ตัวเปิดเซิร์ฟเวอร์ + เบราว์เซอร์
lib/                  ตัวแสดงผล Pannellum (ออฟไลน์)
tour/pano/            ภาพพาโนรามาที่ปรับขนาดสำหรับเว็บ
tour/thumbs/          ภาพย่อสำหรับแถบเลือกฉาก
images/               ภาพต้นฉบับ
```

## Stack

Pannellum (WebGL equirectangular 360 viewer, bundled offline) + custom HTML/CSS/JS UI.
เลือกเพราะเบา รองรับทัวร์หลายฉาก/hotspot/เข็มทิศในตัว และไม่ต้องพึ่ง build tool — เปิดแล้วใช้ได้ทันที
