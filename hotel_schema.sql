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
COMMIT;
