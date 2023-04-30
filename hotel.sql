BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "roomType" (
	"type"	TEXT,
	"price"	INTEGER,
	PRIMARY KEY("type")
);
CREATE TABLE IF NOT EXISTS "food" (
	"food_id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"price"	INTEGER NOT NULL,
	PRIMARY KEY("food_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "item" (
	"item_id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"description"	TEXT,
	"price"	INTEGER NOT NULL,
	PRIMARY KEY("item_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "userInfo" (
	"user_id"	INTEGER,
	"name"	TEXT NOT NULL,
	"address"	TEXT,
	"phone"	TEXT,
	"type"	TEXT NOT NULL DEFAULT 'regular',
	PRIMARY KEY("user_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "orderItem" (
	"order_id"	INTEGER,
	"booking_id"	INTEGER NOT NULL,
	"item_food"	INTEGER,
	"price"	INTEGER,
	"quantity"	INTEGER,
	"total"	INTEGER,
	PRIMARY KEY("order_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "booking" (
	"booking_id"	INTEGER,
	"customer_id"	INTEGER,
	"booking_room"	TEXT,
	"guests"	INTEGER,
	"check_in"	INTEGER,
	"check_out"	INTEGER,
	"booking_type"	TEXT,
	"has_checked_out"	INTEGER,
	PRIMARY KEY("booking_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "room" (
	"room_id"	INTEGER,
	"room_no"	TEXT NOT NULL,
	"bed_number"	INTEGER,
	"tv"	TEXT,
	"wifi"	TEXT,
	"gizer"	TEXT,
	"phone"	TEXT,
	"room_class"	TEXT NOT NULL,
	PRIMARY KEY("room_id" AUTOINCREMENT)
);
INSERT INTO "roomType" ("type","price") VALUES ('deluxe',3000);
INSERT INTO "roomType" ("type","price") VALUES ('Standard',1500);
INSERT INTO "roomType" ("type","price") VALUES ('Suite',5000);
INSERT INTO "roomType" ("type","price") VALUES ('golden',7500);
INSERT INTO "roomType" ("type","price") VALUES ('silver',6000);
INSERT INTO "roomType" ("type","price") VALUES ('platnum',9800);
INSERT INTO "food" ("food_id","name","price") VALUES (1,'burger',100);
INSERT INTO "food" ("food_id","name","price") VALUES (4,'Malt',10);
INSERT INTO "food" ("food_id","name","price") VALUES (6,'Fanta',2);
INSERT INTO "item" ("item_id","name","description","price") VALUES (2,'Swiming','Get access to Swimming for 1 hour',200);
INSERT INTO "item" ("item_id","name","description","price") VALUES (3,'gym','gym airoby',75);
INSERT INTO "item" ("item_id","name","description","price") VALUES (5,'boxing','Guest can hire somebody to train them on kick boxing',250);
INSERT INTO "userInfo" ("user_id","name","address","phone","type") VALUES (48,'Mfodwo Christian','p. o. Box 60','0243288028','null');
INSERT INTO "userInfo" ("user_id","name","address","phone","type") VALUES (50,'hgvgv','v gh ','6789','yjh');
INSERT INTO "userInfo" ("user_id","name","address","phone","type") VALUES (51,'Mary','p. o. box 23','059932453','customer');
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (1,25,'burger',100,2,200);
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (3,27,'burger',100,2,200);
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (5,28,'A101',1500,0,0);
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (6,27,'A401',1500,2,3000);
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (7,26,'A301',1500,4,6000);
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (8,25,'A201',1500,4,6000);
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (9,24,'A101',1500,7,10500);
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (10,29,'A201',1500,2,3000);
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (11,28,'A101',1500,0,0);
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (12,26,'A301',1500,4,6000);
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (13,27,'A401',1500,1,1500);
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (14,25,'A201',1500,4,6000);
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (15,31,'burger',100,3,300);
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (16,31,'A501',1500,2,3000);
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (17,1,'burger',100,3,300);
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (18,1000,'cocacola',50,2,100);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (24,4,'A101',2,1439537365,1440173817,'On Spot',0);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (25,26,'A201',2,1439796741,1440174705,'On Spot',1);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (26,39,'A301',2,1439796768,1440174486,'On Spot',1);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (27,35,'A401',2,1440315213,1440174554,'On Spot',1);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (28,34,'A101',2,1440180748,1440174176,'On Spot',1);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (29,40,'A201',2,1440400451,1440173969,'On Spot',1);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (30,26,'A101',3,1469332731,1469505609,'On Spot',0);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (31,4,'A501',2,1469419721,1469160671,'On Spot',1);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (32,42,'A101',3,1548423207,1548682588,'Paid reservation',0);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (33,42,'A201',3,1548423207,1548682588,'Paid reservation',0);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (34,42,'A301',3,1548423207,1548682588,'Paid reservation',0);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (35,43,'A101',2,1577313628,1577486546,'On Spot',0);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (36,45,'A101',4,1577316539,1577489427,'On Spot',0);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (37,46,'A101',1,1681247692,1682035200,'On Spot',0);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (38,47,'A101',2,1682608130,1680793766,'Paid reservation',0);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (39,48,'A299',1,1682608188,1680793976,'On Spot',0);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (40,51,'A401',2,1682781898,1680535599,'On Spot',0);
INSERT INTO "room" ("room_id","room_no","bed_number","tv","wifi","gizer","phone","room_class") VALUES (13,'A101',2,'true','true','false','false','Standard');
INSERT INTO "room" ("room_id","room_no","bed_number","tv","wifi","gizer","phone","room_class") VALUES (16,'A401',2,'true','true','false','false','Standard');
INSERT INTO "room" ("room_id","room_no","bed_number","tv","wifi","gizer","phone","room_class") VALUES (18,'A299',2,'false','false','true','true','deluxe');
INSERT INTO "room" ("room_id","room_no","bed_number","tv","wifi","gizer","phone","room_class") VALUES (19,'B203',2,'true','true','true','true','golden');
COMMIT;
