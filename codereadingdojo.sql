BEGIN TRANSACTION;
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "provider" varchar DEFAULT 'email' NOT NULL, "uid" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "confirmation_token" varchar, "confirmed_at" datetime, "confirmation_sent_at" datetime, "unconfirmed_email" varchar, "name" varchar, "nickname" varchar, "image" varchar, "email" varchar, "tokens" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "username" varchar, "levelcompleted" varchar);
INSERT INTO `users` VALUES (1,'email','test@test.com','$2a$11$FDDtnz2AfKahjQp0KxuffudsWK6282ORce4VFR9.cuyIGm7AaVe6.',NULL,NULL,NULL,85,'2016-10-26 01:17:46.385000','2016-10-26 01:17:09.189000','172.31.4.70','172.31.4.70',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'test@test.com','{"yxNsfHVW9KXFibugbnhIKw":{"token":"$2a$10$rBQoGRTobfZpAybZ.04hHuMpr23SjvgQTXyYvnLw8ebvYzPwE8xyq","expiry":1478657320},"Gg3cWfTPpEehRsXjZ5Rp4A":{"token":"$2a$10$fHi3h3i1hwOgrzJXLFWdzOm8DED8scjX6q0X3ANZIV1r/wyS2ma5i","expiry":1478657352},"Kold4LkIhwlAatud6AokvQ":{"token":"$2a$10$HiAZSRfn2tgM2bZyxhavfu3VuPmusvBW9Dau2nMWCGLF.tprulZy.","expiry":1478657422},"eCeOcJtNK3ZZJfhdMLHDxw":{"token":"$2a$10$IA3fjwt6PQJTZc9qM141mOKmfN3QvQ86j0YPQo4BKHTytZHYtsNHu","expiry":1478657620},"fFp5RTlxb3f6sPDzToYHRA":{"token":"$2a$10$M2yFYlgdN9pxOsH.qj03JOv5Ux6XhnJeq.WbJzfOMv.VJfxtRp.xy","expiry":1478657677},"yEuDZTUIOz0l1yBAMA0ddg":{"token":"$2a$10$xuNqy0H0mEOJLdbuvasSAO8wYmD2jEWir8aH/n1szHPMtqOy309ny","expiry":1478657737},"fyplK2yhZqysfS9xdK1jxw":{"token":"$2a$10$qAOXEGZJjZIDDpOZ9uKKLeftJyvFYR3qZOYiRFu8CZcTGsH5Gg35S","expiry":1478657757},"s0P-hJgfIinrINfVNBTNGA":{"token":"$2a$10$KRdeHRCYPVBWFeNDz6kO4.xAT2Ow0H/BuBx7gVkOLvik4YpCuky8.","expiry":1478657777},"orfWTAhumubmlWoI__eIsw":{"token":"$2a$10$NAypPw/MNcr4ocFpGXqETOXRl7pbLasDAxWbSWsJi5TOhX61r6MQC","expiry":1478657829},"KGZC_So8ug64HT-SDmJ8Fg":{"token":"$2a$10$mMVX3Ph3lcHJ4e13qzwrcOYJz7p9tzcFjZqbAMIA1NmuJIfiDdx.m","expiry":1478657866}}','2016-10-17 23:57:47.755604','2016-10-26 01:17:46.410000','test@test.com',NULL);
CREATE TABLE "programs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "code" varchar, "difficulty" varchar, "level" varchar, "errorindexes" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO `programs` VALUES (1,'1public class Adder {
   public static int main(String[] args) {
     Scanner scan = Scanner(System.in);
     int a = scan.nextInt();
     adder(a);
     System.out.println(a);
   }
   static void adder(int x){
     x=x+1;
   }
 }
 ','beginner','1','x=x+1; int Scanner(System.in);
','2016-10-17 23:57:47.522108','2016-10-17 23:57:47.522108');
INSERT INTO `programs` VALUES (2,'2public class Adder {
   public static int main(String[] args) {
     Scanner scan = Scanner(System.in);
     int a = scan.nextInt();
     adder(a);
     System.out.println(a);
   }
   static void adder(int x){
     x=x+1;
   }
 }
 ','beginner','2','x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
','2016-10-17 23:57:47.524991','2016-10-17 23:57:47.524991');
INSERT INTO `programs` VALUES (3,'3public class Adder {
   public static int main(String[] args) {
     Scanner scan = Scanner(System.in);
     int a = scan.nextInt();
     adder(a);
     System.out.println(a);
   }
   static void adder(int x){
     x=x+1;
   }
 }
 ','beginner','3','x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
','2016-10-17 23:57:47.527673','2016-10-17 23:57:47.527673');
INSERT INTO `programs` VALUES (4,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','beginner','4','x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
element,list list.length;
','2016-10-17 23:57:47.531473','2016-10-17 23:57:47.531473');
INSERT INTO `programs` VALUES (5,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','beginner','5','x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
element,list list.length;
element,list list.length;
','2016-10-17 23:57:47.536932','2016-10-17 23:57:47.536932');
INSERT INTO `programs` VALUES (6,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','beginner','6','x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
element,list list.length;
element,list list.length;
element,list list.length;
','2016-10-17 23:57:47.541274','2016-10-17 23:57:47.541274');
INSERT INTO `programs` VALUES (7,'public class Adder {
 	public static int main(String[] args) {
 		Scanner scan = new Scanner(System.in);
 		int a = scan.nextInt();
 		adder(a);
 		System.out.println(a);
 	}
 	static void adder(int x){
 		x=x+1;
 	}
 }
 ','intermediate','1','x=x+1; int
','2016-10-17 23:57:47.552760','2016-10-17 23:57:47.552760');
INSERT INTO `programs` VALUES (8,'public class Adder {
 	public static int main(String[] args) {
 		Scanner scan = new Scanner(System.in);
 		int a = scan.nextInt();
 		adder(a);
 		System.out.println(a);
 	}
 	static void adder(int x){
 		x=x+1;
 	}
 }
 ','intermediate','2','x=x+1; int
x=x+1; int
','2016-10-17 23:57:47.556087','2016-10-17 23:57:47.556087');
INSERT INTO `programs` VALUES (9,'public class Adder {
 	public static int main(String[] args) {
 		Scanner scan = new Scanner(System.in);
 		int a = scan.nextInt();
 		adder(a);
 		System.out.println(a);
 	}
 	static void adder(int x){
 		x=x+1;
 	}
 }
 ','intermediate','3','x=x+1; int
x=x+1; int
x=x+1; int
','2016-10-17 23:57:47.559303','2016-10-17 23:57:47.559303');
INSERT INTO `programs` VALUES (10,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','intermediate','4','x=x+1; int
x=x+1; int
x=x+1; int
element,list list.length;
','2016-10-17 23:57:47.562409','2016-10-17 23:57:47.562409');
INSERT INTO `programs` VALUES (11,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','intermediate','5','x=x+1; int
x=x+1; int
x=x+1; int
element,list list.length;
element,list list.length;
','2016-10-17 23:57:47.565287','2016-10-17 23:57:47.565287');
INSERT INTO `programs` VALUES (12,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','intermediate','6','x=x+1; int
x=x+1; int
x=x+1; int
element,list list.length;
element,list list.length;
element,list list.length;
','2016-10-17 23:57:47.568372','2016-10-17 23:57:47.568372');
INSERT INTO `programs` VALUES (13,'public class Adder {
 	public static int main(String[] args) {
 		Scanner scan = new Scanner(System.in);
 		int a = scan.nextInt();
 		adder(a);
 		System.out.println(a);
 	}
 	static void adder(int x){
 		x=x+1;
 	}
 }
 ','advanced','1','x=x+1; int
','2016-10-17 23:57:47.571305','2016-10-17 23:57:47.571305');
INSERT INTO `programs` VALUES (14,'public class Adder {
 	public static int main(String[] args) {
 		Scanner scan = new Scanner(System.in);
 		int a = scan.nextInt();
 		adder(a);
 		System.out.println(a);
 	}
 	static void adder(int x){
 		x=x+1;
 	}
 }
 ','advanced','2','x=x+1; int
x=x+1; int
','2016-10-17 23:57:47.573746','2016-10-17 23:57:47.573746');
INSERT INTO `programs` VALUES (15,'public class Adder {
 	public static int main(String[] args) {
 		Scanner scan = new Scanner(System.in);
 		int a = scan.nextInt();
 		adder(a);
 		System.out.println(a);
 	}
 	static void adder(int x){
 		x=x+1;
 	}
 }
 ','advanced','3','x=x+1; int
x=x+1; int
x=x+1; int
','2016-10-17 23:57:47.576443','2016-10-17 23:57:47.576443');
INSERT INTO `programs` VALUES (16,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','advanced','4','x=x+1; int
x=x+1; int
x=x+1; int
element,list list.length;
','2016-10-17 23:57:47.579392','2016-10-17 23:57:47.579392');
INSERT INTO `programs` VALUES (17,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','advanced','5','x=x+1; int
x=x+1; int
x=x+1; int
element,list list.length;
element,list list.length;
','2016-10-17 23:57:47.583013','2016-10-17 23:57:47.583013');
INSERT INTO `programs` VALUES (18,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','advanced','6','x=x+1; int
x=x+1; int
x=x+1; int
element,list list.length;
element,list list.length;
element,list list.length;
','2016-10-17 23:57:47.586655','2016-10-17 23:57:47.586655');
INSERT INTO `programs` VALUES (19,'1public class Adder {
   public static int main(String[] args) {
     Scanner scan = Scanner(System.in);
     int a = scan.nextInt();
     adder(a);
     System.out.println(a);
   }
   static void adder(int x){
     x=x+1;
   }
 }
 ','beginner','1','x=x+1; int Scanner(System.in);
','2016-10-17 23:58:18.060596','2016-10-17 23:58:18.060596');
INSERT INTO `programs` VALUES (20,'2public class Adder {
   public static int main(String[] args) {
     Scanner scan = Scanner(System.in);
     int a = scan.nextInt();
     adder(a);
     System.out.println(a);
   }
   static void adder(int x){
     x=x+1;
   }
 }
 ','beginner','2','x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
','2016-10-17 23:58:18.074140','2016-10-17 23:58:18.074140');
INSERT INTO `programs` VALUES (21,'3public class Adder {
   public static int main(String[] args) {
     Scanner scan = Scanner(System.in);
     int a = scan.nextInt();
     adder(a);
     System.out.println(a);
   }
   static void adder(int x){
     x=x+1;
   }
 }
 ','beginner','3','x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
','2016-10-17 23:58:18.082032','2016-10-17 23:58:18.082032');
INSERT INTO `programs` VALUES (22,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','beginner','4','x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
element,list list.length;
','2016-10-17 23:58:18.087855','2016-10-17 23:58:18.087855');
INSERT INTO `programs` VALUES (23,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','beginner','5','x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
element,list list.length;
element,list list.length;
','2016-10-17 23:58:18.094775','2016-10-17 23:58:18.094775');
INSERT INTO `programs` VALUES (24,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','beginner','6','x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
x=x+1; int Scanner(System.in);
element,list list.length;
element,list list.length;
element,list list.length;
','2016-10-17 23:58:18.102255','2016-10-17 23:58:18.102255');
INSERT INTO `programs` VALUES (25,'public class Adder {
 	public static int main(String[] args) {
 		Scanner scan = new Scanner(System.in);
 		int a = scan.nextInt();
 		adder(a);
 		System.out.println(a);
 	}
 	static void adder(int x){
 		x=x+1;
 	}
 }
 ','intermediate','1','x=x+1; int
','2016-10-17 23:58:18.151237','2016-10-17 23:58:18.151237');
INSERT INTO `programs` VALUES (26,'public class Adder {
 	public static int main(String[] args) {
 		Scanner scan = new Scanner(System.in);
 		int a = scan.nextInt();
 		adder(a);
 		System.out.println(a);
 	}
 	static void adder(int x){
 		x=x+1;
 	}
 }
 ','intermediate','2','x=x+1; int
x=x+1; int
','2016-10-17 23:58:18.504022','2016-10-17 23:58:18.504022');
INSERT INTO `programs` VALUES (27,'public class Adder {
 	public static int main(String[] args) {
 		Scanner scan = new Scanner(System.in);
 		int a = scan.nextInt();
 		adder(a);
 		System.out.println(a);
 	}
 	static void adder(int x){
 		x=x+1;
 	}
 }
 ','intermediate','3','x=x+1; int
x=x+1; int
x=x+1; int
','2016-10-17 23:58:18.510599','2016-10-17 23:58:18.510599');
INSERT INTO `programs` VALUES (28,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','intermediate','4','x=x+1; int
x=x+1; int
x=x+1; int
element,list list.length;
','2016-10-17 23:58:18.519088','2016-10-17 23:58:18.519088');
INSERT INTO `programs` VALUES (29,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','intermediate','5','x=x+1; int
x=x+1; int
x=x+1; int
element,list list.length;
element,list list.length;
','2016-10-17 23:58:18.529457','2016-10-17 23:58:18.529457');
INSERT INTO `programs` VALUES (30,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','intermediate','6','x=x+1; int
x=x+1; int
x=x+1; int
element,list list.length;
element,list list.length;
element,list list.length;
','2016-10-17 23:58:18.538049','2016-10-17 23:58:18.538049');
INSERT INTO `programs` VALUES (31,'public class Adder {
 	public static int main(String[] args) {
 		Scanner scan = new Scanner(System.in);
 		int a = scan.nextInt();
 		adder(a);
 		System.out.println(a);
 	}
 	static void adder(int x){
 		x=x+1;
 	}
 }
 ','advanced','1','x=x+1; int
','2016-10-17 23:58:18.546370','2016-10-17 23:58:18.546370');
INSERT INTO `programs` VALUES (32,'public class Adder {
 	public static int main(String[] args) {
 		Scanner scan = new Scanner(System.in);
 		int a = scan.nextInt();
 		adder(a);
 		System.out.println(a);
 	}
 	static void adder(int x){
 		x=x+1;
 	}
 }
 ','advanced','2','x=x+1; int
x=x+1; int
','2016-10-17 23:58:18.552699','2016-10-17 23:58:18.552699');
INSERT INTO `programs` VALUES (33,'public class Adder {
 	public static int main(String[] args) {
 		Scanner scan = new Scanner(System.in);
 		int a = scan.nextInt();
 		adder(a);
 		System.out.println(a);
 	}
 	static void adder(int x){
 		x=x+1;
 	}
 }
 ','advanced','3','x=x+1; int
x=x+1; int
x=x+1; int
','2016-10-17 23:58:18.560824','2016-10-17 23:58:18.560824');
INSERT INTO `programs` VALUES (34,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','advanced','4','x=x+1; int
x=x+1; int
x=x+1; int
element,list list.length;
','2016-10-17 23:58:18.567601','2016-10-17 23:58:18.567601');
INSERT INTO `programs` VALUES (35,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','advanced','5','x=x+1; int
x=x+1; int
x=x+1; int
element,list list.length;
element,list list.length;
','2016-10-17 23:58:18.574666','2016-10-17 23:58:18.574666');
INSERT INTO `programs` VALUES (36,'static int binarySearch ( element,list ) { 
 	int low = 0;
 	int high = list.length;
 	int mid;
 	while ( low <= high ) {
 		mid = ( low + high ) / 2;
 		if ( list[mid] == mid )
 			return mid;
 		if ( list[mid] < element )
 			low = mid + 1;
 		else
 			high = mid - 1;
 	}
 	return -1;			
 } ','advanced','6','x=x+1; int
x=x+1; int
x=x+1; int
element,list list.length;
element,list list.length;
element,list list.length;
','2016-10-17 23:58:18.580841','2016-10-17 23:58:18.580841');
CREATE UNIQUE INDEX "index_users_on_uid_and_provider" ON "users" ("uid", "provider");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE INDEX "index_users_on_email" ON "users" ("email");
COMMIT;
