-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: pala_db
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pala_root`
--

DROP TABLE IF EXISTS `pala_root`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pala_root` (
  `root_id` int(2) NOT NULL AUTO_INCREMENT,
  `root_definer` varchar(255) DEFAULT NULL,
  `site_debug` tinyint(1) NOT NULL DEFAULT '0',
  `site_access` tinyint(1) NOT NULL DEFAULT '1',
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `site_title` varchar(255) DEFAULT NULL,
  `site_summary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`root_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pala_root`
--

LOCK TABLES `pala_root` WRITE;
/*!40000 ALTER TABLE `pala_root` DISABLE KEYS */;
INSERT INTO `pala_root` VALUES (2,'ThaumyCheng',0,0,'http://www.thaumy.cn','又一个码农的家','Thaumy的博客');
/*!40000 ALTER TABLE `pala_root` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pala_text_index`
--

DROP TABLE IF EXISTS `pala_text_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pala_text_index` (
  `text_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `text_mode` varchar(8) NOT NULL DEFAULT '\0',
  `text_type` varchar(8) NOT NULL DEFAULT 'na',
  PRIMARY KEY (`text_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12398 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pala_text_index`
--

LOCK TABLES `pala_text_index` WRITE;
/*!40000 ALTER TABLE `pala_text_index` DISABLE KEYS */;
INSERT INTO `pala_text_index` VALUES (12347,'onshow','post'),(12350,'onshow','post'),(12351,'onshow','post'),(12356,'onshow','post'),(12359,'onshow','post'),(12364,'onshow','post'),(12365,'onshow','post'),(12366,'onshow','post'),(12369,'onshow','post'),(12373,'onshow','post'),(12376,'onshow','page'),(12377,'onshow','post'),(12379,'onshow','page'),(12380,'onshow','post'),(12381,'onshow','post'),(12382,'onshow','page'),(12383,'onshow','page'),(12384,'onshow','post'),(12385,'onshow','page'),(12386,'onshow','post'),(12387,'onshow','page'),(12388,'onshow','about'),(12389,'onshow','post'),(12390,'onshow','post'),(12393,'onshow','post'),(12394,'onshow','post'),(12395,'onshow','post'),(12396,'onshow','post'),(12397,'onshow','post');
/*!40000 ALTER TABLE `pala_text_index` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`thaumy0tdymy`@`localhost`*/ /*!50003 TRIGGER `sync_index.row_delete` AFTER DELETE ON `pala_text_index` FOR EACH ROW begin



DELETE FROM `pala_db`.`pala_text_main` WHERE `text_id`= old.text_id ;

DELETE FROM `pala_db`.`pala_text_sub` WHERE `text_id`= old.text_id ;



end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pala_text_main`
--

DROP TABLE IF EXISTS `pala_text_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pala_text_main` (
  `text_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `text_title` varchar(32) CHARACTER SET utf8 DEFAULT '标题被吃掉了。。。',
  `text_summary` varchar(64) CHARACTER SET utf8 DEFAULT '简介！也被吃掉了！w(ﾟДﾟ)w',
  `text_content` longtext,
  PRIMARY KEY (`text_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12398 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pala_text_main`
--

LOCK TABLES `pala_text_main` WRITE;
/*!40000 ALTER TABLE `pala_text_main` DISABLE KEYS */;
INSERT INTO `pala_text_main` VALUES (12347,'AdvancedAjaxPageLoader插件实现全站ajax','演示文章','<span style=\"color: #ff0000;\">注意！此文章已于2017.7.26归档并且不再进行维护，新的通用化pjax网站解决方案已经发布：</span><a href=\"http://www.thaumy.cn/article/%e7%bd%91%e7%ab%99%e9%80%9a%e7%94%a8%e5%8c%96pjax%e8%a7%a3%e5%86%b3%e6%96%b9%e6%a1%88\"><span style=\"color: #00ccff;\"><u>点我查看</u></span></a>\r\n\r\n<span style=\"color: #993366;\">最近查找了wordpress的全站ajax实现方法，发现了很好的解决方案，在这里我将详细讲解插件化ajax的实现方法。</span>\r\n<ul>\r\n 	<li>第一步</li>\r\n</ul>\r\n<blockquote><span style=\"color: #ff9900;\">AdvancedAjaxPageLoader</span>\r\n\r\n一款能让你博客实现AJAX的wordpress插件，并具有多功能支持。</blockquote>\r\n<span style=\"text-decoration: underline; color: #ff9900;\">下载上述插件并安装</span>\r\n<ul>\r\n 	<li>第二步</li>\r\n</ul>\r\n打开你的博客，启动F12开发者检查工具，你会看到类似如下的代码：\r\n<pre class=\"lang:xhtml decode:true \">&lt;div id = \"typical_id\" class = \"typical_class\"&gt;\r\n</pre>\r\n记录代码中<span style=\"color: #ff9900;\">id</span>对应的<span style=\"color: #ff9900;\">typical_id</span>和<span style=\"color: #ff9900;\">class</span>对应的<span style=\"color: #ff9900;\">typical_class</span>\r\n<ul>\r\n 	<li>第三步</li>\r\n</ul>\r\n现在让我们打开AdvancedAjaxPageLoader的设置页面：\r\n<ol>\r\n 	<li><span style=\"color: #ff9900;\">将typical_id填写到Content Element ID栏目中</span></li>\r\n 	<li><span style=\"color: #ff9900;\">将typical_class填写到Search Form CLASS栏目中</span></li>\r\n 	<li>点击保存</li>\r\n</ol>\r\n<ul>\r\n 	<li>第四步</li>\r\n</ul>\r\n重新打开你的wordpress网页，检查AJAX是否开启\r\n<ul>\r\n 	<li>常见错误及解决方案*FAQ</li>\r\n</ul>\r\n<blockquote><span style=\"color: #ff9900;\">1.我的网页没有类似上述代码中的id和class</span>\r\n\r\n<strong>打</strong>开你的主题代码编辑页面，在index.php、header.php和footer.php中寻找类似上述的代码，找到后进行第三步操作。（建议除样式表和模板函数以外都查找一遍）</blockquote>\r\n&nbsp;\r\n<blockquote><span style=\"color: #ff9900;\">2.我仔细的进行了上述设置，但是仍然没有开启AJAX</span>\r\n\r\n<strong>如</strong>果你真的确定一切操作没有问题，请清除你当前的浏览器缓存及记录再进行查看或用手机查看你的网页是否打开AJAX</blockquote>\r\n&nbsp;\r\n<blockquote><span style=\"color: #ff9900;\">3.我的网页开启了AJAX，但是有时加载新的页面报错</span>\r\n\r\n<b>可</b>能你的网页服务器响应速度不够快，提升你的服务器速度或优化你的网站，保证被访问的固定链接符合要求，留出足够的系统资源解决该问题（有些硬件老旧的电脑或过老的浏览器貌似也会出现该情况，解决方案在这里不过多解释）</blockquote>\r\n&nbsp;\r\n<ul>\r\n 	<li><span style=\"color: #339966;\">这里感谢Hodpel的博文参考，本文是在其基础上加以完备和修改后发表的。</span></li>\r\n 	<li><span style=\"color: #339966;\">目前我的博客已经采用全站化pjax加载(2017.7.16)，所以本篇文章将不再进行维护。</span></li>\r\n</ul>'),(12350,'StdLib1.06#public更新日志','演示文章','<blockquote><img class=\"alignnone size-medium\" src=\"https://thaumy.github.io/MyBlog/img/article/StdLib1.06%E5%AE%A3%E4%BC%A0%E7%94%BB(%E5%8E%8B%E7%BC%A9).jpg\" width=\"900\" height=\"437\" />\r\n\r\n<span style=\"color: #ff9900;\">StdLib1.06#public</span>\r\n\r\n<span style=\"color: #ff9900;\">经过一周的研究和一周的开发，我对高级算法的理解能力并没有取得多少长进，所以本次S1.06p的更新使用的是我自己研究的算法，我将它成为动下标错位判等算法，其实现原理很简单：</span></blockquote>\r\n<pre class=\"lang:c# decode:true\" title=\"LSS Codes\"><span style=\"color: #000000;\">for (int path = 0; path &lt; a.Length; path++)</span>\r\n            {\r\n                for (int i = 0; i &lt; a.Length; i++)\r\n                {\r\n                    if (i + 1 &lt; a.Length)\r\n                    {\r\n                        int tmp = 0;\r\n                        if (a[i] &gt; a[i + 1])\r\n                        {\r\n                            tmp = a[i];\r\n                            a[i] = a[i + 1];\r\n                            a[i + 1] = tmp;\r\n                        }\r\n                    }\r\n\r\n                }\r\n            }</pre>\r\n<blockquote><span style=\"color: #ff6600;\">这里是调用：</span></blockquote>\r\n<pre class=\"lang:c# decode:true \" title=\"LSS\">#region LSS算法测试\r\n            int[] a = { 1, 65, 6, 723, 847, 5874, 884, 041, 6, 76, 1, 847, 3, 79, 715, 09, 46, 235, 886, 45, 87, 122, 98, 15, 01, 4 };\r\n            foreach(int p in Class_LSS.Main_LSS(a))\r\n            {\r\n                Console.WriteLine(p);\r\n            }\r\n            #endregion</pre>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<blockquote><span style=\"color: #ff6600;\">接着是ANSW2Dcode的更新，ANSW是我在2016年暑假期间写的图像识别模块，不够稳定的它不乏创新性。经过我一个周末的修改，ANSW的实体化程序更正完成，现已集成到1.06中，识别具有特定组织方式的BMP图像，进行解码和编码。其调用规则如下：</span></blockquote>\r\n<pre class=\"lang:c# decode:true \" title=\"ANSW\">#region ANSW测试\r\n\r\n            Class_ANSW aw = new Class_ANSW();\r\n\r\n            #region ANSW解码测试\r\n            Console.WriteLine(aw.DeANSW(@\"L:\\C#项目开发\\StdLib1.06\\answ\"));\r\n            #endregion\r\n\r\n            #region ANSW转码测试\r\n            Bitmap bp = aw.ToANSW(\"4869212069206c6f76652074686520776f726c6421\", @\"L:\\C#项目开发\\StdLib1.06\\source\");\r\n            Image i = bp;\r\n            i.Save(@\"L:\\C#项目开发\\StdLib1.06\\answ.bmp\");\r\n            #endregion\r\n\r\n            //注意：\r\n            //在ANSW解码中，输入流可以为有.bmp后缀的文件名或无后缀的文件名\r\n            //在ANSW转码中，输入与解码规则相同，输出分两种情况如下：\r\n\r\n            //1.流错误输出所指定的流必须带.bmp后缀\r\n            //2.正常输出所指定的流可以为有.bmp后缀文件名或无后缀文件名\r\n\r\n            #endregion</pre>\r\n&nbsp;\r\n<blockquote><span style=\"color: #ff6600;\">另外还增加了一个很实用的结构体用于初始化XmlCreater的各种静态方法，其结构如下：</span></blockquote>\r\n<pre class=\"lang:c# decode:true \" title=\"struct XmlInf\">public struct XmlInf\r\n        {\r\n\r\n            #region 结构私有属性\r\n\r\n            private string Path;\r\n            private string InStream;\r\n            private string FileName;\r\n            private string XmlName;\r\n            private string RootName;\r\n            private string NodeName;\r\n            private string AttName;\r\n            private string AttValue;\r\n            private string InnerText;\r\n            private string Type;\r\n\r\n            #endregion\r\n\r\n            #region 属性访问器\r\n\r\n            /// &lt;summary&gt;\r\n            /// 节点地址，如父节点、实节点、子节点的地址，用于XmlCreater类中除reStream、CreateXml方法外的所有方法\r\n            /// &lt;/summary&gt;\r\n            public string path\r\n            {\r\n                get { return Path; }\r\n                set { Path = value; }\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 被读取的Xml文档文件流，在初始化时使用，用于XmlCreater类的reStream方法\r\n            /// &lt;/summary&gt;\r\n            public string inStream\r\n            {\r\n                get { return InStream; }\r\n                set { InStream = value; }\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 被创建的Xml文档的文件地址，用于XmlCreater类的CreateXml方法\r\n            /// &lt;/summary&gt;\r\n            public string fileName\r\n            {\r\n                get { return FileName; }\r\n                set { FileName = value; }\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 被创建的Xml文档的文件名，用于XmlCreater类的CreateXml方法\r\n            /// &lt;/summary&gt;\r\n            public string xmlName\r\n            {\r\n                get { return XmlName; }\r\n                set { XmlName = value; }\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 被创建的Xml文档的根元素名，用于XmlCreater类的CreateXml方法\r\n            /// &lt;/summary&gt;\r\n            public string rootName\r\n            {\r\n                get { return RootName; }\r\n                set { RootName = value; }\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 节点名，可表示子节点、父节点、新建空\\实节点名，用于XmlCreater类的AddRealNode、AddEmptyNode、RemoveNode方法\r\n            /// &lt;/summary&gt;\r\n            public string nodeName\r\n            {\r\n                get { return NodeName; }\r\n                set { NodeName = value; }\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 节点的属性名，用于XmlCreater类的AddRealNode、ReadAtt方法\r\n            /// &lt;/summary&gt;\r\n            public string attName\r\n            {\r\n                get { return AttName; }\r\n                set { AttName = value; }\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 节点的属性值，用于XmlCreater类的AddRealNode方法\r\n            /// &lt;/summary&gt;\r\n            public string attValue\r\n            {\r\n                get { return AttValue; }\r\n                set { AttValue = value; }\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 节点的子文本，用于XmlCreater类的AddRealNode方法\r\n            /// &lt;/summary&gt;\r\n            public string innerText\r\n            {\r\n                get { return InnerText; }\r\n                set { InnerText = value; }\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 读取类型，可选值有\"_name\"、\"_value\"，用于XmlCreater类的ReadNode方法\r\n            /// &lt;/summary&gt;\r\n            public string type\r\n            {\r\n                get { return Type; }\r\n                set { Type = value; }\r\n            }\r\n\r\n            #endregion\r\n\r\n        }</pre>\r\n<blockquote><span style=\"color: #ff6600;\">这样，在使用XmlCreater类的各种方法时，都可以传递该结构体作为第二重载执行，极大的提升了代码的可读性和维护性，同时也降低了程序的耦合度。</span></blockquote>\r\n&nbsp;\r\n<blockquote>注意：我们把所有命名空间装入了一个名为StdLib1_16的命名空间，这样提升了版本间的辨识度。所以在使用1.06时除了引用该dll以外，应先引用主\"StdLib1_16\"命名空间，再引用子空间。如下：\r\n\r\nusing StdLib1_16;\r\nusing StdLib1_16.StdEct;\r\nusing StdLib1_16.StdDal;</blockquote>\r\n&nbsp;\r\n<blockquote><span style=\"color: #ff6600;\">我在StdLib的编写过程中遵循的是两个发行版一兼容的模式，例如从1.03开始，1.04与1.05相兼容，1.06与1.07相兼容。这样有利于每个版本的大更新与小更新，及偶数版本更新内容，奇数版本增加优化。</span></blockquote>\r\n&nbsp;\r\n<blockquote><span style=\"color: #99cc00;\">#文章的封插画是我的旧方正电脑的主板，为什么使用它作为插画是因为在清明节的时候我本应该着手1.06版本的开发，可是遭遇了数据丢失，而该主板帮我拯救了数据并恢复了系统。</span></blockquote>'),(12351,'StdLib1.07#public更新日志','演示文章','<blockquote><img class=\"alignnone size-medium\" src=\"https://thaumy.github.io/MyBlog/img/article/NewStdLib1.07%E5%AE%A3%E4%BC%A0%E7%94%BB(%E5%8E%8B%E7%BC%A9).jpg\" width=\"630\" height=\"477\" />\r\n\r\n<span style=\"color: #ff9900;\">StdLib1.07#public</span>\r\n\r\n<span style=\"color: #ff6600;\">1. </span>增加了二分法找值算法\r\n<span style=\"color: #ff6600;\">2. </span>更正ANSW算法中字符串的分割机制，现在只能分割10000个字符，解决1.06大编码情况下运算时间长问题\r\n<span style=\"color: #ff6600;\">3. </span>ANSW编码现已支持十六进制大写\r\n\r\n<span style=\"color: #ff6600;\">4. </span>ANSW编/解码现已转为异步多线程处理\r\n<span style=\"color: #ff6600;\">5. </span>ANSW编码增添了第二重载，可根据需要选择传递怎样的参数以编译ANSW\r\n\r\n<span style=\"color: #ff6600;\">6. </span>ANSW编码现在会在右下角空出一个像素，作为图像正确方向的标记\r\n\r\n<span style=\"color: #ff6600;\">7. </span>对Hash/MD5算法做多线程优化\r\n<span style=\"color: #ff6600;\">8. </span>增加了像素化LibLogo</blockquote>\r\n&nbsp;\r\n<blockquote><span style=\"color: #ff6600;\">下面是测试代码，足够的代码可以了解新内容：</span></blockquote>\r\n&nbsp;\r\n<pre class=\"lang:c# decode:true\">using System;\r\nusing System.Collections.Generic;\r\nusing System.Linq;\r\nusing System.Text;\r\nusing System.Threading.Tasks;\r\n\r\nusing StdLib1_17;\r\nusing StdLib1_17.StdLib_GobalnameSpace;\r\nusing StdLib1_17.StdEct;\r\nusing StdLib1_17.StdDal;\r\nusing System.Drawing;\r\nusing System.Windows.Forms;\r\n\r\nnamespace 泛用型控制台测试\r\n{\r\n    class Program\r\n    {\r\n        static void Main(string[] args)\r\n        {\r\n\r\n            #region ANSW TEST\r\n            /*\r\n            string[,] strArray = new string[100, 100];\r\n            string _hex = \"57656c636f6d6520746f2075736520414e53573264436f64652c2020697473206120766572792075736566756c20636f64652c202069742063616e207472616e736c61746520796f757220696e666f726d6174696f6e20696e746f20612073616665203264436f646520424d5020746f2068656c7020796f752073617665207468696e67732157656c636f6d6520746f2075736520414e53573264436f64652c2020697473206120766572792075736566756c20636f64652c202069742063616e207472616e736c61746520796f757220696e666f726d6174696f6e20696e746f20612073616665203264436f646520424d5020746f2068656c7020796f752073617665207468696e67732157656c636f6d6520746f2075736520414e53573264436f64652c2020697473206120766572792075736566756c20636f64652c202069742063616e207472616e736c61746520796f757220696e666f726d6174696f6e20696e746f20612073616665203264436f646520424d5020746f2068656c7020796f752073617665207468696e67732157656c636f6d6520746f2075736520414e53573264436f64652c2020697473206120766572792075736566756c20636f64652c202069742063616e207472616e736c61746520796f757220696e666f726d6174696f6e20696e746f20612073616665203264436f646520424d5020746f2068656c7020796f752073617665207468696e67732157656c636f6d6520746f2075736520414e53573264436f64652c2020697473206120766572792075736566756c20636f64652c202069742063616e207472616e736c61746520796f757220696e666f726d6174696f6e20696e746f20612073616665203264436f646520424d5020746f2068656c7020796f752073617665207468696e67732157656c636f6d6520746f2075736520414e53573264436f64652c2020697473206120766572792075736566756c20636f64652c202069742063616e207472616e736c61746520796f757220696e666f726d6174696f6e20696e746f20612073616665203264436f646520424d5020746f2068656c7020796f752073617665207468696e67732157656c636f6d6520746f2075736520414e53573264436f64652c2020697473206120766572792075736566756c20636f64652c202069742063616e207472616e736c61746520796f757220696e666f726d6174696f6e20696e746f20612073616665203264436f646520424d5020746f2068656c7020796f752073617665207468696e67732157656c636f6d6520746f2075736520414e53573264436f64652c2020697473206120766572792075736566756c20636f64652c202069742063616e207472616e736c61746520796f757220696e666f726d6174696f6e20696e746f20612073616665203264436f646520424d5020746f2068656c7020796f752073617665207468696e677321\";\r\n            string text = _hex;\r\n            int len = _hex.Length;\r\n            #region 字符串转矩阵处理\r\n            int i = 0;\r\n            for (int a = 1; a &lt; len; a++)\r\n            {\r\n                i++;\r\n                _hex = _hex.Insert(a + i - 1, \" \");\r\n            }\r\n            i = 0;\r\n            for (int y = 0; y &lt; 100; y++)\r\n            {\r\n                for (int x = 0; x &lt; 100; x++)\r\n                {\r\n                    strArray[x, y] = null;\r\n                }\r\n            }\r\n            for (int y = 0; y &lt; 100; y++)\r\n            {\r\n                for (int x = 0; x &lt; 100; x++)\r\n                {\r\n\r\n                    if (i &lt; _hex.Split(\' \').Length)\r\n                    {\r\n                        strArray[x, y] = _hex.Split(\' \')[i];\r\n                    }\r\n                    i++;\r\n                }\r\n            }\r\n            #endregion\r\n\r\n            object obj1 = text;\r\n            object obj2 = _hex;\r\n            object obj3 = strArray;\r\n\r\n            Class_ANSW aw = new Class_ANSW();\r\n\r\n            Image img1 = aw.ToANSW(text, @\"D:\\source.bmp\");\r\n            img1.Save(@\"D:\\img1.bmp\");\r\n\r\n            Image img2 = aw.ToANSW(obj1, @\"D:\\source.bmp\", \"text\");\r\n            img2.Save(@\"D:\\img2.bmp\");\r\n\r\n            Image img3 = aw.ToANSW(obj2, @\"D:\\source.bmp\", \"_hex\");\r\n            img3.Save(@\"D:\\img3.bmp\");\r\n\r\n            Image img4 = aw.ToANSW(obj3, @\"D:\\source.bmp\", \"ary\");\r\n            img4.Save(@\"D:\\img4.bmp\");\r\n            */\r\n            #endregion\r\n\r\n            #region XmlCreater测试\r\n            /*\r\n            XmlInf inf1;\r\n            inf1.path = \"//StdLib\";\r\n            inf1.nodeName = \"MyNode\";\r\n            inf1.attName = \"att\";\r\n            inf1.attValue = \"Att233\";\r\n            inf1.innerText = \"This is my innerText!\";\r\n\r\n            XmlInf inf2;\r\n            inf2.path = \"//StdLib\";\r\n            inf2.nodeName = \"XN1\";\r\n            inf2.attName = \"att\";\r\n            inf2.attValue = null;\r\n            inf2.innerText = \"Type\";\r\n\r\n            XmlInf inf3;\r\n            inf3.path = \"//StdLib\";\r\n            inf3.nodeName = \"NO_0\";\r\n\r\n            XmlInf inf4;\r\n            inf4.path = \"//StdLib//NO_0\";\r\n            inf4.nodeName = \"NO_1\";\r\n\r\n            XmlInf inf5;\r\n            inf5.path = \"//StdLib//NO_1\";\r\n            inf5.nodeName = \"NO_2\";\r\n\r\n            XmlInf inf6;\r\n            inf6.path = \"//StdLib//NO_1\";\r\n            inf6.nodeName = \"Node233\";\r\n            inf6.attName = \"att\";\r\n            inf6.attValue = null;\r\n            inf6.innerText = \"innerText\";\r\n\r\n            XmlInf inf7;\r\n            inf7.path = \"//StdLib\";\r\n            inf7.nodeName = \"goodXN\";\r\n            inf7.attName = \"att\";\r\n            inf7.attValue = null;\r\n            inf7.innerText = \"Type\";\r\n\r\n            XmlInf inf8;\r\n            inf8.path = \"//StdLib\";\r\n            inf8.nodeName = \"badXN\";\r\n            inf8.attName = \"att\";\r\n            inf8.attValue = null;\r\n            inf8.innerText = \"Type\";\r\n\r\n            XmlInf inf9;\r\n            inf9.path = \"//StdLib//NO_0//NO_1//Node233\";\r\n            inf9.type = \"_name\";\r\n\r\n            XmlInf inf10;\r\n            inf10.path = \"//StdLib//goodXN\";\r\n            inf10.type = \"_value\";\r\n\r\n            XmlInf inf11;\r\n            inf11.path = \"//StdLib//MyNode\";\r\n            inf11.attName = \"att\";\r\n\r\n            XmlInf sys;\r\n            sys.path = @\"D:\\\";\r\n            sys.xmlName = \"Xml_1\";\r\n            sys.rootName = \"StdLib\";\r\n\r\n            //XML初始化测试\r\n            Class_XmlCreater.CreateXml(sys);\r\n            Class_XmlCreater.reStream(@\"D:\\Xml_1.xml\");\r\n\r\n            //Xml写入测试\r\n            Class_XmlCreater.AddRealNode(inf1);\r\n\r\n            //节点重名测试\r\n            Class_XmlCreater.AddRealNode(inf2);\r\n            Class_XmlCreater.AddRealNode(inf2);\r\n\r\n            //节点嵌套测试\r\n            Class_XmlCreater.AddEmptyNode(inf3);\r\n            Class_XmlCreater.AddEmptyNode(inf4);\r\n            Class_XmlCreater.AddEmptyNode(inf5);\r\n\r\n            //添加嵌套里的有多个参数的节点测试\r\n            Class_XmlCreater.AddRealNode(inf6);\r\n\r\n            //节点删除测试\r\n            Class_XmlCreater.AddRealNode(inf7);\r\n            Class_XmlCreater.AddRealNode(inf8);\r\n            Class_XmlCreater.RemoveNode(inf8);\r\n            //被嵌套节点删除测试\r\n            Class_XmlCreater.RemoveNode(inf5);\r\n\r\n            //节点信息读取测试\r\n            Console.WriteLine(Class_XmlCreater.ReadNode(inf9));\r\n            Console.WriteLine(Class_XmlCreater.ReadNode(inf10));\r\n            Console.WriteLine(Class_XmlCreater.ReadAtt(inf11));\r\n            */\r\n            #endregion\r\n\r\n            #region IStdInf接口测试\r\n\r\n            IStdInf I = new StdInf();\r\n            Console.WriteLine(I.Stdver_newPub);\r\n\r\n            #endregion\r\n\r\n            #region HASH/MD5异步测试\r\n\r\n            Console.WriteLine(Class_MD5.Main_MD5(@\"jgadsklfhjkfgnjdd5sf@#$%^&amp;*())ag416h4gsf6h3g4j56s74gs54h!@#$%^&amp;*()h\"));\r\n            Console.WriteLine(Class_Hash.Main_Hash(@\"j!@~)(_+)/sklfgnjkgnhnjfdsfag4575g3$#%^)(*s6y4456w68f$#%^g434dsf4\"));\r\n\r\n            Console.WriteLine(Class_MD5.Main_MD5(@\"\"));\r\n            Console.WriteLine(Class_Hash.Main_Hash(@\"\"));\r\n\r\n            Console.WriteLine(Class_MD5.Main_MD5(null));\r\n            Console.WriteLine(Class_Hash.Main_Hash(null));\r\n\r\n            #endregion\r\n\r\n            #region 输出资源测试\r\n            /*\r\n            Image i = I.Lib_logo;\r\n            i.Save(@\"D:\\interface_Lib_logo.bmp\");\r\n\r\n            StdInf inf = new StdInf();\r\n            i = inf.Lib_logo;\r\n            i.Save(@\"D:\\virtual_Lib_logo.bmp\");\r\n            */\r\n            #endregion\r\n\r\n            #region 二分法找值测试\r\n            int[] a1 = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };\r\n            Console.WriteLine(_BinarySrch.BinSrch(7, a1));\r\n            Console.WriteLine(_BinarySrch.BinSrch(10, a1));\r\n\r\n            double[] a2 = { 1.1, 1.3, 1.5, 1.7 };\r\n            Console.WriteLine(_BinarySrch.BinSrch(1.7, a2));\r\n            Console.WriteLine(_BinarySrch.BinSrch(5.6, a2));\r\n            #endregion\r\n\r\n            Console.ReadKey();\r\n\r\n        }\r\n    }\r\n}</pre>\r\n对应XML：\r\n<pre class=\"lang:xhtml decode:true\" title=\"Xml_1.xml\">&lt;?xml version=\"1.0\" encoding=\"utf-8\"?&gt;\r\n&lt;StdLib&gt;\r\n  &lt;MyNode att=\"Att233\"&gt;This is my innerText!&lt;/MyNode&gt;\r\n  &lt;XN1 att=\"\"&gt;Type&lt;/XN1&gt;\r\n  &lt;XN1 att=\"\"&gt;Type&lt;/XN1&gt;\r\n  &lt;NO_0&gt;\r\n    &lt;NO_1&gt;\r\n      &lt;Node233 att=\"\"&gt;innerText&lt;/Node233&gt;\r\n    &lt;/NO_1&gt;\r\n  &lt;/NO_0&gt;\r\n<span style=\"color: #000000;\">  &lt;goodXN att=\"\"&gt;Type&lt;/goodXN&gt;\r\n&lt;/StdLib&gt;</span></pre>\r\n&nbsp;\r\n<blockquote><span style=\"color: #ff6600;\">由于本次开发是最后一次基于S04架构（从1.04开始的标准架构），所以过多的介绍不会有很大帮助</span>\r\n\r\n<span style=\"color: #ff6600;\">在接下来的StdLib1.08中，我们将会更改许多内容，使用更加标准的S08架构。</span></blockquote>\r\n&nbsp;\r\n<p style=\"text-align: right;\">时间不是很充裕，百忙之中有幸能够撰写这篇日志。</p>\r\n<p style=\"text-align: right;\">以上 Thaumy</p>'),(12356,'应用程序三层架构与MVC(文章摘要)','演示文章','<span style=\"color: #333333;\"><span style=\"color: #993366;\">三层架构（3-tier application）</span> 通常意义上的三层架构就是将整个业务应用划分为：表现层（UI）、业务逻辑层（BLL）、数据访问层（DAL）。区分层次的目的即为了“高内聚，低耦合”的思想。</span>\r\n<blockquote><span style=\"color: #ff9900;\"> 1、表现层（UI）：<span style=\"color: #333399;\">通俗讲就是展现给用户的界面，即用户在使用一个系统的时候他的所见所得。</span></span>\r\n\r\n<span style=\"color: #ff9900;\">2、业务逻辑层（BLL）：<span style=\"color: #333399;\">针对具体问题的操作，也可以说是对数据层的操作，对数据业务逻辑处理。</span></span>\r\n\r\n<span style=\"color: #ff9900;\">3、数据访问层（DAL）：<span style=\"color: #333399;\">该层所做事务直接操作数据库，针对数据的增添、删除、修改、更新、查找等。</span></span></blockquote>\r\n&nbsp;\r\n<ul>\r\n 	<li><span style=\"color: #ff6600;\">MVC是 Model-View-Controller，</span>严格说这三个加起来以后才是三层架构中的UI层，也就是说，MVC把三层架构中的UI层再度进行了分化，分成了控制器、视图、实体三个部分，控制器完成页面逻辑，通过实体来与界面层完成通话；而C层直接与三层中的BLL进行对话。</li>\r\n 	<li></li>\r\n 	<li><span style=\"color: #ff6600;\">MV<span style=\"color: #ff6600;\">C</span></span><span style=\"color: #ff6600;\">可以是三层中的一个表现层框架，</span>属于表现层。三层和MVC可以共存。三层是基于业务逻辑来分的，而MVC是基于页面来分的。MVC主要用于表现层，3层主要用于体系架构，3层一般是表现层、中间层、数据层，其中表现层又可以分成M、V、C，（Model View Controller）模型－视图－控制器</li>\r\n 	<li></li>\r\n 	<li><span style=\"color: #ff6600;\">MVC模式是GUI界面开发的指导模式，</span>基于表现层分离的思想把程序分为三大部分：Model-View-Controller，呈三角形结构。Model是指数据以及应用程序逻辑，View是指 Model的视图，也就是用户界面。这两者都很好理解，关键点在于Controller的角色以及三者之间的关系。在MVC模式中，Controller和View同属于表现层，通常成对出现。Controller被设计为处理用户交互的逻辑。一个通常的误解是认为Controller负责处理View和Model的交互，而实际上View和Model之间是可以直接通信的。由于用户的交互通常会涉及到Model的改变和View的更新，所以这些可以认为是Cont roller的副作用。</li>\r\n 	<li></li>\r\n 	<li><span style=\"color: #ff6600;\">MVC 是表现层的架构，</span>MVC的Model实际上是ViewModel，即供View进行展示的数据。 ViewModel不包含业务逻辑，也不包含数据读取。</li>\r\n 	<li></li>\r\n 	<li><span style=\"color: #ff6600;\">而在N层架构中，</span>一般还会有一个Model层，用来与数据库的表相对应，也就是所谓ORM中的O.这个Model可能是POCO，也可能是包含一些验证逻辑的实体类，一般也不包含数据读取。进行数据读取的是数据访问层。而作为UI层的MVC一般不直接操作数据访问层，中间会有一个业务逻辑层封装业务逻辑、调用数据访问层。UI层（Controller）通过业务逻辑层来得到数据（Model），并进行封装（ViewModel），然后选择相应的View.</li>\r\n 	<li></li>\r\n 	<li><span style=\"color: #ff6600;\">MVC本来是存在于Desktop程序中的，</span>M是指数据模型，V是指用户界面，C则是控制器。使用MVC的目的是将M和V的实现代码分离，从而使同一个程序可以使用不同的表现形式。比如一批统计数据你可以分别用柱状图、饼图来表示。C存在的目的则是确保M和V的同步，一旦M改变，V应该同步更新。\r\nMVC如何工作MVC是一个设计模式，它强制性的使应用程序的输入、处理和输出分开。使用MVC应用程序被分成三个核心部件：模型、视图、控制器。它们各自处理自己的任务。</li>\r\n 	<li></li>\r\n 	<li><span style=\"color: #ff6600;\">V视图：</span>用户看到并与之交互的界面。对老式的Web应用程序来说，视图就是由HTML元素组成的界面，在新式的Web应用程序中，HTML依旧在视图中扮演着重要的角色，但一些新的技术已层出不穷，它们包括Macromedia Flash和象XHTML，XML/XSL，WML等一些标识语言和Web services.如何处理应用程序的界面变得越来越有挑战性。MVC一个大的好处是它能为你的应用程序处理很多不同的视图。在视图中其实没有真正的处理发生，不管这些数据是联机存储的还是一个雇员列表，作为视图来讲，它只是作为一种输出数据并允许用户操纵的方式。</li>\r\n 	<li></li>\r\n 	<li><span style=\"color: #ff6600;\">模型M：</span>模型表示企业数据和业务规则。在MVC的三个部件中，模型拥有最多的处理任务。被模型返回的数据是中立的，就是说模型与数据格式无关，这样一个模型能为多个视图提供数据。由于应用于模型的代码只需写一次就可以被多个视图重用，所以减少了代码的重复性。</li>\r\n</ul>'),(12359,'浅谈wordpress数据库优化','演示文章','<span style=\"color: #993366;\">众所周知，wordpress是在数据库里存储数据的，这些数据包括文章、用户数据、媒体路径等，在这里不过多列举。</span>\r\n\r\n<span style=\"color: #993366;\">有效数据是wp运作的基础，无效数据则会减缓网页运行速度，带来未知的bug和不必要的资源占用，甚至是浪费你的服务器资源(我的数据库在优化前有20MB大，优化后只有1MB)。</span>\r\n\r\n<span style=\"color: #993366;\">这里则是一篇基础文章，谈及最基本的数据库优化，表达我个人的见解。</span>\r\n<blockquote><span style=\"color: #00ccff;\">wordpress在使用时会产生大量不必要的数据库信息，这些信息虽然只占用了很小一部分的服务器资源，但随着日积月累，这将会是一个庞大的资源开销，甚至撑爆你的数据库空间！</span></blockquote>\r\n&nbsp;\r\n<blockquote>\r\n<ul>\r\n 	<li><span style=\"color: #ff6600;\">wp_posts</span></li>\r\n</ul>\r\n这个表被用来存储文章信息，包括文章标题、内容、父级、别名和一些其他列，当一个wp站点运作时间较长，且更新活跃时，这里便成为一个数据垃圾场。\r\n\r\nwp在你每一次文章更改时都会保存文章的信息，这也包括自动草稿。每一次的文章更名都会在该表内增添一个新行，它不在原有的基础上修改，而是通过建立一个新行实现更改，这意味着之前所有的数据都会被保存。\r\n\r\n我删除了大量的文章、清空了回收站，当我浏览数据库时，发现wp_posts竟然有700多行数据，这意味着我的700次文章、页面修改全都被记录。这是非常恐怖的，仅仅200天就有800行数据，占用了多达20M的数据库空间。这意味着每一次打开博客，存储引擎就要在700行数据中select出真正有用的几十篇文章。虽然存储引擎是高效的，但是如果有上万行，速度延迟便变得明显，这对用户体验并不友好。\r\n\r\n一般来讲，wp_posts表中的post_status列的值为inherit时，这篇文章是可以被安全删除的。\r\n\r\n在控制台执行SQL语句：\r\n<pre class=\"lang:mysql decode:true \" title=\"SQL\">DELETE FROM `wp_posts` WHERE `wp_posts`.`post_status` = \"inherit\";</pre>\r\n另外，自动草稿也是可以被安全删除的：\r\n<pre class=\"lang:mysql decode:true \" title=\"SQL\">DELETE FROM `wp_posts` WHERE `wp_posts`.`post_title` = \"自动草稿\";</pre>\r\n</blockquote>\r\n&nbsp;\r\n<blockquote>\r\n<ul>\r\n 	<li><span style=\"color: #ff6600;\">wp_postmeta</span></li>\r\n</ul>\r\n它被用来存储部分插件、文章自定义栏目数据，当删除一个插件时，这些数据并不会被清除。如果你经常安装插件，查看一下这个表的数据还是有必要的。</blockquote>\r\n&nbsp;\r\n<blockquote>\r\n<ul>\r\n 	<li><span style=\"color: #ff6600;\">wp_comments</span></li>\r\n</ul>\r\n这个表存储了评论内容(wp原生的)，每一次评论都会被详细记录。这包括评论者的终端系统、运行环境、浏览器及其内核、IP地址、日期等。曾经有效的评论都会在这里被保存，不论你是否删除过或清空回收站。如果你的站点是开放评论的，请酌情考虑这些数据的价值(往往这些数据在指导对用户行为分析时是有用的)</blockquote>\r\n&nbsp;\r\n<blockquote>\r\n<ul>\r\n 	<li><span style=\"color: #ff6600;\">wp_users</span></li>\r\n</ul>\r\n用户的基本信息都被存储在这里，它包括用户名、密码(被MD5加密)、邮箱、注册日期等。如果你的站点有用户注册，考虑这些信息是否被值得优化。</blockquote>\r\n&nbsp;\r\n<blockquote>\r\n<ul>\r\n 	<li><span style=\"color: #ff6600;\">wp_usermeta</span></li>\r\n</ul>\r\n某些插件会使用该表，用来为用户增添新的属性。这方面的插件修改较多时，考虑这里的数据。\r\n\r\n&nbsp;\r\n\r\n<span style=\"color: #ff0000;\">无论垃圾数据量有多少，都应按照实际情况考虑。不要强硬地更改，这可能导致不必要的数据损失。适当保有数据作为备份，是很有必要的。存储引擎的速度差距只有在上万行时才可能影响体验。</span></blockquote>'),(12364,'我对递归的研究和总结','演示文章','<span style=\"color: #ff6600;\">上个周的某一天我开始研究递归这个编程范式，什么是递归呢？这里我阐述一下自己的见解。</span>\r\n<ul>\r\n 	<li><span style=\"color: #ff9900;\">我的理解</span></li>\r\n</ul>\r\n<a href=\"http://baike.baidu.com/link?url=vtnjbv5K54Ch9hn9Qi1duM-ucK3_LSjN9TMNeykQpAIA_uLxX8W-naC2yCG78UFCq3eTQl1y74EwqM8E9LlfcmljplvFblihQOquWIlxFra\" target=\"_blank\"><span style=\"color: #0000ff;\">递归</span></a>是一种可靠的编程范式（除了某些情况下滥用递归会导致爆栈）。递归的基本思想是通过程序不断调用自身来解决所需解决的问题。这是一种很聪明的解决思路，并且还会减少代码量，使程序更加简洁。\r\n<ul>\r\n 	<li><span style=\"color: #ff6600;\">百度百科上的解释(占用文章字数啦~!日常水博)</span></li>\r\n</ul>\r\n程序调用自身的编程技巧称为递归 (recursion) 。递归做为一种<a href=\"http://baike.baidu.com/item/%E7%AE%97%E6%B3%95\" target=\"_blank\" rel=\"noopener\">算法</a>在<a href=\"http://baike.baidu.com/item/%E7%A8%8B%E5%BA%8F%E8%AE%BE%E8%AE%A1%E8%AF%AD%E8%A8%80\" target=\"_blank\" rel=\"noopener\">程序设计语言</a>中广泛应用。 一个过程或<a href=\"http://baike.baidu.com/item/%E5%87%BD%E6%95%B0\" target=\"_blank\" rel=\"noopener\">函数</a>在其定义或说明中有直接或间接调用自身的一种方法，它通常把一个大型复杂的问题层层转化为一个与原问题相似的规模较小的问题来求解，递归策略只需少量的程序就可描述出解题过程所需要的多次重复计算，大大地减少了程序的代码量。递归的能力在于用有限的<a href=\"http://baike.baidu.com/item/%E8%AF%AD%E5%8F%A5\" target=\"_blank\" rel=\"noopener\">语句</a>来定义对象的<a href=\"http://baike.baidu.com/item/%E6%97%A0%E9%99%90%E9%9B%86%E5%90%88\" target=\"_blank\" rel=\"noopener\">无限集合</a>。一般来说，递归需要有边界条件、递归前进段和递归返回段。当边界条件不满足时，递归前进；当边界条件满足时，递归返回。\r\n<ul>\r\n 	<li><span style=\"color: #ff9900;\">构成</span></li>\r\n</ul>\r\n递归，顾名思义：传递——回归。我们在这里用一个简单的例子了解递归的基本思路。\r\n<pre class=\"lang:c# decode:true\" title=\"使用嵌套循环输出的99乘法表的实现\">using System;\r\n\r\nnamespace _99multiplication\r\n{\r\n    class Program\r\n    {\r\n        static void Main(string[] args)\r\n        {\r\n\r\n            for (int row = 1; row &lt;= 9; row++)\r\n            {\r\n\r\n                for (int i = 1; i &lt;= row; i++)\r\n                {\r\n                    Console.Write(\"{0}*{1}={2}\", row, i, row * i);\r\n                    Console.Write(\" \");\r\n                }\r\n                Console.WriteLine();\r\n\r\n            }\r\n            Console.ReadKey();\r\n\r\n        }\r\n    }\r\n}</pre>\r\n上面是使用传统模式打印99乘法表的代码，它采用了两个嵌套的for循环实现。一个循环负责横行，另一个则负责纵行。这里不过多介绍。\r\n\r\n<span style=\"color: #ff9900;\">我们再来看看下面的代码：</span>\r\n<pre class=\"lang:c# decode:true\" title=\"使用递归输出99乘法表的实现\">using System;\r\n\r\nnamespace ConsoleApplication1\r\n{\r\n    class Program\r\n    {\r\n        static void Main(string[] args)\r\n        {\r\n            multiplication(9);\r\n            Console.ReadKey();\r\n        }\r\n\r\n        public static void multiplication(int i)\r\n        {\r\n            if (i == 1)\r\n            {\r\n                Console.WriteLine(\"1*1=1 \");\r\n                Console.WriteLine();\r\n            }\r\n            else\r\n            {\r\n                multiplication(i - 1);\r\n                for (int j = 1; j &lt;= i; j++)\r\n                {\r\n                    Console.WriteLine(j + \"*\" + i + \"=\" + j * i + \"  \");\r\n                }\r\n                Console.WriteLine();\r\n            }\r\n        }\r\n    }\r\n}\r\n</pre>\r\n这是使用递归来输出99乘法表的代码。与嵌套for循环相比，它只使用了一个for循环来达到输出的目的，而初始结果直接打印 “1*1=1” 的字符串。这看起来有些不可思议：它是怎么做到的？\r\n<ul>\r\n 	<li><span style=\"color: #ff9900;\">分析</span></li>\r\n</ul>\r\n在上面的两篇代码中，分别使用了不同的方式达到相同的目的。嵌套for过于简单这里不解释，递归则是通过不断调用自身达到最终目的。\r\n\r\n<span style=\"color: #ff9900;\">在这里，递归分为两个部分。我将他概括为初始化和返回:</span>\r\n<ol>\r\n 	<li><span style=\"color: #3366ff;\">初始化</span>：程序不断调用自身的方法，我们把调用方法这个行为看作是初始化：为接下来的循环做准备。</li>\r\n 	<li><span style=\"color: #3366ff;\">返回</span>：每次初始化都会进行判断，当某次初始化后的判断成立时，程序不再调用自身<span style=\"color: #ffcc00;\">(也就是达到了所谓的递归边界准备返回结束)</span>，并且结束当前方法，进行返回。返回后执行的便是上一个(父级)方法初始化完成后下面的代码：循环输出。因为每次初始化的传参都不一样并且有大到小，所以在此过程中，循环可以由小到大依次输出乘法表。</li>\r\n</ol>\r\n<span style=\"color: #ff9900;\">可能这样讲解还是有些模糊，于是我画了一幅图增进我的理解：</span>\r\n<img class=\"alignnone size-medium\" src=\"https://thaumy.github.io/MyBlog/img/article/33cfb.jpg\" width=\"650\" height=\"867\" />\r\n\r\n图这里使用的是33乘法表进行分析，可以看到它分为两个部分：执行和回溯，也就是我说的初始化(调用)和返回。\r\n<ul>\r\n 	<li><span style=\"color: #ff9900;\">总结</span></li>\r\n</ul>\r\n我其实对递归还是一知半解的，希望这次学习能够对我在算法研究领域添上一臂之力(上次研究归并算法的时候没少吃苦头。。。)，所以呢，这里就结束啦~！\r\n\r\n<img class=\"alignnone size-medium\" src=\"https://thaumy.github.io/MyBlog/img/article/dgmb.jpg\" width=\"210\" height=\"182\" />'),(12365,'StdLib1.08#public更新日志','演示文章','<blockquote><img class=\"alignnone size-medium\" src=\"https://thaumy.github.io/MyBlog/img/article/StdLib1.08%E5%AE%A3%E4%BC%A0%E7%94%BB(%E5%8E%8B%E7%BC%A9).jpg\" width=\"700\" height=\"525\" />\r\n\r\n<span style=\"color: #ff6600;\">经过一大半月的跳票，久违的StdLib1.08终于横空出世了。我们来看一看它有哪些新特性。</span></blockquote>\r\n<ul>\r\n 	<li><span style=\"color: #993366;\">全新的参数列表</span></li>\r\n</ul>\r\n由于在前几代StdLib中，S04架构不是很规范，所以在这个版本往后，将改换为S08架构，保证代码的整洁和维护易用性。另外大多数静态类和方法都修改为非静态，这意味着在使用时需要实例化。\r\n<ul>\r\n 	<li>StdLib信息空间更名为LibInformation，相应接口也更换为ILibInformation。</li>\r\n</ul>\r\nILibInformation接口规范：\r\n<pre class=\"lang:c# decode:true\" title=\"ILibInformation\">            /// &lt;summary&gt;\r\n            /// 主版本\r\n            /// &lt;/summary&gt;\r\n            int verFirst\r\n            {\r\n                get;\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 次版本\r\n            /// &lt;/summary&gt;\r\n            double verSecond\r\n            {\r\n                get;\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 是否为开发者版本\r\n            /// &lt;/summary&gt;\r\n            bool devEdition\r\n            {\r\n                get;\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 是否为发行版\r\n            /// &lt;/summary&gt;\r\n            bool pubEdition\r\n            {\r\n                get;\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 联网时的最新发行版\r\n            /// &lt;/summary&gt;\r\n            string webVer\r\n            {\r\n                get;\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 联网最新发行版的下载URL\r\n            /// &lt;/summary&gt;\r\n            string webURL\r\n            {\r\n                get;\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 针对最近一次发行版的全局兼容性\r\n            /// &lt;/summary&gt;\r\n            bool compatibleLast\r\n            {\r\n                get;\r\n            }\r\n            /// &lt;summary&gt;\r\n            /// 获取到像素化的StdLib_logo\r\n            /// &lt;/summary&gt;\r\n            Bitmap logo\r\n            {\r\n                get;\r\n            }</pre>\r\n<ul>\r\n 	<li>用于获取StdLib版本信息的LibInformation:LibInformation类</li>\r\n</ul>\r\npublic LibInformation()方法：使用默认Url获取更新信息\r\n\r\npublic LibInformation(string InfUrl)第二重载：指定特定的URL获取更新信息\r\n<ul>\r\n 	<li>将算法空间更名为Algorithm</li>\r\n</ul>\r\nEncryptor类：包含两个方法：md5和hash，用于对字符串进行单向加密操作\r\n<ul>\r\n 	<li>矩阵算法类更名为ArrayAlgorithm，其具体方法作用在summary注释中有详细说明。</li>\r\n 	<li>二维码算法类更名为PixelGraphic，其具体方法作用在summary注释中有详细说明。</li>\r\n</ul>\r\n编译二维码图像的type字符串可选参数：\r\n\r\n\"hex\"//根据不带空格的16进制文本编译ANSW\r\n\"_hex\"//根据带空格的16进制文本编译ANSW\r\n\"array\"//根据16进制矩阵编译ANSW\r\n<ul>\r\n 	<li>排序算法类Sorter</li>\r\n</ul>\r\n这个类包含了基本的排序算法，其中easySorter方法是原生的LSS排序算法。\r\n<ul>\r\n 	<li>检索类Searcher</li>\r\n</ul>\r\n这个类包含了基本的检索算法。\r\n<ul>\r\n 	<li>数据层命名空间更名为DataLayer</li>\r\n 	<li>MCInformation类</li>\r\n</ul>\r\n这个类用于提取MC运行的必要信息，其具体方法作用在summary注释中有详细说明。\r\n<ul>\r\n 	<li>程序启动类ProgramLoader</li>\r\n</ul>\r\n用于启动程序的类，其具体方法作用在summary注释中有详细说明。\r\n<ul>\r\n 	<li>XmlCreater类</li>\r\n</ul>\r\n用于创建简单XML表的类，其具体方法作用在summary注释中有详细说明。\r\n<ul>\r\n 	<li><span style=\"color: #ff6600;\">错误机制</span></li>\r\n</ul>\r\n在StdLib1.08中，提供了非常完善的错去机制。这有利于debug和项目维护，根除了StdLib1.07中报错提示混杂的诟病。\r\n<pre class=\"lang:c# decode:true \" title=\"报错文档(非代码)\">标准报错文本:StdLibError ec[报错值]\r\n\r\nec7540：在初始化StdLib命名空间的StdInf类(第一重载)时，webPubs数组第0元素发生关键性错误，通常是由没有网络连接或是HTML错误导致，一般7540报错与7541报错同时发生，该报错具体表现为返回标准报错文本\r\n\r\nec7541：在初始化StdLib命名空间的StdInf类(第一重载)时，webPubs数组第1元素发生关键性错误，通常是由没有网络连接或是HTML错误导致，一般7540报错与7541报错同时发生，该报错具体表现为返回标准报错文本\r\n\r\nec7480：在初始化StdLib命名空间的StdInf类(第二重载)时，webPubs数组第0元素发生关键性错误，通常是由没有网络连接或是HTML错误导致，一般7480报错与7481报错同时发生，该报错具体表现为返回标准报错文本\r\n\r\nec7481：在初始化StdLib命名空间的StdInf类(第二重载)时，webPubs数组第1元素发生关键性错误，通常是由没有网络连接或是HTML错误导致，一般7480报错与7481报错同时发生，该报错具体表现为返回标准报错文本\r\n\r\n\r\n\r\n\r\nec2390：在使用StdEct命名空间的_SRR类时，算法主方法(即矩阵处理)过程中发生致命性错误，可能是由于dic数组或num数组错误传参导致，该报错具体表现为返回内容为2390的单元素数组\r\n\r\nec4580：在使用StdEct命名空间的_ANSW类时，DeANSW方法中发生关键性错误，通常是由于未能成功初始化Bitmap或传递了错误的Bitmap导致，该报错具体表现为返回标准报错文本\r\n\r\nec5880：在使用StdEct命名空间的_BinSrch类时，search方法(第一重载)中发生致命性错误，该报错具体表现为返回内容为5880的int值\r\n\r\nec5881：在使用StdEct命名空间的_BinSrch类时，search方法(第二重载)中发生致命性错误，该报错具体表现为返回内容为5881的double值\r\n\r\n\r\n\r\n\r\nec1120：在使用StdDal命名空间的_XmlCreater类时，ReadNode方法(第一重载)中发生关键性错误，通常是由于传递了错误的读取类型参数导致，该报错具体表现为返回标准报错文本\r\n\r\nec1121：在使用StdDal命名空间的_XmlCreater类时，ReadNode方法(第一重载)中发生致命性错误，可能是由无法查找到相关类型的值导致，该报错具体表现为返回标准报错文本\r\n\r\nec1127：在使用StdDal命名空间的_XmlCreater类时，ReadNode方法(第二重载)中发生关键性错误，通常是由于传递了错误的读取类型参数导致，该报错具体表现为返回标准报错文本\r\n\r\nec1128：在使用StdDal命名空间的_XmlCreater类时，ReadNode方法(第二重载)中发生致命性错误，可能是由无法查找到相关类型的值导致，该报错具体表现为返回标准报错文本\r\n\r\n\r\n\r\n\r\nec1440：在使用StdDal命名空间的_XmlCreater类时，ReadAtt方法(第一重载)中发生致命性错误，可能是由无法查找到节点属性导致，该报错具体表现为返回标准报错文本\r\n\r\nec1441：在使用StdDal命名空间的_XmlCreater类时，ReadAtt方法(第二重载)中发生致命性错误，可能是由无法查找到节点属性导致，该报错具体表现为返回标准报错文本</pre>\r\n当程序的运行出错时，相应的报错会生效。当然，有些方法的返回值类型是布尔型，这类方法发生错误时会返回false。\r\n<blockquote><span style=\"color: #333333;\">StdLib各个版本的下载地址：</span>\r\n\r\n<a href=\"https://github.com/Thaumy/StdLib1x\" target=\"_blank\" rel=\"noopener\"><span style=\"color: #00ccff;\">https://github.com/Thaumy/StdLib1x</span></a>\r\n\r\n<span style=\"color: #ff9900;\">&lt;跳往GitHub的链接&gt;</span></blockquote>'),(12366,'通用化站点pjax解决方案','演示文章','<span style=\"color: #800000;\">在上周进行网站优化和日常维护中，我发现ajax插件在一定程度上造成了我博客的臃肿，过于庞大的插件使我需要一个全新的方式载入文章。于是我查找了诸多文档，终于发现了更好的解决方案。值得注意的是，它适合绝大多数架构规范的网站，不仅仅局限于wordpress——这里是详细的解决方案。</span>\r\n<ul>\r\n 	<li><span style=\"color: #ff9900;\">准备工作</span></li>\r\n</ul>\r\n<blockquote>电脑一台，十分钟的阅读时间和十分钟的部署时间。\r\n\r\n注意，这篇教程不面向前端零基础的读者，如果你连header.php都找不到，那么请使用插件达到目的。\r\n\r\n<span style=\"color: #00ccff;\">或许这篇文章更适合你：</span>\r\n<h3 class=\"post_title\"><a href=\"http://www.thaumy.cn/article/%e6%8f%92%e4%bb%b6%e5%8c%96ajax%e4%bd%bf%e7%94%a8%e6%96%b9%e6%b3%95\"><span style=\"color: #3366ff;\"><u>AdvancedAjaxPageLoader插件实现全站ajax</u></span></a></h3>\r\n<span style=\"color: #00ccff;\">&lt;跳往博客文章的超链接↑&gt;</span></blockquote>\r\n&nbsp;\r\n<ul>\r\n 	<li><span style=\"color: #ff9900;\">项目资源</span></li>\r\n</ul>\r\n<pre class=\"lang:js decode:true\" title=\"用于实现pjax的javascript代码\">var ajaxhome=\'您的站点地址\';\r\nvar ajaxcontent = \'被刷新的文章容器id\';\r\nvar ajaxsearch_class = \'searchform\';\r\nvar ajaxignore_string = new String(\'#, /wp-, .pdf, .zip, .rar, /goto\');\r\nvar ajaxignore = ajaxignore_string.split(\', \');\r\n\r\nvar ajaxloading_code = \'此处添加加载动画代码\';\r\nvar ajaxloading_error_code = \'此处添加超时代码\';\r\n\r\nvar ajaxreloadDocumentReady = false;\r\nvar ajaxtrack_analytics = false\r\nvar ajaxscroll_top = true\r\nvar ajaxisLoad = false;\r\nvar ajaxstarted = false;\r\nvar ajaxsearchPath = null;\r\nvar ajaxua = jQuery.browser;\r\njQuery(document).ready(function() {\r\n    ajaxloadPageInit(\"\");\r\n});\r\nwindow.onpopstate = function(event) {\r\n    if (ajaxstarted === true &amp;&amp; ajaxcheck_ignore(document.location.toString()) == true) {\r\n        ajaxloadPage(document.location.toString(),1);\r\n    }\r\n};\r\nfunction ajaxloadPageInit(scope){\r\n    jQuery(scope + \"a\").click(function(event){\r\n        if (this.href.indexOf(ajaxhome) &gt;= 0 &amp;&amp; ajaxcheck_ignore(this.href) == true){\r\n            event.preventDefault();\r\n            this.blur();\r\n            var caption = this.title || this.name || \"\";\r\n            var group = this.rel || false;\r\n            try {\r\n                ajaxclick_code(this);\r\n            } catch(err) {\r\n            }\r\n            ajaxloadPage(this.href);\r\n        }\r\n    });\r\n    jQuery(\'.\' + ajaxsearch_class).each(function(index) {\r\n        if (jQuery(this).attr(\"action\")) {\r\n            ajaxsearchPath = jQuery(this).attr(\"action\");;\r\n            jQuery(this).submit(function() {\r\n                submitSearch(jQuery(this).serialize());\r\n                return false;\r\n            });\r\n        }\r\n    });\r\n    if (jQuery(\'.\' + ajaxsearch_class).attr(\"action\")) {} else {\r\n    }\r\n}\r\nfunction ajaxloadPage(url, push, getData){\r\n    if (!ajaxisLoad){\r\n        if (ajaxscroll_top == true) {\r\n            jQuery(\'html,body\').animate({scrollTop: 0}, 1500);\r\n        }\r\n        ajaxisLoad = true;\r\n        ajaxstarted = true;\r\n        nohttp = url.replace(\"http://\",\"\").replace(\"https://\",\"\");\r\n        firstsla = nohttp.indexOf(\"/\");\r\n        pathpos = url.indexOf(nohttp);\r\n        path = url.substring(pathpos + firstsla);\r\n        if (push != 1) {\r\n            if (typeof window.history.pushState == \"function\") {\r\n                var stateObj = { foo: 1000 + Math.random()*1001 };\r\n                history.pushState(stateObj, \"ajax page loaded...\", path);\r\n            } else {\r\n            }\r\n        }\r\n        if (!jQuery(\'#\' + ajaxcontent)) {\r\n        }\r\n		\r\n		\r\n        //jQuery(\'#\' + ajaxcontent).append(ajaxloading_code);\r\n		jQuery(\'#\' + ajaxcontent).prepend(ajaxloading_code);\r\n		\r\n		\r\n        jQuery(\'#\' + ajaxcontent).fadeTo(\"slow\", 0.4,function() {\r\n            jQuery(\'#\' + ajaxcontent).fadeIn(\"slow\", function() {\r\n                jQuery.ajax({\r\n                    type: \"GET\",\r\n                    url: url,\r\n                    data: getData,\r\n                    cache: false,\r\n                    dataType: \"html\",\r\n                    success: function(data) {\r\n                        ajaxisLoad = false;\r\n                        datax = data.split(\'&lt;title&gt;\');\r\n                        titlesx = data.split(\'&lt;/title&gt;\');\r\n                        if (datax.length == 2 || titlesx.length == 2) {\r\n                            data = data.split(\'&lt;title&gt;\')[1];\r\n                            titles = data.split(\'&lt;/title&gt;\')[0];\r\n                            jQuery(document).attr(\'title\', (jQuery(\"&lt;div/&gt;\").html(titles).text()));\r\n                        } else {\r\n                        }\r\n                        if (ajaxtrack_analytics == true) {\r\n                            if(typeof _gaq != \"undefined\") {\r\n                                if (typeof getData == \"undefined\") {\r\n                                    getData = \"\";\r\n                                } else {\r\n                                    getData = \"?\" + getData;\r\n                                }\r\n                                _gaq.push([\'_trackPageview\', path + getData]);\r\n                            }\r\n                        }\r\n                        data = data.split(\'id=\"\' + ajaxcontent + \'\"\')[1];\r\n                        data = data.substring(data.indexOf(\'&gt;\') + 1);\r\n                        var depth = 1;\r\n                        var output = \'\';\r\n                        while(depth &gt; 0) {\r\n                            temp = data.split(\'&lt;/div&gt;\')[0];\r\n                            i = 0;\r\n                            pos = temp.indexOf(\"&lt;div\");\r\n                            while (pos != -1) {\r\n                                i++;\r\n                                pos = temp.indexOf(\"&lt;div\", pos + 1);\r\n                            }\r\n                            depth=depth+i-1;\r\n                            output=output+data.split(\'&lt;/div&gt;\')[0] + \'&lt;/div&gt;\';\r\n                            data = data.substring(data.indexOf(\'&lt;/div&gt;\') + 6);\r\n                        }\r\n                        document.getElementById(ajaxcontent).innerHTML = output;\r\n                        jQuery(\'#\' + ajaxcontent).css(\"position\", \"absolute\");\r\n                        jQuery(\'#\' + ajaxcontent).css(\"left\", \"20000px\");\r\n                        jQuery(\'#\' + ajaxcontent).show();\r\n                        ajaxloadPageInit(\"#\" + ajaxcontent + \" \");\r\n                        if (ajaxreloadDocumentReady == true) {\r\n                            jQuery(document).trigger(\"ready\");\r\n                        }\r\n                        try {\r\n                            ajaxreload_code();\r\n                        } catch(err) {\r\n                        }\r\n                        jQuery(\'#\' + ajaxcontent).hide();\r\n                        jQuery(\'#\' + ajaxcontent).css(\"position\", \"\");\r\n                        jQuery(\'#\' + ajaxcontent).css(\"left\", \"\");\r\n                        jQuery(\'#\' + ajaxcontent).fadeTo(\"slow\", 1, function() {});\r\n                    },\r\n                    error: function(jqXHR, textStatus, errorThrown) {\r\n                        ajaxisLoad = false;\r\n                        document.title = \"Error loading requested page!\";\r\n                        document.getElementById(ajaxcontent).innerHTML = ajaxloading_error_code;\r\n                    }\r\n                });\r\n            });\r\n        });\r\n    }\r\n}\r\nfunction submitSearch(param){\r\n    if (!ajaxisLoad){\r\n        ajaxloadPage(ajaxsearchPath, 0, param);\r\n    }\r\n}\r\nfunction ajaxcheck_ignore(url) {\r\n    for (var i in ajaxignore) {\r\n        if (url.indexOf(ajaxignore[i]) &gt;= 0) {\r\n            return false;\r\n        }\r\n    }\r\n    return true;\r\n}\r\nfunction ajaxreload_code() {\r\n    //add code here   \r\n}\r\nfunction ajaxclick_code(thiss) {\r\n    jQuery(\'ul.nav li\').each(function() {\r\n        jQuery(this).removeClass(\'current-menu-item\');\r\n    });\r\n    jQuery(thiss).parents(\'li\').addClass(\'current-menu-item\');\r\n}</pre>\r\n复制以上代码，新建一个文本文件并拷贝进去，不要保存，等待下一步指示。\r\n\r\n&nbsp;\r\n\r\n接下来，我们需要修改代码中的某些部分，以保证代码在你的网站中能够达到您预期的效果。\r\n<ul>\r\n 	<li><span style=\"color: #ff9900;\">修改以下代码</span></li>\r\n</ul>\r\n<blockquote>\r\n<pre class=\"lang:js decode:true\" title=\"js\">var ajaxhome=\'http://www.thaumy.cn\';</pre>\r\n您的站点地址，例如我的网站主页地址为 http://www.thaumy.cn ，那么这里就可以填写http://www.thaumy.cn</blockquote>\r\n<blockquote>\r\n<pre class=\"lang:js decode:true\" title=\"js\">var ajaxcontent = \'被刷新的文章容器id\';</pre>\r\n被刷新的文章容器id，指的是文章列表(postlist)的父级id。例如我的id是 Central ，那么这里就可以填写Central</blockquote>\r\n<blockquote>\r\n<pre class=\"lang:js decode:true\" title=\"js\">var ajaxsearch_class = \'searchform\';</pre>\r\n搜索栏目的id，默认为 searchform ，一般不用更改</blockquote>\r\n<blockquote>\r\n<pre class=\"lang:js decode:true\" title=\"js\">var ajaxignore_string = new String(\'#, /wp-, .pdf, .zip, .rar, /goto\');</pre>\r\n被屏蔽的加载项目，即不进行pjax加载的链接关键字，默认为 #, /wp-, .pdf, .zip, .rar, /goto ，一般不用更改</blockquote>\r\n<blockquote>\r\n<pre class=\"lang:js decode:true\" title=\"js\">var ajaxloading_code = \'此处添加加载动画代码\';&lt;br&gt;</pre>\r\n此处添加加载动画代码，使pjax加载时显示动画，例如我的蓝色线条加载动画，这里不过多解释</blockquote>\r\n<blockquote>\r\n<pre class=\"lang:js decode:true\" title=\"js\">var ajaxloading_error_code = \'此处添加超时代码或一些文本\';</pre>\r\n此处添加超时代码或一些文本，例如pjax请求失败时，文章容器所显示的内容</blockquote>\r\n&nbsp;\r\n\r\n<span style=\"color: #ff9900;\">将以上代码修改完成后，复制修改好的代码，使用 &lt;script&gt;&lt;/script&gt; 标签把代码块插入到 header.php 的 &lt;/head&gt; 之前，然后就能实现网站的pjax加载了</span><span style=\"color: #ff9900;\">。</span><span style=\"color: #000000;\">↓</span>\r\n\r\n<span style=\"color: #333333;\">不过我没有这样做，在 header.php 中插入大量的代码会让博客显得很臃肿，虽然这样能达到目的。我的建议是把js做cdn加速，然后使用wordpress自带的函数进行注册排队后正确引用，该方法在wordpress大学有明确的帮助文档：<a href=\"https://www.wpdaxue.com/wordpress-include-jquery-css.html\" target=\"_blank\" rel=\"noopener\"><span style=\"color: #00ccff;\">https://www.wpdaxue.com/wordpress-include-jquery-css.html</span></a></span>\r\n\r\n<span style=\"color: #ff99cc;\">&lt;跳往wordpress大学的超链接↑&gt;</span>\r\n<blockquote><span style=\"color: #ff0000;\">PS：使用AdvancedAjaxPageLoader插件实现的全站ajax文章教程目前已经归档，不再进行维护。</span></blockquote>'),(12369,'Arduino单片机开发感想','演示文章','\r\n<blockquote><span style=\"color: #ff9900;\">步入高中以后，时间很是紧张，很少有机会接触程序了。因为宿舍没有闹钟的问题，忽然就想到了单片机开发。并希望借此过程学习一下单片机知识，客制化一个闹钟。那么故事就此展开。</span></blockquote>\r\n<ul>\r\n 	<li><span style=\"color: #000000;\"><strong>首</strong>先来说说为什么选择<a href=\"https://baike.baidu.com/item/Arduino/9362389?fr=aladdin\" target=\"_blank\" rel=\"noopener\"><span style=\"color: #0000ff;\">Arduino</span></a>。</span>单片机的选择有很多种，但是我能耳熟能详的也就是51（<a href=\"https://baike.baidu.com/item/stc89c51/2895810?fr=aladdin\" target=\"_blank\" rel=\"noopener\"><span style=\"color: #0000ff;\">STC89C51</span></a>，以下简称51）和Arduino系列。经过详细查阅，发现51貌似需要更高的硬件基础（例如汇编一类），而Arduino则入门门槛较低。根据实际情况考虑，51的专业水平在目前的阶段我是不具备也是没有能力具备的，虽然选择51可能能让我更好的了解IC的运行机制与原理。最终考虑到学业和时间上的不允许，我购买了我的第一块Arduino开发板：<span style=\"color: #000000;\">Arduino UNO R3</span>（以下简称UNO R3或UNO）。</li>\r\n</ul>\r\n&nbsp;\r\n<ul>\r\n 	<li><span style=\"color: #000000;\"><strong>A</strong>rduino系列有开发板可供选择。</span>选择UNO R3时我经过了详尽考虑，在网上查阅资料得知UNO R3这款开发板有很多例程和项目，很适合初学者使用。知乎上的几位大佬也推荐使用UNO R3。相较于其他开发板，UNO的优点是它较为中庸的性能和配置（集成少，io定义合理），对于进一步学习其他型号的Arduino开发板能打下更好的基层经验。所以我选择了这款开发板（受到以前隔壁群的一位硬件大佬使用<a href=\"https://baike.baidu.com/item/Mega2560/973064?fr=aladdin\" target=\"_blank\" rel=\"noopener\"><span style=\"color: #0000ff;\">MEGA2560</span></a>的影响，我一开始很想搞一块MEGA2560来玩玩）。开箱之后，包装盒上的“我们热爱开源”字样深深地吸引了我（我也比较倾向于开源，并且想让自己做出的开源项目使大家受益），更加增益了我对Arduino的兴趣。拿到开发板，我的第一印象是UNO很小巧，大概比我预想的小了半倍。随之则是商家附加的一些入门原件：传感器、数码管、各色的发光二极管、面包板、光盘······虽然为数不多，但是对于我的入门探索已经是一个很广阔的空间了。</li>\r\n</ul>\r\n&nbsp;\r\n<ul>\r\n 	<li><strong>那</strong>么再来谈谈开发过程。由于对于单片机的不了解，我首先看了一些商家赠送的光盘例程。然后根据教程上机试验了一下程序，发现Arduino的开发并不像我想象中的那样困难。在掌握具体的原件针脚定义后，软件层面的代码编写简直如鱼得水。Arduino为开发者提供了多种开发方式，官方的ArduinoIDE使用C语言进行开发，并不需要涉及硬件底层知识。因为对C的接触有了一段时间，我并没有出现什么语言上的困难（这也是我选择Arduino的原因），反倒是一些电学的物理知识和各种排线的接法搞得我很头疼（在接四位数码管的时候我竟然接了半小时才成功）。虽然过程比较复杂，但是学起来还是很带劲的。要知道这软件编程还是有所不同，面向过程的C要比面向对象的C#简单上一个层次（不敢轻易断言，在难易程度上的判断只是相对于个人以往的开发经验来看，有望大佬评论赐教），这使得整个过程轻松而不失活力，也让我明白了有人把Arduino比作“电子积木”的原因。ArdunioIDE集成了许多基层的Arduino库，这使得你不需要涉及过多的底层代码，而专注于你的开发目标。不用涉及复杂的汇编和底层逻辑相信是很多硬件开发者的梦想，Arduino则很好的做到了这一点。扩大编程粒度、淡化细节过程的高级语言起到了关键性的作用，它为我们节省了大量的开发时间。硬件编程给我打开了新的思绪，它不像软件编程一样在解决某种程度上的bug时没有头绪。在这里更多的则是逻辑上的问题，将程序的运行过程在眼前实例化使我在调试中倍感轻松。</li>\r\n</ul>\r\n&nbsp;\r\n\r\nArduino在功耗方面还是十分优秀的(貌似这是单片机的共性)，它相对强大的性能足以满足我现阶段的学习。上万的烧写次数在某种程度上给我节省了些许钱财（穷）。文章的最后，我希望能把这块板子利用好，进一步提升我的知识层次。\r\n\r\n&nbsp;\r\n<p style=\"text-align: right;\"><span style=\"color: #ff6600;\">百忙之中抽出闲暇撰写这篇博文，望路过大佬多多赐教。</span></p>\r\n<p style=\"text-align: right;\"><span style=\"color: #000000;\">以上，Thaumy。</span></p>'),(12373,'StdLib1.09#public现可用','演示文章','<img class=\"aligncenter\" src=\"https://thaumy.github.io/MyBlog/img/article/StdLib1.09宣传画(压缩).jpg\" alt=\"\" width=\"600\" height=\"339\" />\r\n\r\n<span style=\"color: #00ccff;\">经过一系列的调试和准备工作以及无数次的跳坑，StdLib系列终于迎来了第7个发行版。介是个里没有碗过的船新版本，挤需体验三翻中，里造会干我一样，爱象介个StdLib。</span>\r\n<span style=\"color: #333333;\">那么话不多说，在本次更新中，我们增添了对MySQL数据库的便捷访问器，以应对在将来的博客领域开发。这也确定了StdLib的新方向是博客的开发工作。</span>\r\n<ul>\r\n 	<li><span style=\"color: #800000;\">下面让我们看看增加了什么新特性:</span></li>\r\n</ul>\r\n<h1 style=\"text-align: center;\"><span style=\"color: #ff6600;\"><span style=\"color: #000000;\">&lt;</span>1<span style=\"color: #000000;\">&gt;</span></span></h1>\r\n<blockquote>\r\n<p style=\"text-align: left;\"><span style=\"color: #800080;\">namespace Data=&gt;MySqlConnectionHandler类：</span>\r\n该类提供对MySQL数据库的访问工作，它包括：查询，取表，取字段，建立连接等一系列操作方法。\r\n该类多数方法的第二重载可以使用新增的connStr结构接受参数以建立连接。</p>\r\n</blockquote>\r\n<h1 style=\"text-align: center;\"><span style=\"color: #000000;\">&lt;<span style=\"color: #ff6600;\">2</span>&gt;</span></h1>\r\n<blockquote><span style=\"color: #800080;\">Display命名空间：</span>\r\n该命名空间负责前端的输出工作，是视图控制器。\r\n目前仅限于网页控制，后续可能会增加更多新特性，例如WPF控制。</blockquote>\r\n<h1 style=\"text-align: center;\">&lt;<span style=\"color: #ff6600;\">3</span>&gt;</h1>\r\n<blockquote><span style=\"color: #800080;\">namespace Display=&gt;Web命名空间：</span>\r\n\r\n该命名空间负责网页前端的输出工作，是网页的视图控制器。</blockquote>\r\n<h1 style=\"text-align: center;\">&lt;<span style=\"color: #ff6600;\">4</span>&gt;</h1>\r\n<blockquote>\r\n<p style=\"text-align: left;\"><span style=\"color: #800080;\">namespace Display\\Web=&gt;Post类：</span>\r\n该类提供契合MySqlConnectionHandler类的网页输出工具，目前只能分析整理并输出字符串。\r\n该类使用PostData结构进行装载每个文章的信息。</p>\r\n</blockquote>\r\n&nbsp;\r\n<ul>\r\n 	<li><span style=\"color: #800000;\">请于GitHub下载这一类库，进行上机应用。(若图片中的二维码无法扫描，请右键它并在新标签页中打开该图片进行扫描)</span></li>\r\n</ul>\r\n<span style=\"color: #33cccc;\">在StdLib1.1系列中，我们会对StdLib在网页支持上的应用进行全方位的变革，以建立一个高可用、可拓展、方便安全的网页架构。</span>'),(12376,'维护日志','博客开发总概览','## 阅读说明\r\n\r\n<blockquote>\r\n<span class=\"mk-dt\">19.04.05<span class=\"mk-mtn\"></span></span>我是日常维护标签\r\n<span class=\"mk-dt\">19.04.05<span class=\"mk-dbg\"></span></span>我是错误修复标签\r\n<span class=\"mk-dt\">19.04.05<span class=\"mk-bug\"></span></span>我是发现错误标签\r\n<span class=\"mk-dt\">19.04.05<span class=\"mk-w\"></span></span>我是文案更新标签\r\n<span class=\"mk-dt\">19.04.05<span class=\"mk-ui\"></span></span>我是前端更新标签\r\n<span class=\"mk-dt\">19.04.05<span class=\"mk-updt\"></span></span>我是后端更新标签\r\n</blockquote>\r\n\r\n## PILIPALA 1902BETA7 LTS 先行测试2维护日志\r\n<span class=\"mk-dt\">19.10.19<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.10.19<span class=\"mk-ubdt\"></span></span>修改了数据库字符集，现已支持emoji表情  \r\n<span class=\"mk-dt\">19.10.19<span class=\"mk-ui\"></span></span>主题现已支持列表样式  \r\n<span class=\"mk-dt\">19.10.13<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.10.13<span class=\"mk-updt\"></span></span>内核版本现已更新至WL115_A3  \r\n<span class=\"mk-dt\">19.10.13<span class=\"mk-dbg\"></span></span>友情链接样式失效问题现已解决  \r\n<span class=\"mk-dt\">19.10.13<span class=\"mk-updt\"></span></span>主题现已支持选择性显示归档和标签：若该文章无归档则不显示归档，标签同理  \r\n<span class=\"mk-dt\">19.10.13<span class=\"mk-dbg\"></span></span>日期属性和时间属性错位显示的问题现已解决  \r\n<span class=\"mk-dt\">19.10.02<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.10.02<span class=\"mk-dbg\"></span></span>时间显示错误的问题现已修复  \r\n<span class=\"mk-dt\">19.10.02<span class=\"mk-updt\"></span></span>时间文字现可用  \r\n<span class=\"mk-dt\">19.10.01<span class=\"mk-updt\"></span></span>文章概要现可根据内容自动生成(取前一段字符)  \r\n<span class=\"mk-dt\">19.09.21<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.09.21<span class=\"mk-updt\"></span></span>数据库信息从写死变更为读取Web.config以增进部署效率  \r\n<span class=\"mk-dt\">19.09.21<span class=\"mk-updt\"></span></span>数据库cover_url替换为before_html，现支持更多网页样式加入列表图片位置  \r\n\r\n## PILIPALA 1902BETA7 LTS 先行测试1维护日志\r\n\r\n### 从本日志起，文章的变更和发布将不做记录，相关内容移交后续更新。\r\n<span class=\"mk-dt\">19.09.06<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.09.06<span class=\"mk-ui\"></span></span>修改了维护日志标签样式  \r\n<span class=\"mk-dt\">19.08.31<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.08.31<span class=\"mk-bug\"></span></span>维护日志部分内容出现带有删除线的错误渲染  \r\n<span class=\"mk-dt\">19.08.30<span class=\"mk-ui\"></span></span>现点击菜单上的版权信息即可呼出关于博客页  \r\n<span class=\"mk-dt\">19.08.29<span class=\"mk-dbg\"></span></span>进行了备份替换，修复了时间数据错乱的问题  \r\n<span class=\"mk-dt\">19.08.29<span class=\"mk-bug\"></span></span>由于数据表时间戳逻辑有误，文章最后编辑时间全部错乱  \r\n<span class=\"mk-dt\">19.08.28<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.08.28<span class=\"mk-updt\"></span></span>文章识别码现可用  \r\n<span class=\"mk-dt\">19.08.28<span class=\"mk-updt\"></span></span>文章作者现可用  \r\n<span class=\"mk-dt\">19.08.27<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.08.27<span class=\"mk-ui\"></span></span>为主题图片加载进行了CDN优化  \r\n<span class=\"mk-dt\">19.08.27<span class=\"mk-dbg\"></span></span>解决了highlight.js在ajax第二次异步请求后无法对代码进行高亮显示的问题  \r\n<span class=\"mk-dt\">19.08.27<span class=\"mk-ui\"></span></span>为氛V2主题提供了响应式壁纸  \r\n<span class=\"mk-dt\">19.08.26<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.08.25<span class=\"mk-updt\"></span></span>数据表时间戳逻辑修改  \r\n<span class=\"mk-dt\">19.08.24<span class=\"mk-w\"></span></span>纠正了几个错别字，感谢<span class=\"wd-dt3\">雅爱方雏</span>的支持。  \r\n<span class=\"mk-dt\">19.08.24<span class=\"mk-updt\"></span></span>PILIPALA BETA7于生产环境部署，这包括：  \r\n* 采用Kaguya架构WaterLibrary1.15内核  \r\n* 采用Kaguya架构PILIPALA ASP.NET程序  \r\n* 为BETA7设计的MySQL数据库  \r\n* 为博客设计的氛V2主题  \r\n\r\n<span class=\"mk-dt\">19.08.23<span class=\"mk-updt\"></span></span>为WL1.15内核修复了若干问题  \r\n\r\n## PILIPALA 1902BETA6 LTS 第八步进维护日志\r\n<span class=\"mk-dt\">19.08.21<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.08.21<span class=\"mk-w\"></span></span>纠正了几个错别字，感谢<span class=\"wd-dt3\">雅爱方雏</span>的支持。  \r\n<span class=\"mk-dt\">19.08.15<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.08.15<span class=\"mk-w\"></span></span>更新了关于博客页  \r\n<span class=\"mk-dt\">19.08.15<span class=\"mk-dbg\"></span></span>修复了关于博客计时器时钟过快的问题  \r\n<span class=\"mk-dt\">19.08.14<span class=\"mk-dbg\"></span></span>修复了文章列表加载不完全的问题  \r\n<span class=\"mk-dt\">19.08.08<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.08.08<span class=\"mk-w\"></span></span>发布了文章：结束了，初始化下一征程  \r\n<span class=\"mk-dt\">19.08.08<span class=\"mk-mtn\"></span></span>纠正了维护日志中的部分时间错误，这包括：\r\n* PILIPALA 1902BETA6 第二预览版维护日志\r\n* PILIPALA 1902BETA6 第一预览版维护日志\r\n* pilipala 1810BETA6 维护日志\r\n* pilipala 1810BETA5 维护日志\r\n\r\n<span class=\"mk-dt\">19.08.08<span class=\"mk-mtn\"></span></span>维护日志阅读说明已添加\r\n\r\n## PILIPALA 1902BETA6 LTS 第七步进维护日志\r\n\r\n### 从本日志起，细微的样式调整和文章更改将不加记录或登记为微调。这样做利于提升日志的目的性和维护效率\r\n\r\n<span class=\"mk-dt\">19.07.11<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.07.02<span class=\"mk-dbg\"></span></span>由于未知原因，通过百度搜索进入博客时会出现错误路径调用的问题已消失  \r\n<span class=\"mk-dt\">19.07.11<span class=\"mk-w\"></span></span>发布文章：生病。。。  \r\n<span class=\"mk-dt\">19.07.02<span class=\"mk-bug\"></span></span>通过百度搜索进入博客时会出现错误路径调用  \r\n<span class=\"mk-dt\">19.06.30<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.06.30<span class=\"mk-dbg\"></span></span>修复了返回顶部按钮样式错误的问题  \r\n<span class=\"mk-dt\">19.06.30<span class=\"mk-w\"></span></span>发布了文章：氛愿景  \r\n<span class=\"mk-dt\">19.06.29<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.06.29<span class=\"mk-w\"></span></span>发布了关于博客页面  \r\n<span class=\"mk-dt\">19.06.29<span class=\"mk-w\"></span></span>完善了部分文章  \r\n<span class=\"mk-dt\">19.06.29<span class=\"mk-ui\"></span></span>修改了卡片样式  \r\n<span class=\"mk-dt\">19.06.23<span class=\"mk-updt\"></span></span>上下文章浏览按钮现可用  \r\n<span class=\"mk-dt\">19.06.23<span class=\"mk-dbg\"></span></span>修复了SL内核的一个查询语句bug  \r\n<span class=\"mk-dt\">19.06.22<span class=\"mk-ui\"></span></span>样式微调  \r\n\r\n## PILIPALA 1902BETA6 LTS 第六步进维护日志\r\n\r\n<span class=\"mk-dt\">19.06.16<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.06.16<span class=\"mk-w\"></span></span>发布了文章：我  \r\n<span class=\"mk-dt\">19.06.16<span class=\"mk-ui\"></span></span>CNZZ站长统计现已隐藏  \r\n<span class=\"mk-dt\">19.06.16<span class=\"mk-ui\"></span></span>导航栏卡片样式修改  \r\n<span class=\"mk-dt\">19.06.15<span class=\"mk-bug\"></span></span>在手机浏览时刷新主页会导致背景图片丢失  \r\n<span class=\"mk-dt\">19.06.15<span class=\"mk-ui\"></span></span>对部分颜色微调，并进行了样式表规范  \r\n<span class=\"mk-dt\">19.06.15<span class=\"mk-ui\"></span></span>导航栏签名样式修改，与头像所在盒联色  \r\n<span class=\"mk-dt\">19.06.15<span class=\"mk-ui\"></span></span>导航栏字距调整，修改版权信息  \r\n<span class=\"mk-dt\">19.06.08<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.06.07<span class=\"mk-ui\"></span></span>修改了部分样式  \r\n<span class=\"mk-dt\">19.06.07<span class=\"mk-mtn\"></span></span>SL1.15内核进入开发流程  \r\n<span class=\"mk-dt\">19.06.02<span class=\"mk-ui\"></span></span>修改了移动端头像大小  \r\n<span class=\"mk-dt\">19.05.26<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.05.26<span class=\"mk-ui\"></span></span>mrks与wrds标签样式更改  \r\n<span class=\"mk-dt\">19.05.26<span class=\"mk-ui\"></span></span>优化了背景图片的加载速度  \r\n<span class=\"mk-dt\">19.05.26<span class=\"mk-w\"></span></span>发布文章：PILIPALA BETA7愿景  \r\n<span class=\"mk-dt\">19.05.25<span class=\"mk-w\"></span></span>发布文章：赞助&支持  \r\n<span class=\"mk-dt\">19.05.25<span class=\"mk-w\"></span></span>部分文章和图片作了少许改动  \r\n<span class=\"mk-dt\">19.05.25<span class=\"mk-ui\"></span></span>优化了友链样式  \r\n<span class=\"mk-dt\">19.05.18<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.05.18<span class=\"mk-ui\"></span></span>新增wrd.css，它将和marks.css（已更名为mrks.css）一起用标记增加文章的可读性  \r\n<span class=\"mk-dt\">19.05.01<span class=\"mk-w\"></span></span>为“句摘”页补充了来自于《瓦尔登湖》一书的摘录  \r\n<span class=\"mk-dt\">19.05.18<span class=\"mk-dbg\"></span></span>由主题代码错误导致的“手机模式下文章列表标签栏的Time标签显示错位到右侧”的BUG现已修复  \r\n\r\n## PILIPALA 1902BETA6 LTS 第五步进维护日志\r\n\r\n<span class=\"mk-dt\">19.05.11<span class=\"mk-ui\"></span></span>marks样式已使用github作CDN优化  \r\n<span class=\"mk-dt\">19.05.11<span class=\"mk-w\"></span></span>删除了部分文章  \r\n<span class=\"mk-dt\">19.05.11<span class=\"mk-ui\"></span></span>文章条带已弃用  \r\n<span class=\"mk-dt\">19.05.11<span class=\"mk-w\"></span></span>发布文章：友情链接  \r\n<span class=\"mk-dt\">19.05.11<span class=\"mk-w\"></span></span>发布文章：欢迎页&主引导  \r\n<span class=\"mk-dt\">19.05.11<span class=\"mk-bug\"></span></span>手机模式第一次加载背景图片过于缓慢（超过30s），此问题有待于使用CDN解决  \r\n<span class=\"mk-dt\">19.05.11<span class=\"mk-ui\"></span></span>主题颜色微调  \r\n<span class=\"mk-dt\">19.05.11<span class=\"mk-bug\"></span></span>手机模式下文章列表标签栏的Time标签显示错位到右侧  \r\n<span class=\"mk-dt\">19.05.01<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.05.01<span class=\"mk-bug\"></span></span>颜色条带（xxxStrip）出现悬空，由于利用率低下，该功能在下一版本中会被“NEW”、“HOT”等图标取代  \r\n<span class=\"mk-dt\">19.05.01<span class=\"mk-ui\"></span></span>主题样式微调，新增图片阴影样式以增加观感  \r\n<span class=\"mk-dt\">19.05.01<span class=\"mk-updt\"></span></span>SL内核现已改为生产模式以进一步提升运行速度  \r\n<span class=\"mk-dt\">19.05.01<span class=\"mk-updt\"></span></span>图片外链加速现已由贴图库改用又拍云  \r\n<span class=\"mk-dt\">19.05.01<span class=\"mk-ui\"></span></span>field主题圆角改为8px（原10px）  \r\n<span class=\"mk-dt\">19.05.01<span class=\"mk-w\"></span></span>部分文章内容小改  \r\n<span class=\"mk-dt\">19.05.01<span class=\"mk-dbg\"></span></span>Time/Date标签重复显示问题修复  \r\n<span class=\"mk-dt\">19.04.22<span class=\"mk-bug\"></span></span>部分外链图片失效  \r\n<span class=\"mk-dt\">19.04.21<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.05.01<span class=\"mk-bug\"></span></span>Time/Date标签出现重复显示（该问题由主题函数暂未开发导致）  \r\n<span class=\"mk-dt\">19.04.21<span class=\"mk-w\"></span></span>修改了部分文章内容  \r\n<span class=\"mk-dt\">19.04.21<span class=\"mk-dbg\"></span></span>使用img标签解决了部分文章图片过大的超出问题  \r\n<span class=\"mk-dt\">19.04.21<span class=\"mk-mtn\"></span></span>对内核和主题的部分文件做了命名优化  \r\n<span class=\"mk-dt\">19.04.21<span class=\"mk-dbg\"></span></span>使用contain方式解决了手机端背景显示不清晰的问题，但效果仍不理想  \r\n<span class=\"mk-dt\">19.04.21<span class=\"mk-ui\"></span></span> 菜单下拉按钮样式更改，使其更利于阅读  \r\n<span class=\"mk-dt\">19.04.21<span class=\"mk-ui\"></span></span>调整了文字大小以在保证阅读的情况下显示更多内容  \r\n<span class=\"mk-dt\">19.04.21<span class=\"mk-ui\"></span></span>修改了部分图标样式  \r\n<span class=\"mk-dt\">19.04.21<span class=\"mk-ui\"></span></span>氛元素主题（ElementFen theme）更名为氛主题（Field theme），受到IDE启发，现已采用暗色调配色，提供了更强的可读性，有利于视力保护和缓解审美疲劳  \r\n<span class=\"mk-dt\">19.04.20<span class=\"mk-ui\"></span></span>LabelBox图标修改，新增Time标签，用来表示文章发布的详细时间，该标签解决了手机端时间溢出问题  \r\n<span class=\"mk-dt\">19.04.20<span class=\"mk-updt\"></span></span>博客在本周内被百度收录\r\n\r\n## PILIPALA 1902BETA6 LTS 第四步进维护日志\r\n\r\n<span class=\"mk-dt\">19.04.14<span class=\"mk-bug\"></span></span>文章图片过大会超出显示范围，丧失自动调整功能，这与最近的一次样式修改有关  \r\n<span class=\"mk-dt\">19.04.14<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.04.14<span class=\"mk-updt\"></span></span>CNZZ站长统计现可用  \r\n<span class=\"mk-dt\">19.04.14<span class=\"mk-w\"></span></span>发布了文章：关于pilipala  \r\n<span class=\"mk-dt\">19.04.14<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.04.14<span class=\"mk-updt\"></span></span>维护日志现已使用更简洁的时期表达  \r\n<span class=\"mk-dt\">19.04.14<span class=\"mk-dbg\"></span></span>修正了维护日志的几处日期错误  \r\n<span class=\"mk-dt\">19.04.14<span class=\"mk-bug\"></span></span>博客背景图无法兼容移动端，表现为不能覆盖全屏  \r\n<span class=\"mk-dt\">19.04.14<span class=\"mk-updt\"></span></span>现已使用图床优化图片加载速度  \r\n<span class=\"mk-dt\">19.04.14<span class=\"mk-bug\"></span></span>MarkDown的引用标签无法套用，会显示为\">\"符号  \r\n<span class=\"mk-dt\">19.04.14<span class=\"mk-w\"></span></span>删除了部分文章  \r\n<span class=\"mk-dt\">19.04.14<span class=\"mk-updt\"></span></span>优化了文章格式  \r\n<span class=\"mk-dt\">19.04.13<span class=\"mk-w\"></span></span>发布文章：Thaumy人设  \r\n<span class=\"mk-dt\">19.04.13<span class=\"mk-w\"></span></span>发布文章：水瓜社成立  \r\n<span class=\"mk-dt\">19.04.13<span class=\"mk-w\"></span></span>修改了部分文章标题、内容  \r\n<span class=\"mk-dt\">19.04.05<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.04.05<span class=\"mk-w\"></span></span>发布了文章：Thaumy语录  \r\n<span class=\"mk-dt\">19.04.05<span class=\"mk-updt\"></span></span>css结构优化  \r\n<span class=\"mk-dt\">19.04.05<span class=\"mk-updt\"></span></span>现已采用思源黑体和Ubuntu字体作为显示字体，基于GoogleFonts外链  \r\n<span class=\"mk-dt\">19.04.05<span class=\"mk-updt\"></span></span>因为手机端不支持动态渲染毛玻璃，毛玻璃样式和透明样式现已更换为不透明扁平色  \r\n## PILIPALA 1902BETA6 LTS 第三步进维护日志\r\n<span class=\"mk-dt\">19.03.31<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.03.31<span class=\"mk-updt\"></span></span>站点背景样式微调  \r\n<span class=\"mk-dt\">19.03.31<span class=\"mk-updt\"></span></span>取消了菜单栏的毛玻璃样式，并进行了样式微调  \r\n<span class=\"mk-dt\">19.03.30<span class=\"mk-bug\"></span></span>首页的调用机制和AJAX不利于代码阅读和向后兼容，这个问题已列入BETA7开发任务  \r\n<span class=\"mk-dt\">19.03.30<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.03.30<span class=\"mk-updt\"></span></span>现已通过js函数返回顶部而非使用js事件  \r\n<span class=\"mk-dt\">19.03.30<span class=\"mk-updt\"></span></span>维护日志标签样式更新  \r\n<span class=\"mk-dt\">19.03.30<span class=\"mk-updt\"></span></span>Box阴影微调以提升层次感  \r\n<span class=\"mk-dt\">19.03.30<span class=\"mk-updt\"></span></span>毛玻璃渐变层微调以提升视觉体验  \r\n<span class=\"mk-dt\">19.03.30<span class=\"mk-updt\"></span></span>css结构优化  \r\n<span class=\"mk-dt\">19.03.30<span class=\"mk-updt\"></span></span>手机版菜单调出按钮ShowNaviBtn现已完备，并使用了旋转样式以提升体验  \r\n<span class=\"mk-dt\">19.03.24<span class=\"mk-dbg\"></span></span>ShowNaviCardBoxBtn向后兼容问题已解决，并给予了命名优化  \r\n\r\n## PILIPALA 1902BETA6 LTS 第二步进维护日志\r\n<span class=\"mk-dt\">19.03.24<span class=\"mk-updt\"></span></span>使用了清晰度更高的个人头像以解决手机端头像模糊的问题  \r\n<span class=\"mk-dt\">19.03.24<span class=\"mk-updt\"></span></span>文章底部的评论和点赞按钮样式优化，现已加入响应式适配  \r\n<span class=\"mk-dt\">19.03.24<span class=\"mk-updt\"></span></span>返回顶部按钮现已支持淡入和出加载，返回顶部机制更新完成  \r\n<span class=\"mk-dt\">19.03.24<span class=\"mk-dbg\"></span></span>ShowNaviCardBoxBtn代码优化完成，采用全新滑出样式  \r\n<span class=\"mk-dt\">19.03.24<span class=\"mk-bug\"></span></span>ShowNaviCardBoxBtn不利于代码维护，目前正在想办法解决这个问题  \r\n<span class=\"mk-dt\">19.03.24<span class=\"mk-updt\"></span></span>为手机版提供了一个下拉按纽（ShowNaviCardBoxBtn）以单独显示文章菜单导航，有效利用了空间  \r\n<span class=\"mk-dt\">19.03.23<span class=\"mk-updt\"></span></span>规范了部分css类名称，同时对导航、文章列表和文章详情进行了样式更改  \r\n<span class=\"mk-dt\">19.03.23<span class=\"mk-updt\"></span></span>现已支持手机和电脑的响应式背景，这在不同的设备上能给予了不同的背景观感，也有利于针对手机电脑适配背景  \r\n<span class=\"mk-dt\">19.03.23<span class=\"mk-updt\"></span></span>将部分Box毛玻璃化以增加可读性，并与半透明背景和描边搭配以丰富视觉效果  \r\n<span class=\"mk-dt\">19.03.23<span class=\"mk-updt\"></span></span>毛玻璃模糊度与背景色优化，增强了可读性  \r\n<span class=\"mk-dt\">19.03.16<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.03.16<span class=\"mk-updt\"></span></span>文章卡片更换为毛玻璃样式  \r\n<span class=\"mk-dt\">19.03.16<span class=\"mk-bug\"></span></span>由于和毛玻璃样式冲突，桌面端的背景随鼠标移动特效失效  \r\n<span class=\"mk-dt\">19.03.16<span class=\"mk-updt\"></span></span>更改一些移动端的显示间距，使其更利于展示  \r\n<span class=\"mk-dt\">19.03.16<span class=\"mk-updt\"></span></span>调整了部分背景和圆角样式  \r\n\r\n## PILIPALA 1902BETA6 LTS 第一步进维护日志\r\n<span class=\"mk-dt\">19.03.10<span class=\"mk-mtn\"></span></span>维护日志已上载  \r\n<span class=\"mk-dt\">19.03.10<span class=\"mk-updt\"></span></span>增加了点击“THAUMY的博客”文字可以返回首页的功能  \r\n<span class=\"mk-dt\">19.03.09<span class=\"mk-dbg\"></span></span>修复了维护日志的一些标记错误  \r\n<span class=\"mk-dt\">19.03.09<span class=\"mk-updt\"></span></span>氛元素主题样式修改，使得手机和平板的浏览布局更佳，并调整了灰白色的深度以增强视觉效果  \r\n<span class=\"mk-dt\">19.03.09<span class=\"mk-updt\"></span></span>优化了版权文本的行距  \r\n<span class=\"mk-dt\">19.03.09<span class=\"mk-w\"></span></span>上传了啪啦B6宣传图  \r\n<span class=\"mk-dt\">19.03.09<span class=\"mk-w\"></span></span>发布文章 噼里啪啦第六开发版现可用  \r\n<span class=\"mk-dt\">19.03.09<span class=\"mk-w\"></span></span>重选了菜单和文列的展示文章  \r\n<span class=\"mk-dt\">19.03.09<span class=\"mk-dbg\"></span></span>文章列表倒序加载已修复，这与stepTextList()方法的第二重载的错误有关  \r\n<span class=\"mk-dt\">19.03.09<span class=\"mk-updt\"></span></span>重置了数据库的一些默认值  \r\n<span class=\"mk-dt\">19.03.09<span class=\"mk-dbg\"></span></span>修复了StudioLibrary1.14内核的一个错误，这个错误使得stepTextList()方法的第二重载无法筛选文章类型以输出文章  \r\n<span class=\"mk-dt\">19.03.09<span class=\"mk-bug\"></span></span>文章列表不能以ID为顺序倒序加载  \r\n<span class=\"mk-dt\">19.03.09<span class=\"mk-bug\"></span></span>由文章详情返回首页后会丢失已加载的文章列表  \r\n<span class=\"mk-dt\">19.03.09<span class=\"mk-updt\"></span></span>博文已支持MarkDown语言，往后的博文更新将全部以MarkDown编写  \r\n<span class=\"mk-dt\">19.03.03<span class=\"mk-w\"></span></span>维护日志校准完成  \r\n<span class=\"mk-dt\">19.03.02<span class=\"mk-updt\"></span></span>氛元素主题维护日志提供标记块支持  \r\n<span class=\"mk-dt\">19.03.02<span class=\"mk-updt\"></span></span>氛元素主题超链接标记块颜色调整为蓝色，与评论按钮一致  \r\n<span class=\"mk-dt\">19.02.17<span class=\"mk-updt\"></span></span>氛元素主题部分样式微调  \r\n<span class=\"mk-dt\">19.02.17<span class=\"mk-mtn\"></span></span>氛元素主题开始使用GUID进行版本控制  \r\n<span class=\"mk-dt\">19.02.17<span class=\"mk-mtn\"></span></span>PILIPALA开始使用GUID进行版本控制\r\n\r\n## PILIPALA 1902BETA6 第三预览版维护日志\r\n\r\n### <span class=\"mk-dt\">19.02.14<span class=\"mk-updt\"></span></span>PILIPALA第六开发版（PILIPALA Beta6 LTS）\r\n\r\n* 应用了第三代对象式架构，将整个网站系统的耦合度显著降低，极大地避免了各部分的彼此牵连，并降低了逻辑复杂度\r\n* 提供了主题编写支持，用户可以根据需要自行编写主题、更改网站样式\r\n* 采用主页映射，将站点首页映射到启动页，利于简化链接复杂度\r\n* 废除webio（网页IO桥），全局数据处理部署于webservice，简化了数据操作逻辑\r\n* 去除了服务端ajax支持，因为它会大幅提升现有架构复杂度\r\n* 该版本使用WebApplication代替WebSite建筑，因为前者提供了更佳的MSBuild支持\r\n\r\n### <span class=\"mk-dt\">19.02.14<span class=\"mk-updt\"></span></span>氛元素主题190213（fen）\r\n\r\n* 提供了基于JQuery的Ajax支持，减轻了服务端业务压力，无刷新加载提升了用户体验\r\n* 响应式网页设计使得氛元素主题能兼容任何屏幕规格的浏览设备，移动端最佳的浏览设备为 iPad Pro，桌面端最佳分辨率为1080p\r\n* 为第三代对象式架构提供了UI及命名支持，优化了css分类\r\n* 数据层操作全部移交服务端，提升了安全系数\r\n* 删除了ReadOnly条带，因为该样式不利于数据层整合\r\n* 半透明的UI设计，与背景图搭配提升了浏览体验\r\n* 新增功能：点击头像可返回首页\r\n  \r\n<span class=\"mk-dt\">19.02.14<span class=\"mk-dbg\"></span></span>点赞按钮现可用  \r\n<span class=\"mk-dt\">19.02.14<span class=\"mk-dbg\"></span></span>浏览计数现可用  \r\n<span class=\"mk-dt\">19.02.14<span class=\"mk-dbg\"></span></span>推进加载按钮现可用（该按钮可有效减轻服务端数据库遍历压力）\r\n\r\n### <span class=\"mk-dt\">19.02.14<span class=\"mk-updt\"></span></span>StudioLibrary1.14LTS的全面支持\r\n\r\n* 噼里啪啦命名空间全部重构，应用了第三代对象式架构以全面兼容palaDB，使其完全脱离业务实现架构束缚，\r\n为开发及向后兼容与维护提供便利\r\n* 采用大量接口约束噼里啪啦方法与结构，明确了各个方法的分工和彼此联系\r\n\r\n### <span class=\"mk-dt\">19.02.14<span class=\"mk-updt\"></span></span>palaDB全部重构\r\n\r\n* 文本数据采用三分库设计（灵感来源于AKG K3003），达到了逻辑简明与业务高效的完美契合\r\n* 删除原有palaRoot（根级数据表）和palaUser（用户数据表），两者精简后兼为一表，提升了数据整合度\r\n* 视图部分全部重构，对StudioLibrary对象式架构提供基层支持\r\n* 数据库函数大量精简，采用父子级和归类查询思路，简洁明了的函数设计很好地提升了开发效率\r\n\r\n## PILIPALA 1902BETA6 第二预览版维护日志\r\n\r\n<blockquote>注意，此日志在时间戳上存在统计遗漏，现有的时间记录是结合多方面数据分析得出的，可能与实际不符。</blockquote>\r\n\r\n<span class=\"mk-dt\">19.02‎.‎07‎<span class=\"mk-mtn\"></span></span>PILIPALA 第六开发版第二预览版已上线：www.thaumy.cn  \r\n<span class=\"mk-dt\">19.02‎.‎07‎<span class=\"mk-updt\"></span></span>增添了对手机浏览器的支持，手机px宽为1024以上网页会自动切换到pc模式  \r\n<span class=\"mk-dt\">19.02‎.‎07‎<span class=\"mk-bug\"></span></span>点赞浏览计数评论推进加载功能因ajax解决方案不理想暂不可用  \r\n<span class=\"mk-dt\">19.02.‎07<span class=\"mk-dbg\"></span></span>修复了配置文件冗余标记导致的运行环境问题\r\n\r\n## PILIPALA 1902BETA6 第一预览版维护日志\r\n\r\n<blockquote>注意，此日志在时间戳上存在统计遗漏，现有的时间记录是结合多方面数据分析得出的，可能与实际不符。</blockquote>\r\n\r\n<span class=\"mk-dt\">19.02‎.‎04‎<span class=\"mk-updt\"></span></span>上传了氛元素UI作为站点  \r\n<span class=\"mk-dt\">19.02‎.‎04‎<span class=\"mk-bug\"></span></span>因为运行环境问题，该版本无法部署于站点服务器\r\n\r\n## pilipala 1810BETA6 维护日志\r\n\r\n<blockquote>注意，此日志在时间戳上存在统计遗漏，现有的时间记录是结合多方面数据分析得出的，可能与实际不符。</blockquote>\r\n\r\n<span class=\"mk-dt\">18.12‎.‎09<span class=\"mk-mtn\"></span></span>因为新的实现思路，该项目开发终止，没有入网  \r\n<span class=\"mk-dt\">18.10.‎27‎<span class=\"mk-mtn\"></span></span>噼里啪啦项目正式纳入码肆计划（masiproj）\r\n\r\n## pilipala 1810BETA5 维护日志\r\n\r\n<blockquote>注意，此日志在时间戳上存在统计遗漏，现有的时间记录是结合多方面数据分析得出的，可能与实际不符。</blockquote>\r\n\r\n<span class=\"mk-dt\">18.10‎.21<span class=\"mk-mtn\"></span></span>pilipala BETA5现已上站：www.thaumy.cn  \r\n<span class=\"mk-dt\">18.10‎.‎21‎<span class=\"mk-w\"></span></span>新增菜单“pilipala计划”  \r\n<span class=\"mk-dt\">18.10.‎21‎<span class=\"mk-w\"></span></span>上传 StdLib1.12\"REALUNATYPE&RETURNV\"宣传图 作为置顶文章图片\r\n\r\n### <span class=\"mk-dt\">18.10‎.21‎<span class=\"mk-updt\"></span></span>内核概要  \r\n* 后台代码进一步优化，简化了站点的云部署流程\r\n* 将代码整合分类，使得webio清晰明了\r\n* 使用stdlib1.12进行建构，提供优于1.11版本的逻辑架构和运行效率\r\n* 新增pala root与pala user支持，用以操作啪啦元数据和用户数据\r\n* 修改了部分注释和名称，现版本逻辑的构建优于历史最高\r\n* 进一步规范palaDB命名\r\n\r\n## pilipala 1809BETA4 维护日志\r\n\r\n‎<span class=\"mk-dt\">18.09.‎24<span class=\"mk-mtn\"></span></span>pilipala BETA4现已上站：www.thaumy.cn，有史以来bug最多的pilipala，于中秋佳节部署\r\n\r\n### ‎<span class=\"mk-dt\">18.9.‎24<span class=\"mk-updt\"></span></span>交互\r\n* 上传 StdLib1.11\"HeavenlyBlue\"宣传图 作为置顶文章图片\r\n* 增加对手机浏览器的支持，仅限于iphone5/se，并且bug非常非常多\r\n* 该版本表现层（pilipala主题）拥有众多bug，不予统计\r\n\r\n### ‎<span class=\"mk-dt\">18.09.‎24<span class=\"mk-updt\"></span></span>内核概要\r\n* 采用ASP.NET预编译技术，网站启动时间缩小到原来的20%，并且更加安全\r\n* 采用全新HeavenlyBlue架构的StdLib1.11核心（正式版内核），底层效率进一步提升，且带来更多函数支持\r\n* 使用pala文章数据分表技术，增强了原数据的安全性\r\n* 网站底部加载按钮现启用，在以后文章较多时可有效提升网页速度，减少流量\r\n* 使用母版页和内容页架构网页表现层，减小耦合以便利开发\r\n\r\n<span class=\"mk-dt\">18.09.‎24<span class=\"mk-bug\"></span></span>pala文章数据分表技术降低了性能，复杂了架构逻辑，且向后兼容性极差\r\n\r\n## pilipala 1808BETA3 维护日志\r\n\r\n‎<span class=\"mk-dt\">18.08.‎27<span class=\"mk-mtn\"></span></span>pilipala BETA3已上站：asp.thaumy.cn，该版本为高二第一学期开学前的最后一次更新\r\n\r\n### ‎<span class=\"mk-dt\">18.08.‎27<span class=\"mk-updt\"></span></span>交互\r\n* pilipala主题样式更改，合理布局使得网页体验更佳‎\r\n* 文章条带在文章页可用\r\n* 文章页随机文章按钮现可用\r\n* 文章页支持按钮现已采用AJAX无刷新更新技术，解决页面在点赞后跳动问题\r\n* 修复了文章页文章创建时间显示成修改时间的问题\r\n* 支持计数和阅读计数的cookie现设置为10秒清空，方便开发调试和寻找问题  \r\n  \r\n### <span class=\"mk-dt\">18.08.‎27<span class=\"mk-updt\"></span></span>内核概要\r\n* 阅读计数和点赞计数逻辑大幅优化，较beta2性能提升并且使得维护更加方便\r\n* stdlib内核新增参数化查询功能，可有效避免sql注入式攻击（虽然目前博客无任何sql注入安全问题）\r\n* 使用存储过程，提高执行效率\r\n* 内核和网页IO桥的部分代码逻辑优化并规范命名，便利后期维护\r\n\r\n## pilipala 1808BETA2 维护日志\r\n\r\n### ‎<span class=\"mk-dt\">18.08.‎27<span class=\"mk-mtn\"></span></span>入网维护\r\n* 噼里啪啦beta2已入网：asp.thaumy.cn\r\n* php版本博客地址更改：php.thaumy.cn\r\n* 开发者预览版博客地址：asp.thaumy.cn\r\n* 由于开发调试，www版博客暂不可用\r\n\r\n### ‎<span class=\"mk-dt\">18.08.‎27<span class=\"mk-updt\"></span></span>交互\r\n* 支持计数可用\r\n* 支持按钮可用\r\n* 浏览计数可用\r\n* 文章显示由创建日期从新到旧依次排列\r\n* 兼容手机浏览器（仅可读的兼容，这意味着交互体验极差），排版不会散架了\r\n\r\n### ‎<span class=\"mk-dt\">18.08.‎27<span class=\"mk-updt\"></span></span>内核概要\r\n* 使用全新的StdLib1.11内核alpha2（先行测试内核）\r\n* 数据库改为视图查询，维护更加便捷\r\n* 内核代码命名规范以及逻辑优化\r\n* 增加浏览器cookies支持，用以验证客户端\r\n* “网页IO协处理桥”功能更加专一\r\n\r\n## pilipala 1808BETA1 维护日志\r\n\r\n‎<span class=\"mk-dt\">18.08.‎22<span class=\"mk-w\"></span></span>上传了pilipala的第一个宣传图  \r\n‎<span class=\"mk-dt\">18.08.‎22<span class=\"mk-mtn\"></span></span>1808BETA1a2入网，该版本优化删除了400行代码，优化了运行速度  \r\n‎<span class=\"mk-dt\">18.08.‎19<span class=\"mk-mtn\"></span></span>1808BETA1a0入网：www.thaumy.cn，我的qq空间声称其码量在3200行左右  \r\n‎<span class=\"mk-dt\">18.08.‎19<span class=\"mk-mtn\"></span></span>该版本开发完成  \r\n‎<span class=\"mk-dt\">18.08.‎19<span class=\"mk-updt\"></span></span>相较于Press版本博客的添加了置顶文章功能（另建数据库存储）  \r\n‎<span class=\"mk-dt\">18.08.‎19<span class=\"mk-mtn\"></span></span>博客数据库构建完成  \r\n‎<span class=\"mk-dt\">18.08.‎19<span class=\"mk-updt\"></span></span>博客主题已载入博客项目  \r\n‎<span class=\"mk-dt\">18.08.‎19<span class=\"mk-mtn\"></span></span>使用MUSE建立了第一版pilipala主题  \r\n‎<span class=\"mk-dt\">18.08.‎18<span class=\"mk-mtn\"></span></span>新的pilipala主题进入开发  \r\n‎<span class=\"mk-dt\">18.08.‎17<span class=\"mk-mtn\"></span></span>该版本进入开发流程，基于StdLib1.11（先行测试内核）  \r\n‎<span class=\"mk-dt\">18.08.‎18±1<span class=\"mk-mtn\"></span></span>博客数据库系统开始重构，仍然采用上一代存储策略\r\n\r\n## pilipala 1808ALPbHA3 维护日志\r\n\r\n‎<span class=\"mk-dt\">18.08.‎16<span class=\"mk-mtn\"></span></span>因为项目代码和管理不佳，该版本博客没有入网  \r\n‎<span class=\"mk-dt\">18.08.‎16<span class=\"mk-mtn\"></span></span>该项目开发终止  \r\n‎<span class=\"mk-dt\">18.08.‎16<span class=\"mk-updt\"></span></span>博客主题已载入博客项目  \r\n‎<span class=\"mk-dt\">18.08.‎16<span class=\"mk-mtn\"></span></span>使用MUSE建立的较完善的博客主题完成  \r\n‎<span class=\"mk-dt\">18.08.‎13<span class=\"mk-mtn\"></span></span>基于StdLib1.11的博客进入开发流程  \r\n‎<span class=\"mk-dt\">18.08.‎13<span class=\"mk-updt\"></span></span>基于MYSQL的博客数据库系统建立，该数据库使用用户表和文章表分开存储的策略\r\n\r\n## pilipala WSB（ALPHA2） 维护日志\r\n\r\n‎<span class=\"mk-dt\">18.07.‎23<span class=\"mk-mtn\"></span></span>该版本博客入网  \r\n‎<span class=\"mk-dt\">18.06‎.‎10<span class=\"mk-updt\"></span></span>建立使用MUSE导出的简单博客页，参考Personal主题设计  \r\n‎<span class=\"mk-dt\">18.06‎.‎10<span class=\"mk-updt\"></span></span>基于StdLib1.09的博客（此后以数据库数据输出）建立  \r\n‎<span class=\"mk-dt\">18.06‎.‎10<span class=\"mk-updt\"></span></span>基于MYSQL的博客数据库系统建立\r\n\r\n## pilipala StBlog（ALPHA1） 维护日志\r\n\r\n<span class=\"mk-dt\">18.02‎.‎10<span class=\"mk-updt\"></span></span>一个仅可以输出本地文本的简陋博客例程建立\r\n\r\n## public c2 维护日志(1710版本1)\r\n\r\n<span class=\"mk-dt\">18.02.22<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">18.02.19<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">18.02.19<span class=\"mk-updt\"></span></span>基于press的本博客停止了技术更新  \r\n<span class=\"mk-dt\">18.02.19<span class=\"mk-w\"></span></span>发布 博客重构计划EP03  \r\n<span class=\"mk-dt\">18.02.09<span class=\"mk-updt\"></span></span>基于ASP.NET技术的博客系统开始开发  \r\n<span class=\"mk-dt\">18.02.09<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.12.16<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.12.16<span class=\"mk-mtn\"></span></span>回收了 2 条次广告性评论  \r\n<span class=\"mk-dt\">17.12.16<span class=\"mk-updt\"></span></span>将评论框的 “您的昵称” 和 “您的邮箱” 输入栏宽度（width）由 80% 更改为 100%  \r\n<span class=\"mk-dt\">17.12.02<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.12.02<span class=\"mk-updt\"></span></span>发表了文章 Arduino单片机开发感想  \r\n<span class=\"mk-dt\">17.12.02<span class=\"mk-mtn\"></span></span>回收了 167 条次广告性评论  \r\n<span class=\"mk-dt\">17.11.19<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.11.19<span class=\"mk-mtn\"></span></span>删除了 1 条次 广告性评论  \r\n<span class=\"mk-dt\">17.11.11<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.10.29<span class=\"mk-mtn\"></span></span>回收了 68±20 条次 广告性评论（不完全统计）  \r\n<span class=\"mk-dt\">17.10.15<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.10.29<span class=\"mk-w\"></span></span>修改了 StdLib1.07#public更新日志 文章的宣传图片  \r\n<span class=\"mk-dt\">17.10.29<span class=\"mk-mtn\"></span></span>回收了 16 条次 广告性评论  \r\n<span class=\"mk-dt\">17.10.21<span class=\"mk-mtn\"></span></span>回收了 47 条次 广告性评论  \r\n<span class=\"mk-dt\">17.10.15<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.10.15<span class=\"mk-updt\"></span></span>更新了 博客音乐播放器歌单  \r\n<span class=\"mk-dt\">17.10.15<span class=\"mk-mtn\"></span></span>回收了 57 条次 广告性评论  \r\n<span class=\"mk-dt\">17.10.08<span class=\"mk-updt\"></span></span>博客已被百度收录\r\n\r\n## public c1 维护日志(1709版本1)\r\n\r\n<span class=\"mk-dt\">17.10.04<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.10.04<span class=\"mk-updt\"></span></span>维护日志头规则现已更新：红色为问题登记日志，绿色为修复日志，黑色为常规日志，蓝色为备份日志  \r\n<span class=\"mk-dt\">17.10.04<span class=\"mk-w\"></span></span>更改 MyStudio 页面名称为 工作室  \r\n<span class=\"mk-dt\">17.10.04<span class=\"mk-w\"></span></span>更改 NewBlog 页面名称为 关于博客  \r\n<span class=\"mk-dt\">17.10.04<span class=\"mk-w\"></span></span>将 DevelopersLab 计划 页面归档处理  \r\n<span class=\"mk-dt\">17.10.04<span class=\"mk-w\"></span></span>修订了 MyStudio 页面的内容  \r\n<span class=\"mk-dt\">17.10.04<span class=\"mk-bug\"></span></span>登记问题：音乐播放器部分歌曲无法加载，需要二次点击才能正常播放  \r\n<span class=\"mk-dt\">17.10.04<span class=\"mk-mtn\"></span></span>回收了 40 条次 广告性评论  \r\n<span class=\"mk-dt\">17.10.01<span class=\"mk-mtn\"></span></span>回收了 27 条次 广告性评论  \r\n<span class=\"mk-dt\">17.09.24<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.09.24<span class=\"mk-updt\"></span></span>删除了 博客垃圾文件及目录 ，优化性能  \r\n<span class=\"mk-dt\">17.09.24<span class=\"mk-w\"></span></span>删除了 20->30 条次 广告性评论  \r\n<span class=\"mk-dt\">17.09.10<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.09.06<span class=\"mk-updt\"></span></span>音乐播放器唱片上的唱臂图片 已更新为矢量  \r\n<span class=\"mk-dt\">17.09.06<span class=\"mk-updt\"></span></span>将 NewBLOG页面 中的 不满意处&(一月内) 栏目和 修复&Updt(一月内) 栏目合并为 DevUpdtLog#开发维护日志 栏目，并添加跳往博内页面 维护日志 的超链接作为内容  \r\n<span class=\"mk-dt\">17.09.06<span class=\"mk-w\"></span></span>删除了 2 条次 广告性评论 和 1 条次 测试性评论\r\n\r\n## public b3 维护日志(1708版本2)\r\n\r\n<span class=\"mk-dt\">17.08.31<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.08.31<span class=\"mk-updt\"></span></span>调整了 文章底部菜单 的 按钮顺序  \r\n<span class=\"mk-dt\">17.08.31<span class=\"mk-updt\"></span></span>对文章页的文章底部菜单的属性栏增加了图标  \r\n<span class=\"mk-dt\">17.08.31<span class=\"mk-updt\"></span></span>文章底部菜单增加标签属性  \r\n<span class=\"mk-dt\">17.08.31<span class=\"mk-updt\"></span></span>更新了 音乐播放器歌单  \r\n<span class=\"mk-dt\">17.08.28<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.08.27<span class=\"mk-bug\"></span></span>登记问题：音乐播放器的静音按钮只能为当前歌曲静音，在播放下一首歌曲时静音失效  \r\n<span class=\"mk-dt\">17.08.27<span class=\"mk-updt\"></span></span>取消了评论区 站点栏目 的填写  \r\n<span class=\"mk-dt\">17.08.27<span class=\"mk-updt\"></span></span>更改了评论区文字，将 评论 改为 留言  \r\n<span class=\"mk-dt\">17.08.27<span class=\"mk-updt\"></span></span>修改了 音乐播放器的 随机播放按钮 和 静音按钮 的大小  \r\n<span class=\"mk-dt\">17.08.27<span class=\"mk-dbg\"></span></span>修复了 在ie11环境下音乐播放器的随机播放按钮不显示的问题\r\n\r\n## public b2 维护日志(1708版本1)\r\n\r\n<span class=\"mk-dt\">17.08.24<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.08.24<span class=\"mk-bug\"></span></span>登记问题：在ie11环境下音乐播放器的随机播放按钮不显示  \r\n<span class=\"mk-dt\">17.08.24<span class=\"mk-updt\"></span></span>更改了音乐播放器 随机播放按钮和静音按钮的样式  \r\n<span class=\"mk-dt\">17.08.24<span class=\"mk-dbg\"></span></span>修复了 音乐播放器静音图标第二次点击后会出现字体丢失的问题  \r\n<span class=\"mk-dt\">17.08.24<span class=\"mk-updt\"></span></span>点赞心形按钮样式修改，已点赞的文章会显示红心  \r\n<span class=\"mk-dt\">17.08.22->24<span class=\"mk-dbg\"></span></span>修复了 文章底部菜单图标首次使用时，因hover图片加载过慢导致在hover图片加载完成前无图片可显示，形成类似闪烁的假象 的问题  \r\n<span class=\"mk-dt\">17.08.23午->24早<span class=\"mk-bug\"></span></span>受台风“天鸽”影响，博客无法访问  \r\n<span class=\"mk-dt\">17.08.20<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.08.19<span class=\"mk-bug\"></span></span>登记问题：文章底部菜单图标首次使用时，因hover图片加载过慢导致在hover图片加载完成前无图片可显示，形成类似闪烁的假象  \r\n<span class=\"mk-dt\">17.08.19<span class=\"mk-dbg\"></span></span>修复了 文章底部菜单图标在不同环境下实际占用空间不同导致显示不合理 的问题  \r\n<span class=\"mk-dt\">17.08.16<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.08.15<span class=\"mk-dbg\"></span></span>修复了 文章底部菜单图标高低不一致，并且使用不规范 的问题  \r\n<span class=\"mk-dt\">17.08.15<span class=\"mk-updt\"></span></span>文章底部菜单图标做部分重绘  \r\n<span class=\"mk-dt\">17.08.13<span class=\"mk-updt\"></span></span>置顶文章右上角的橙红小标志已更新为矢量  \r\n<span class=\"mk-dt\">17.08.13<span class=\"mk-updt\"></span></span>文章底部菜单图标做部分调整，并已更新为全矢量  \r\n<span class=\"mk-dt\">17.08.09<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.08.09<span class=\"mk-updt\"></span></span>更改了维护日志的登记问题日期头，由 y.m.dfound±int--register±int_ 简化为 y.m.d±int--r±int_  \r\n<span class=\"mk-dt\">17.08.08<span class=\"mk-bug\"></span></span>登记问题：博客未被百度收录  \r\n<span class=\"mk-dt\">17.08.06<span class=\"mk-updt\"></span></span>博客菜单栏已更新为全矢量\r\n\r\n## public b2 维护日志(1707版本2)\r\n\r\n<span class=\"mk-dt\">17.07.28<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.07.25±5<span class=\"mk-updt\"></span></span>博客已被百度收录  \r\n<span class=\"mk-dt\">17.07.23<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.07.23<span class=\"mk-updt\"></span></span>改用标准方法引入js&css  \r\n<span class=\"mk-dt\">17.07.23<span class=\"mk-w\"></span></span>上传了 StdLib1.08 的宣传画(1pic)  \r\n<span class=\"mk-dt\">17.07.22<span class=\"mk-updt\"></span></span>开始使用谷歌广告服务  \r\n<span class=\"mk-dt\">17.07.21<span class=\"mk-w\"></span></span>发布了 StdLib1.08pub  \r\n<span class=\"mk-dt\">17.07.20<span class=\"mk-updt\"></span></span>压缩了部分js以提升速度  \r\n<span class=\"mk-dt\">17.07.20<span class=\"mk-updt\"></span></span>博客签名新增打字效果  \r\n<span class=\"mk-dt\">17.07.19<span class=\"mk-updt\"></span></span>修改了 webkit环境下博客页面滚动条样式  \r\n<span class=\"mk-dt\">17.07.19<span class=\"mk-updt\"></span></span>修改了 评论区部分样式和文字  \r\n<span class=\"mk-dt\">17.07.19<span class=\"mk-dbg\"></span></span>修复了 评论区前三个信息框在手机浏览器查看时超出边界 的问题  \r\n<span class=\"mk-dt\">17.07.18<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.07.18<span class=\"mk-dbg\"></span></span>修复了 蓝线刷新条宽度与pjax的刷新区域Central不相等 的问题  \r\n<span class=\"mk-dt\">17.07.18<span class=\"mk-bug\"></span></span>登记问题：蓝线刷新条宽度与pjax的刷新区域Central不相等  \r\n<span class=\"mk-dt\">17.07.17<span class=\"mk-updt\"></span></span>将 闪烁加载图案 更换为 蓝色刷新条  \r\n<span class=\"mk-dt\">17.07.16<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.07.16<span class=\"mk-updt\"></span></span>博客由 ajax 转为 pjax 加载  \r\n<span class=\"mk-dt\">17.07.16<span class=\"mk-updt\"></span></span>停用了 Advanced AJAX Page Loader 插件  \r\n<span class=\"mk-dt\">17.07.14<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份\r\n\r\n## public a3 维护日志(1707版本1)\r\n\r\n<span class=\"mk-dt\">17.07.13<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.7.12<span class=\"mk-updt\"></span></span>对国外访问进行特别优化，使用www.webpagetest.org进行优化测试  \r\n<span class=\"mk-dt\">17.7.12<span class=\"mk-updt\"></span></span>对部分js和css进行CDN加速  \r\n<span class=\"mk-dt\">17.7.12<span class=\"mk-updt\"></span></span>将 poi-player播放器音量减小至 20%  \r\n<span class=\"mk-dt\">17.7.12<span class=\"mk-updt\"></span></span>对部分影响速度的字体进行去本地化，转为CDN加速  \r\n<span class=\"mk-dt\">17.7.12<span class=\"mk-updt\"></span></span>半数资源SSL，提高安全性  \r\n<span class=\"mk-dt\">17.07.11<span class=\"mk-mtn\"></span></span>截至此时，博文在 public a2 版本 中累计修订 557±1 次  \r\n<span class=\"mk-dt\">17.07.11±1<span class=\"mk-updt\"></span></span>引用的外链js全部被压缩处理  \r\n<span class=\"mk-dt\">17.07.11<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.07.11<span class=\"mk-w\"></span></span>发布了文章：log17  \r\n<span class=\"mk-dt\">17.07.11<span class=\"mk-w\"></span></span>删除了页面：17 is running  \r\n<span class=\"mk-dt\">17.07.10<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.7.10<span class=\"mk-updt\"></span></span>废除数据仓库服务，停止其他项目在主机屋的运行  \r\n<span class=\"mk-dt\">17.07.10<span class=\"mk-w\"></span></span>修订页面 友情链接 计 37 次  \r\n<span class=\"mk-dt\">17.07.10<span class=\"mk-w\"></span></span>修订页面 NewBlog 计 35 次  \r\n<span class=\"mk-dt\">17.07.10<span class=\"mk-updt\"></span></span>通过调用 poi-player 的自身函数实现真正的音量下调到 20%  \r\n<span class=\"mk-dt\">17.07.10<span class=\"mk-updt\"></span></span>博客友链系统进行部分重新排版和样式修正  \r\n<span class=\"mk-dt\">17.07.10<span class=\"mk-w\"></span></span>发布了页面：维护日志  \r\n<span class=\"mk-dt\">17.07.09±1<span class=\"mk-updt\"></span></span>使用了极端的方法将 poi-player 播放器音量调整为 20%  \r\n<span class=\"mk-dt\">17.07.08±1<span class=\"mk-updt\"></span></span>停用 Qplayer 播放器，开始使用 poi-player 播放器  \r\n<span class=\"mk-dt\">17.07.08<span class=\"mk-updt\"></span></span>博客开放了友链注册  \r\n<span class=\"mk-dt\">17.07.08<span class=\"mk-w\"></span></span>发布了页面：友情链接  \r\n<span class=\"mk-dt\">17.07.08±1<span class=\"mk-updt\"></span></span>使用GitHub Pages作为CDN加速服务  \r\n<span class=\"mk-dt\">17.07.08±1<span class=\"mk-bug\"></span></span>登记问题：博客音乐自动换歌时会短暂播放上一首  \r\n<span class=\"mk-dt\">17.07.08±1<span class=\"mk-bug\"></span></span>登记问题：博客音乐播放器静音图标点击后样式发生错误  \r\n<span class=\"mk-dt\">17.07.08<span class=\"mk-bug\"></span></span>登记问题：在chorme环境下博客的图片、特效状态字体出现模糊  \r\n<span class=\"mk-dt\">17.07.08<span class=\"mk-dbg\"></span></span>修复了 ie浏览器中运行计时为0 的问题  \r\n<span class=\"mk-dt\">17.07.07<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.07.07<span class=\"mk-mtn\"></span></span>截至此时，博文在 public a3 版本 中累计修订 469 次  \r\n<span class=\"mk-dt\">17.07.07±1<span class=\"mk-updt\"></span></span>将 多媒体、脚本资源 外链引用自 github(raw开发模式)  \r\n<span class=\"mk-dt\">17.07.07<span class=\"mk-dbg\"></span></span>修复了 引用js时因为wp super cache插件的缓存问题导致错误引用 的问题  \r\n<span class=\"mk-dt\">17.07.07±1<span class=\"mk-updt\"></span></span>停用了Qplayer播放器  \r\n<span class=\"mk-dt\">17.07.07±1<span class=\"mk-updt\"></span></span>引用的js全部被压缩处理  \r\n<span class=\"mk-dt\">17.07.07±2<span class=\"mk-updt\"></span></span>压缩了部分图片，提升速度体验  \r\n<span class=\"mk-dt\">17.07.04->07<span class=\"mk-w\"></span></span>修订往期文章计 8 次\r\n\r\n## public a2 维护日志(pub1706版本7)\r\n\r\n<span class=\"mk-dt\">17.06.26<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.06.18->19</span>修订往期文章计 18 次  \r\n<span class=\"mk-dt\">17.06.18<span class=\"mk-w\"></span></span>发布了文章：浅谈press数据库优化  \r\n<span class=\"mk-dt\">17.06.17<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.06.17<span class=\"mk-mtn\"></span></span>截至此时，博文在 public a2 版本 中累计修订 428 次  \r\n<span class=\"mk-dt\">17.06.17±2<span class=\"mk-bug\"></span></span>登记问题：ajax刷新后全部首页图片无法加载  \r\n<span class=\"mk-dt\">17.06.17±3<span class=\"mk-dbg\"></span></span>修复了 CNZZ无法正常统计 的问题  \r\n<span class=\"mk-dt\">17.06.17±3<span class=\"mk-dbg\"></span></span>修复了 进入博客时音乐卡顿 的问题  \r\n<span class=\"mk-dt\">17.06.17±3<span class=\"mk-bug\"></span></span>登记问题：加载首页有几率至少有一张特色图片无法加载  \r\n<span class=\"mk-dt\">17.06.17<span class=\"mk-updt\"></span></span>将博客数据库表 wp_post 删除了 33条 记录  \r\n<span class=\"mk-dt\">17.06.16<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.06.16<span class=\"mk-updt\"></span></span>为 thaumy.link & thaumy.ml 设置 database 记录，用于访问数据仓库  \r\n<span class=\"mk-dt\">17.06.15<span class=\"mk-updt\"></span></span>为 thaumy.ml 设置 datarep 记录，用于访问数据仓库\r\n\r\n## public 维护日志(pub1706版本5)\r\n\r\n<span class=\"mk-dt\">17.06.14<span class=\"mk-mtn\"></span></span>截至此时，博文在 public版本 中累计修订 361 次  \r\n<span class=\"mk-dt\">17.06.14<span class=\"mk-w\"></span></span>修订 欢迎页&主引导 计 6 次  \r\n<span class=\"mk-dt\">17.06.14<span class=\"mk-w\"></span></span>修订页面 NewBlog 计 4 次  \r\n<span class=\"mk-dt\">17.06.14<span class=\"mk-w\"></span></span>发布了文章：应用程序三层架构与MVC(文章摘要) ，修订计 5 次  \r\n<span class=\"mk-dt\">17.06.13<span class=\"mk-mtn\"></span></span>进行了 1 次 xvm 常规备份  \r\n<span class=\"mk-dt\">17.06.09<span class=\"mk-mtn\"></span></span>截至此时，博文在 public版本 中累计修订 343 次  \r\n<span class=\"mk-dt\">17.06.09<span class=\"mk-w\"></span></span>修订页面 NewBlog 计 8 次  \r\n<span class=\"mk-dt\">17.06.09<span class=\"mk-w\"></span></span>修订页面 Developers Lab  计划 计 5 次  \r\n<span class=\"mk-dt\">17.06.09<span class=\"mk-updt\"></span></span>删除了 NewBlog 页面中的 V_MENU 分栏  \r\n<span class=\"mk-dt\">17.06.09<span class=\"mk-updt\"></span></span>删除了 NewBlog 页面中的 LoginLogs 按钮  \r\n<span class=\"mk-dt\">17.06.08<span class=\"mk-w\"></span></span>修订页面 17 is running 计 5 次  \r\n<span class=\"mk-dt\">17.06.08<span class=\"mk-mtn\"></span></span>进行了 1 次 zjw 常规备份  \r\n<span class=\"mk-dt\">17.06.07<span class=\"mk-w\"></span></span>修订页面 NewBlog 计 3 次  \r\n<span class=\"mk-dt\">17.06.07<span class=\"mk-updt\"></span></span>删除了 NewBlog 页面中的 phpAdmin数据库管理系统 和 服务器文件管理系统 按钮  \r\n<span class=\"mk-dt\">17.06.07±7<span class=\"mk-updt\"></span></span>更换域名为thaumy.link  \r\n<span class=\"mk-dt\">17.06.07±7<span class=\"mk-updt\"></span></span>改thaumy.ml域名为闲置域名  \r\n<span class=\"mk-dt\">17.06.07<span class=\"mk-updt\"></span></span>更换虚拟主机服务商为 xvmhost ，博客进入 public 版本\r\n\r\n## beta 维护日志(pub1706版本1)(小部分错误)\r\n\r\n<span class=\"mk-dt\">17.06.07<span class=\"mk-updt\"></span></span>停用了主机屋虚拟主机，beta 版本结束  \r\n<span class=\"mk-dt\">17.06.05<span class=\"mk-mtn\"></span></span>进行了 1 次 zjw 常规备份  \r\n<span class=\"mk-dt\">17.06.05±2<span class=\"mk-updt\"></span></span>Sindex 文件夹开始存储 js文件  \r\n<span class=\"mk-dt\">17.06.02<span class=\"mk-updt\"></span></span>减小 Qplayer播放器音乐音量 至 20%  \r\n<span class=\"mk-dt\">17.06.02<span class=\"mk-dbg\"></span></span>修复了 NewBlog页面中的博客运行计时为0 的问题  \r\n<span class=\"mk-dt\">17.05.29->06.04<span class=\"mk-w\"></span></span>修订页面 NewBlog 计 66 次  \r\n<span class=\"mk-dt\">17.05.31<span class=\"mk-mtn\"></span></span>进行了 1 次 zjw 常规备份  \r\n<span class=\"mk-dt\">17.05.30<span class=\"mk-mtn\"></span></span>截至此时，博文在 beta版本 中累计修订 279 次  \r\n<span class=\"mk-dt\">17.05.30<span class=\"mk-updt\"></span></span>更换了 没有特色图片的替代图片  \r\n<span class=\"mk-dt\">17.05.30<span class=\"mk-dbg\"></span></span>修复了 音乐播放器不响应 的问题  \r\n<span class=\"mk-dt\">17.05.29<span class=\"mk-w\"></span></span>删除页面：关于  \r\n<span class=\"mk-dt\">17.05.29<span class=\"mk-w\"></span></span>发布页面：关于  \r\n<span class=\"mk-dt\">17.05.27<span class=\"mk-bug\"></span></span>修复 ajax返回主页时特色图片不加载 的问题未成功  \r\n<span class=\"mk-dt\">17.05.27±10<span class=\"mk-bug\"></span></span>登记问题：浏览器开启缓存的情况下打开博客会应用旧样式  \r\n<span class=\"mk-dt\">17.05.27<span class=\"mk-w\"></span></span>将 Developer\'s Lab计划 页面更名为 Developers Lab  计划  \r\n<span class=\"mk-dt\">17.05.27<span class=\"mk-w\"></span></span>将 Developers Lab  计划 页面更名为 Developer\'s Lab计划  \r\n<span class=\"mk-dt\">17.05.27<span class=\"mk-w\"></span></span>发布了页面：Developers Lab  计划  \r\n<span class=\"mk-dt\">17.05.27<span class=\"mk-w\"></span></span>将 我的工作室 页面更名为 MyStudio  \r\n<span class=\"mk-dt\">17.05.27<span class=\"mk-w\"></span></span>将 新的Blog 页面更名为 NewBlog  \r\n<span class=\"mk-dt\">17.05.21<span class=\"mk-updt\"></span></span>网易云音乐停止提供歌单音乐解析服务，所有音乐由 Sindex 播放  \r\n<span class=\"mk-dt\">17.05.21±2<span class=\"mk-updt\"></span></span>建立 Sindex 文件夹，用于存储备用的网易云音乐文件  \r\n<span class=\"mk-dt\">17.05.20<span class=\"mk-w\"></span></span>上传了 StdLib1.07 的宣传画(1pic)  \r\n<span class=\"mk-dt\">17.05.20<span class=\"mk-w\"></span></span>将 初始化17 页面更名为 17正在运行  \r\n<span class=\"mk-dt\">17.05.20<span class=\"mk-w\"></span></span>发布了 StdLib1.07pub  \r\n<span class=\"mk-dt\">17.04.29<span class=\"mk-mtn\"></span></span>进行了 1 次 zjw 常规备份  \r\n<span class=\"mk-dt\">17.04.29±3<span class=\"mk-mtn\"></span></span>未知维护  \r\n<span class=\"mk-dt\">17.04.22<span class=\"mk-mtn\"></span></span>截至此时，博文在 beta版本 中累计修订 213±2 次  \r\n<span class=\"mk-dt\">17.04.22<span class=\"mk-w\"></span></span>上传了 StdLib1.06 的宣传画(1pic)  \r\n<span class=\"mk-dt\">17.04.22<span class=\"mk-w\"></span></span>发布了 StdLib1.06puba1  \r\n<span class=\"mk-dt\">17.04.21<span class=\"mk-w\"></span></span>发布了 StdLib1.06pub  \r\n<span class=\"mk-dt\">17.04.02<span class=\"mk-mtn\"></span></span>截至此时，博文在 beta版本 中累计修订 200±2 次  \r\n<span class=\"mk-dt\">17.04.15<span class=\"mk-mtn\"></span></span>进行了 1 次 zjw 常规备份  \r\n<span class=\"mk-dt\">17.04.15±10<span class=\"mk-updt\"></span></span>建立 indexStd 文件夹，用于存储公开的网页文档、实验性项目、待应用的网页特效  \r\n<span class=\"mk-dt\">17.04.02<span class=\"mk-w\"></span></span>上传了 StdLib1.03 的宣传画(1pic)  \r\n<span class=\"mk-dt\">17.04.02<span class=\"mk-w\"></span></span>上传了 StdLib1.04 和 StdLib1.05 的宣传画(2pic)  \r\n<span class=\"mk-dt\">17.02.19<span class=\"mk-w\"></span></span>发布了 StdLib1.05pub  \r\n<span class=\"mk-dt\">17.02.18<span class=\"mk-w\"></span></span>发布了 StdLib1.04pub  \r\n<span class=\"mk-dt\">17.02.02<span class=\"mk-mtn\"></span></span>进行了 1 次 zjw 常规备份  \r\n<span class=\"mk-dt\">17.02.02<span class=\"mk-mtn\"></span></span>截至此时，博文在 beta版本 中累计修订 139±2 次  \r\n<span class=\"mk-dt\">17.01.27<span class=\"mk-updt\"></span></span>建立了ActionAi子文件夹，以存储一些网页特效  \r\n<span class=\"mk-dt\">17.1.28<span class=\"mk-w\"></span></span>发布日志：D78  \r\n<span class=\"mk-dt\">17.01.28<span class=\"mk-w\"></span></span>发布文章：新年快乐！  \r\n<span class=\"mk-dt\">17.01.27<span class=\"mk-mtn\"></span></span>进行了 1 次 zjw 常规备份  \r\n<span class=\"mk-dt\">17.01.27±10<span class=\"mk-updt\"></span></span>建立 ThaumyFiles 文件夹，以存储一些网页特效  \r\n<span class=\"mk-dt\">17.01.26<span class=\"mk-mtn\"></span></span>截至此时，博文在 beta版本 中累计修订 128 次  \r\n<span class=\"mk-dt\">17.01.26<span class=\"mk-w\"></span></span>将 欢迎页[向导] 更名为 欢迎页&主引导  \r\n<span class=\"mk-dt\">17.01.26<span class=\"mk-w\"></span></span>发布了 StdLib1.03pub  \r\n<span class=\"mk-dt\">17.01.25<span class=\"mk-w\"></span></span>发布了 StdLib1.03a2  \r\n<span class=\"mk-dt\">17.01.21<span class=\"mk-w\"></span></span>发布了 StdLib1.03a1  \r\n<span class=\"mk-dt\">17.01.21<span class=\"mk-w\"></span></span>发布 StdLib1.03beta（该版本的第一发布时间为17.1.20）  \r\n<span class=\"mk-dt\">17.01.13<span class=\"mk-w\"></span></span>将 工作室招募 页面更名为 我的工作室  \r\n<span class=\"mk-dt\">17.01.12<span class=\"mk-updt\"></span></span>添加插件：Crayon  \r\n<span class=\"mk-dt\">17.01.12<span class=\"mk-updt\"></span></span>更换博客主题从 personal 到 personal2.2，此时 press 版本为 4.7  \r\n<span class=\"mk-dt\">17.01.07<span class=\"mk-w\"></span></span>发布了 欢迎页[向导]  \r\n<span class=\"mk-dt\">17.01.07<span class=\"mk-w\"></span></span>发布了页面：初始化17  \r\n<span class=\"mk-dt\">17.01.04<span class=\"mk-w\"></span></span>将 我的工作室 页面更名为 工作室招募  \r\n<span class=\"mk-dt\">17.01.01<span class=\"mk-w\"></span></span>发布了页面：我的工作室  \r\n<span class=\"mk-dt\">16.12.26<span class=\"mk-w\"></span></span>发布了日志：D77  \r\n<span class=\"mk-dt\">16.12.26<span class=\"mk-updt\"></span></span>恢复了 www.thaumy.ml 和 cool.thaumy.ml 的域名解析  \r\n<span class=\"mk-dt\">16.12.23<span class=\"mk-w\"></span></span>发布了日志：B11  \r\n<span class=\"mk-dt\">16.12.19<span class=\"mk-w\"></span></span>发布了日志：B10  \r\n<span class=\"mk-dt\">16.12.18<span class=\"mk-w\"></span></span>发布了日志：D48 ，E48  \r\n<span class=\"mk-dt\">16.12.17<span class=\"mk-w\"></span></span>发布了页面：新的Blog  \r\n<span class=\"mk-dt\">16.12.17<span class=\"mk-updt\"></span></span>博客域名由 aumy.ml 更改为 thaumy.ml  \r\n<span class=\"mk-dt\">16.12.17<span class=\"mk-updt\"></span></span>更换虚拟主机服务商为 主机屋 ，博客进入 beta 版本  \r\n<span class=\"mk-dt\">16.12.17<span class=\"mk-updt\"></span></span>停用 hostinger 虚拟主机，alpha 版本结束\r\n\r\n## alpha 维护日志(凭借回忆建立的日志，信息非常模糊甚至错误)\r\n\r\n<span class=\"mk-dt\">16.11.01<span class=\"mk-updt\"></span></span>部分回忆报告说明这期间更换了 personal 主题，并且开启了 ajax ，使用 Qplayer 播放器  \r\n<span class=\"mk-dt\">16.10.01<span class=\"mk-updt\"></span></span>部分回忆报告说明这期间添加了网易云外链播放器  \r\n<span class=\"mk-dt\">16.09.01<span class=\"mk-mtn\"></span></span>博客长期处于停止更新状态  \r\n<span class=\"mk-dt\">16.08.25<span class=\"mk-updt\"></span></span>更新部分文章，配置插件，自定义模板内容等  \r\n<span class=\"mk-dt\">16.08.15->25<span class=\"mk-updt\"></span></span>使用 aumy.ml 作为博客域名，此时 press 版本为 4.5.?  \r\n<span class=\"mk-dt\">16.08.15->25<span class=\"mk-updt\"></span></span>博客建立，采用 hostinger 虚拟主机，使用未知主题，博客进入 alpha 版本'),(12377,'噼里啪啦第六开发版现可用','我们的站点现以理性与逻辑驱动','[//创建日期]:2019-03-09/22:49:33\r\n[//编辑日期]:2019-04-14/06:08:43\r\n[//文章概要]:我们的站点现以理性与逻辑驱动\r\n[//归档]:技术归档\r\n[//标签]:前端开发$pilipala工程\r\n[//封面]:![pilipalabeta6.png](http://thblog-img.test.upcdn.net/md-img/pilipalabeta6.png)\r\n\r\n> 历经三个开发版，我们推出了极具运行效能的噼里啪啦博客系统，第六开发的新特性非常多，严谨的逻辑使它成为高速博客系统的不二之选。\r\n\r\n\r\n## <font color=\"DarkTurquoise\">PILIPALA第六开发版（PILIPALA Beta6 LTS）</font>\r\n\r\n* 应用了第三代对象式架构，将整个网站系统的耦合度显著降低，极大地避免了各部分的彼此牵连，并降低了逻辑复杂度。\r\n* 提供了主题编写支持，用户可以根据需要自行编写主题、更改网站样式。\r\n* 采用主页映射，将站点首页映射到启动页，利于简化链接复杂度。\r\n* 废除webio（网页IO桥），全局数据处理部署于webservice，简化了数据操作逻辑。\r\n* 去除了服务端ajax支持，因为它会大幅提升现有架构复杂度。\r\n* 该版本使用WebApplication代替WebSite建筑，因为前者提供了更佳的MSBuild支持。\r\n\r\n## <font color=\"DarkTurquoise\">氛元素主题190213（fen）</font>\r\n\r\n* 提供了基于JQuery的Ajax支持，减轻了服务端业务压力，无刷新加载提升了用户体验。\r\n* 响应式网页设计使得氛元素主题能兼容任何屏幕规格的浏览设备，移动端最佳的浏览设备为 iPad Pro，桌面端最佳分辨率为1080p。\r\n* 为第三代对象式架构提供了UI及命名支持，优化了css分类。\r\n* 数据层操作全部移交服务端，提升了安全系数。\r\n* 删除了ReadOnly条带，因为该样式不利于数据层整合。\r\n* 半透明的UI设计，与背景图搭配提升了浏览体验。\r\n* 新增功能：点击头像可返回首页，推进式加载按钮可用（该按钮有利于减轻服务端数据库遍历压力）。\r\n\r\n## <font color=\"DarkTurquoise\">StudioLibrary1.14LTS的全面支持</font>\r\n\r\n* 名称缩写由StdLib（已经使用了3年）展写为StudioLibrary，缩写为SL。\r\n* 重构的FutabaRio架构对日益增长的业务负担提供了更易理解的命名空间工作分配。\r\n* 新增的nsguide.cs文件描述了各个命名空间的父子关系，并在此对命名空间作集中注释，利于代码的简明。\r\n* 删除了实际应用不大的exe文件运行类、PixelGraphic转码类（提供了一种基于图形和16进制的加密算法）、ArrayAlgorithm算法类（提供了一种基于矩阵的加密算法），这有利于SL的业务专注。\r\n* Sql参数化查询结构、Sql连接签名结构、Sql查询描述结构、Xml节点描述结构重新命名，部分内置访问器优化，使得开发更加高效。\r\n* 噼里啪啦命名空间全部重构，应用了第三代对象式架构以全面兼容palaDB，使其完全脱离业务实现架构束缚，为开发及向后兼容与维护提供便利。\r\n* 采用大量接口约束噼里啪啦方法与结构，明确了各个方法的分工和彼此联系。\r\n* 删除了暂时没有开发价值的多线程操作类，因为应用这一操作类会为线程操作带来不必要的逻辑负担。\r\n* 优化注释内容，注意到//行注释不够精准严格，因此新增的代码注释全部采用了/*  */块注释。\r\n\r\n## <font color=\"DarkTurquoise\">palaDB全部重构</font>\r\n\r\n* 文本数据采用三分库设计（灵感来源于AKG K3003），达到了逻辑简明与业务高效的完美契合。\r\n* 删除原有palaRoot（根级数据表）和palaUser（用户数据表），两者精简后兼为一表，提升了数据整合度。\r\n* 视图部分全部重构，对StudioLibrary对象式架构提供基层支持\r\n* 数据库函数大量精简，采用父子级和归类查询思路，简洁明了的函数设计很好地提升了开发效率。\r\n'),(12379,'句摘','艺术家的高度概括','[//创建日期]:2019-04-05/17:46:42\r\n[//编辑日期]:2019-05-18/17:46:44\r\n[//文章概要]:艺术家的高度概括\r\n[//归档]:生涯归档\r\n[//标签]:签名$语录\r\n[//封面]:![]()\r\n\r\n<span class=\"wd-dt2\">19.05.01</span> 刻鹄不成尚类鹜  \r\n<span class=\"wd-dt2\">19.03.03</span> 坐而言不如起而行（白裤裆寒冬一鸡）  \r\n<span class=\"wd-dt2\">19.01.27</span> 经常需要运用他的知识的人，怎么能够很好地记得自己的无知呢？————《瓦尔登湖》  \r\n<span class=\"wd-dt2\">19.01.27</span> 人们更喜欢在互相恭维的泥淖中打滚  \r\n<span class=\"wd-dt2\">18.11.09</span> 我们选择希望  \r\n<span class=\"wd-dt2\">18.08.10</span> 立即产生付诸实际的价值  \r\n<span class=\"wd-dt2\">17.10.04</span> 为自由而牺牲自由  \r\n<span class=\"wd-dt2\">17.07.23</span> 深藏不露是一种卓越的才能  \r\n<span class=\"wd-dt2\">17.07.19</span> 启蒙导致愚昧，知识带来无知  \r\n<span class=\"wd-dt2\">17.02.03</span> 志不同道不合不相为谋  \r\n<span class=\"wd-dt2\">16.12.10</span> 技术宅，拯救世界  \r\n<span class=\"wd-dt2\">16.05.09</span> 学无止，思无界，行无疆  '),(12380,'水瓜社成立','跨世纪工程','[//创建日期]:2019-04-13/23:51:00\r\n[//编辑日期]:2019-05-01/06:00:00\r\n[//文章概要]:跨世纪工程\r\n[//归档]:生涯归档\r\n[//标签]:水瓜社$工作室\r\n[//封面]:![h2omelonsocie.png](http://thblog-img.test.upcdn.net/md-img/h2omelonsocie.jpg)\r\n\r\n# 2019.04.05，这是水瓜的生日\r\n\r\n### 经过长达两个周的讨论，星魂（GXH）、Thaumy、jss确定了最终工作室命名：水瓜社\r\n\r\n![melonBoy.jpg](http://thblog-img.test.upcdn.net/md-img/melonBoy.jpg)\r\n这个名字来源于这个表情包，水瓜社的吉祥物  \r\n至于为什么叫水瓜而不叫西瓜，道理很简单，西瓜是一个很不错的名字，不可避免地产生了重名。\r\n\r\n### <span style=\"color:#48D1CC\">H2OMelonSocie</span>    ————    水瓜社的英文名\r\n\r\n很简单，watermelon。不可避免地产生了重名，所以变成了H2OMelon。  \r\nsociety这个单词并不是某某会社的意思，我们取了它的前几个字母：soice，作为“社”的意思。  \r\n它读起来很方便。\r\n\r\n## 第一时间，我们产生了诸多支部。\r\n\r\n<img alt=\"melonedBank.png\" style=\"width:90%\" src=\"http://thblog-img.test.upcdn.net/md-img/melonedBank.png\">\r\n\r\n### <span style=\"color:#48D1CC\">MelonedBank</span>  ————    水瓜储蓄  \r\n\r\n社内开销不可避免，水瓜储蓄应运而生。  \r\n我们三人每人投资了为数不多的几元钱，兴办了水瓜标准储蓄银行，以保证水瓜的日常运营开销。  \r\n水瓜基金不属于任何成员，当所有成员同意时，水瓜基金才被允许征用。\r\n\r\n# 917328480 水瓜社群\r\n\r\n这个QQ群原来是为了某三个不法分子的行动而成立的，幸运的是，他们已经改邪归正，正思索为这个社会贡献点什么。  \r\n\r\n### ![vanBoy.jpg](http://thblog-img.test.upcdn.net/md-img/vanBoy.jpg)现在它变成了水瓜们的家。\r\n\r\n### 感兴趣的话，你可以可以来和瓜友们聊聊天。。。'),(12381,'Thaumy人设','Thaumy的反Thaumy策略','[//创建日期]:2019-04-13/23:51:04\r\n[//编辑日期]:2019-04-13/23:51:10\r\n[//文章概要]:Thaumy的反Thaumy策略\r\n[//归档]:生涯归档\r\n[//标签]:Thaumy$二次元\r\n[//封面]:![]()\r\n\r\n\r\n# 孤僻内向的双格病娇\r\n\r\n## <span class=\"wd-dt4\">P1</span> <span style=\"color:#48D1CC\">基本设定</span>\r\n\r\n很少和陌生人交谈来往。对于他人的主动接触显得十分敏感，不会主动透露自己的兴趣爱好（如果不被主动询问或者有特殊情况的话）。好胜心极强，与更优秀的人接触时有极强的阴谋论心理（自动将对方的一切行为脑补成与自己敌对的战略举措），并且表现得极为冷漠。遭遇困境时会发生黑化反应，将解决目前问题列为最高优先级，此期间会丧失基本人格。遇到高兴的事情时黑化会慢慢解除，表现为乐于或主动和较为熟悉的人交流（陌生人介入的最佳时机）。\r\n\r\n## <span class=\"wd-dt4\">P2</span> <span style=\"color:#48D1CC\">设定详情</span>\r\n\r\n### <span style=\"color:#9ACD32\">性格表征</span>\r\n\r\n认为理想十分重要，对自己的信仰坚定不移，这使得Thaumy在应对长远问题时往往采取积极心态，使用步进方式解决问题。厌恶不务实的人、言行不一致的人，将“这个计划明天再来实现”的人视作无可救药之人，Thaumy认为有事情现在就要去办，为之不断努力比夸夸其谈靠谱得多。。\r\n\r\n倾向于主动指出错误，但是对于多次跌倒在一块石头上的人，会表现出关心程度逐渐淡出，并将其视作无可救药之人。喜欢积极心态的人，讨厌过分的消极讨论人生，主动回避与自己作风完全相反的人（真的是很完全时才会触发）。\r\n\r\n### <span style=\"color:#FF8C00\">兴趣爱好</span>\r\n\r\n画画（仅限电脑数位板绘，绘画水平有限，按需绘画。）\r\n\r\n打代码（主修语言C#，对硬件开发、网页设计、Windows程序、数据库等方面接触时间较长，目前打算学习人工智能。）  \r\n\r\n某些设计（例如制作某幅宣传画、编写某个UI、设计某个LOGO图样：在这些方面，Thaumy有独到的见解。）  \r\n\r\n# SP：其他属性\r\n\r\n### <span style=\"color:#48D1CC\">十分差劲的全栈</span>\r\n\r\n在建模、板绘、视频、音乐、编程、硬件、艺术设计等领域都有不同程度的涉猎，<span class=\"wd-heimu\">有了搜索引擎的支持</span>，Thaumy可以短时间内在任何一方面按需做出自己满意的作品。<span class=\"wd-heimu\">某孙子王也是</span>\r\n\r\n### <span style=\"color:#48D1CC\">与生俱来的强迫症</span>\r\n\r\n即使一个像素点的差别，Thaumy也会尽可能地考虑到它出现的合理性。这样的性格特点让使得Thaumy过分地注重细节，宁可用过低的时效比换取自己满意的成果。\r\n\r\n### <span style=\"color:#48D1CC\">我是一位艺术家</span>\r\n\r\nThaumny总是有着独到的见解。丰富的想象力和大胆的尝试让理想和现实达成共识。\r\n>编程是门艺术，而我，是艺术家————Thaumy\r\n\r\n### <span style=\"color:#48D1CC\">24x7x365宅</span>\r\n\r\n说到宅，没人能比得上Thaumy。————不应过多解释，这是公认的事实。'),(12382,'关于pilipala','一个响亮的名字!','[//创建日期]:2019-04-14/06:58:04\r\n[//编辑日期]:2019-06-06/17:16:55\r\n[//文章概要]:一个响亮的名字!\r\n[//归档]:技术归档\r\n[//标签]:前端开发$pilipala工程\r\n[//封面]:![aboutPilipala.png](http://thblog-img.test.upcdn.net/md-img/aboutPilipala.png)\r\n\r\n## <span style=\"color:#3A65EB\">噼里啪啦 ———— 一个极为先进的博客系统</span>\r\n\r\n这是一个响亮的名字！  \r\n为实现高效率博客，我开发了基于ASP.NET的博客系统，以噼里啪啦命名。  \r\n它是一个具有支持主题、精简高效、部署方便等的特性的工程，使用C#开发。  \r\n处于多重考虑，我们为该博客使用了MySql数据库，而不是MSSql。\r\n\r\n### <span style=\"color:#53A0FE\">为什么要开发pilipala？</span>\r\n\r\nWordpress是一个非常不错的博客系统，丰富的生态为它带来了很好的市场。  \r\n我尝试Wordpress的主题与插件，但是Wordpress臃肿的代码和复杂的函数使我不得不放弃。  \r\n之后我尝试了Typecho。  \r\n很快我便发现，php这种语言并不适合大型项目的开发：弱类型、版本之间的不兼容性、不完全的面向对象支持、不理想的运行效率、低效率的DeBug支持......  \r\n我认为，是时候出现一个新的博客系统了。  \r\n3年前，博客重构计划启动。\r\n\r\n### <span style=\"color:#53A0FE\">StudioLibrary内核的全速驱动</span>\r\n\r\n<img alt=\"stdlib.jpg\" style=\"width:90%\" src=\"http://thblog-img.test.upcdn.net/md-img/stdlib.jpg\">\r\n\r\n————原名StdLib，它以极少的代码量，驱动了pilipala的数据与业务层。\r\n\r\n它原本是为精简桌面程序开发过程而开发的类库，但现在它的使命是全速驱动pilipala。  \r\n得益于C#的强大支持，这个内核的代码十分规范，.NET的强大编译器让能力与责任达成共识。  \r\n\r\n### <span style=\"color:#53A0FE\">开源，让更多的开发者乐在其中</span>\r\n\r\n我们的项目在GitHub开源，目前已达6个版本迭代。  \r\n点击这个超链接按钮，你可以于GitHub下载pilipala源代码：\r\n<a class=\"wd-linked\" href=\"https://github.com/Thaumy/PILIPALA\">PILIPALA on GitHub</a>\r\n\r\n### <span style=\"color:#53A0FE\">持续动力迭代</span>\r\n\r\n每个周pilipala都会进行更新，每个季度pilipala都会对上一阶段的问题进行汇总，将实用的新特性纳入新版本的开发列表之中。  \r\n每个版本的发布都伴随着新的pilipala功能，不断带来性能优化和更加强大的内核支持。\r\n\r\n### <span style=\"color:#53A0FE\">它与众不同，备受瞩目</span>\r\n\r\n我们将ASP.NET(C#)与MySql组合，从高效和高可靠中同时收益，出色的面向对象式架构让pilipala成为抽象开发中的佼佼者。  \r\n得益于强大的MarkDown，即使是再复杂的文章，pilipala也能出色展现。  \r\n丰富且不断更新的内核函数让每一行代码的精简与高效完美契合。\r\n\r\n### <span style=\"color:#53A0FE\">这个世界需要英雄</span>\r\n\r\n噼里啪啦由水瓜社的Thaumy开发运营，你可以通过QQ：1951327500了解它的详细开发过程，或着手它的下一版本开发。  \r\n我期待更多的开发者加入到这个颠覆性的项目当中。'),(12383,'友情链接','一拍即合的共识','<link rel=\"stylesheet\" type=\"text/css\" href=\"http://raw.githack.com/Thaumy/Blog/master/build/css/friendlink.css\">\r\n\r\n<div class=\"fl-box\" onclick=\"window.open(\'https://www.hodpel.top\')\">\r\n    <img src=\"https://secure.gravatar.com/avatar/888c74c10b64f6b802580b93741e9a5d?s=100&d=mm&r=g\" alt=\"\" />\r\n    <div class=\"fl-nickname\">Hodpel(暂不可用)</div>\r\n    <div class=\"fl-signature\">I\'m D.K.Hodpel.</div>\r\n</div>\r\n\r\n## 即将上线的站点\r\n\r\n<div class=\"fl-box\">\r\n    <img src=\"http://thblog-img.test.upcdn.net/md-img/h2omsocie.png\" alt=\"\" />\r\n    <div class=\"fl-nickname\">水瓜社</div>\r\n    <div class=\"fl-signature\">即将上线</div>\r\n</div>\r\n\r\n## ——关于友链——\r\n\r\n <span style=\"color: #ff9900;\">你也想加入友链吗？</span>\r\n \r\n那就按照以下示例发送邮件到 <span class=\"wd-dt1\">Studio_ai@outlook.com</span> 或者直接留言给我的QQ <span class=\"wd-dt1\">1951327599</span></span>\r\n \r\n它不产生任何费用o(*￣▽￣*)ブ！\r\n\r\n <span style=\"color: #00ccff;\">只需要在邮件内容里填写：</span>  \r\n\r\n昵称：Thaumy  \r\n签名：哈喽~！  \r\n博客地址：http://www.thaumy.link/  \r\n86x86大小的头像地址：https://s.gravatar.com/avatar/486d31af2eaae3cd3bb4f8ba81dc9e93?s=80&r=x  \r\n \r\n <span style=\"color: #00ccff;\">如果您没有可用的头像地址，那么请加一个128x128大小的头像图片附件到邮件里面，如果实在没有头像，那么我们会根据您的昵称的首字母给您设置一个彩色字母头像</span>\r\n\r\n<span style=\"color: #ff6600;\">上面的邮件将在7日之内得到处理，得到这样的效果：</span>\r\n <br>\r\n\r\n<div class=\"fl-box\" onclick=\"window.open(\'http://www.thaumy.cn\')\">\r\n    <img src=\"http://thblog-img.test.upcdn.net/md-img/thaumy_avt.png\" alt=\"\" />\r\n    <div class=\"fl-nickname\">Thaumy</div>\r\n    <div class=\"fl-signature\">哈喽~！</div>\r\n</div>'),(12384,'欢迎页&主引导','小破站的骄傲','[//创建日期]:2019-05-11/18:18:36\r\n[//编辑日期]:2019-05-11/18:18:36\r\n[//文章概要]:小破站的骄傲\r\n[//归档]:引导\r\n[//标签]:引导\r\n[//封面]:![]()\r\n\r\n<ul>\r\n  	<li><span style=\"color: #ff6600;\">前言</span></li>\r\n </ul>\r\n<span style=\"color: #333333;\">欢迎来到我的BLOG！在这里你将看到我的往期文章、最新动态和富有生机的内容。致力于实现最佳的用户体验，保证大多数访客都能从中有所裨益。如果您对我的工作感兴趣，或是对该站点的维护和优化有更好的点子，都可以咨询我的邮箱(Studio_ai@outlook.com)。我欢迎每一个访客的留言，在这里您有什么想法都可大胆评论，不必拘束。</span>\r\n <ul>\r\n  	<li><span style=\"color: #ff6600;\">访客承诺</span></li>\r\n </ul>\r\n<span style=\"color: #333333;\">当您浏览除本页外所有的博客内容时，代表您同意本文的所有约定并会以实际行动履行。如果您对这里的内容有不满意处或是有更好的提议，欢迎咨询我的邮箱。</span>\r\n <ul>\r\n  	<li><span style=\"color: #ff6600;\">文章归档与先行测试</span></li>\r\n </ul>\r\n<span style=\"color: #333333;\">对于过于老旧的内容，我很难整理思路并进行日常维护。所以，博客中不能评论的内容大多数是不会再进行维护的内容。当然，少数的试验性文章由于决策和考究有失周全，所以也不会提供评论的选项。请理解我们的这种行为，因为在某些情况下，片面的评价会带来不好的用户体验。当然，所有的不满之处都可以发送到我的邮箱，相信你可以得到一个满意的答复。</span>\r\n <ul>\r\n  	<li><span style=\"color: #ff6600;\">评价体系</span></li>\r\n </ul>\r\n<span style=\"color: #333333;\">访客的第一次评价是十分重要的。通常情况下，陌生访客的第一次评价会经过人工审核。审核通过后，该访客日后的评论才会自动显示出来。虽然有少许的麻烦，但是这样做可以有效的过滤掉失当评论和广告内容。</span>\r\n <ul>\r\n  	<li><span style=\"color: #ff6600;\">知识产权</span></li>\r\n </ul>\r\n<span style=\"color: #333333;\">请尊重博主的智力成果，在引用我文章的独创内容时，应标明原作者信息或是原文地址。任何未经授权的盈利性转载或拷贝都将被视为侵权行为，情节严重者将承担相应的法律责任。</span>\r\n <ul>\r\n  	<li><span style=\"color: #ff6600;\">结尾</span></li>\r\n </ul>\r\n<span style=\"color: #333333;\">呐，就这些啦~......最后祝你看的愉快~！</span>'),(12385,'赞助&支持','积土成山，风雨兴焉','[//创建日期]:2019-05-25/21:55:42\r\n[//编辑日期]:2019-05-25/21:55:42\r\n[//文章概要]:积土成山，风雨兴焉\r\n[//归档]:水瓜储蓄\r\n[//标签]:水瓜储蓄事务局\r\n[//封面]:![]()\r\n\r\n## 欢迎来到水瓜储蓄赞助页\r\n\r\n水瓜社的发展离不开每一位成员的努力，他们为大水瓜的建设贡献颇多。  \r\n\r\n### 立即加入投资行列，为水瓜社的发展注入持久化动力！\r\n\r\n## <span class=\"wd-dt1\">SP1</span> 水瓜标准基金\r\n\r\n水瓜标准基金，由水瓜储蓄全盘运营。  \r\n本基金的所有赞助款项均被用作水瓜社的集体开销（例如水瓜社网站的建设费用），由水瓜成员集体管理。  \r\n\r\n### 扫描下方二维码以赞助此项目  <span class=\"wd-dt2\">1 RMB</span>\r\n\r\n<img src=\"http://thblog-img.test.upcdn.net/md-img/1rmb_pay.jpg\" alt=\"\" />\r\n\r\n## <span class=\"wd-dt1\">SP2</span> 水瓜会员\r\n\r\n是的，如果你为此项目冲了钱，正如你想象的那样，你将成为我们水瓜社的一个会员。  \r\n此会员没有什么功能，因为我们的业务还不够壮大，之所以把它列在这里，嘿嘿嘿。。。  \r\n\r\n### 扫描下方二维码以赞助此项目 <span class=\"wd-dt2\">8 RMB</span>\r\n\r\n<img src=\"http://thblog-img.test.upcdn.net/md-img/8rmb_pay.jpg\" alt=\"\" />\r\n\r\n## <span class=\"wd-dt1\">SP3</span> 水瓜有偿支持\r\n\r\n水瓜有偿支持提供了涵盖视频、建模、音频、编程、作图、UI设计等方面的解决方案支持。  \r\n你的需求就是我们的需求。\r\n\r\n### 若需要有偿支持，可咨询咨询水瓜社QQ群：917328480'),(12386,'PILIPALA BETA7愿景','抱住辉夜酱！','[//创建日期]:2019-05-26/00:39:42\r\n[//编辑日期]:2019-06-29/19:30:42\r\n[//文章概要]:抱住辉夜酱！\r\n[//归档]:技术归档\r\n[//标签]:噼里啪啦工程\r\n[//封面]:![](http://thblog-img.test.upcdn.net/md-img/pilipalabeta7preview.jpg)\r\n\r\n## <span style=\"color:#53A0FE\">第七版推进</span>\r\n\r\n到目前，pilipala beta6 已经完成了六个版本的迭代。我们的开发工作也将进入下一阶段。  \r\npilipala beta7 将提供十个步进版本的迭代更新，长达三个季度。  \r\n此版本将于2019年暑期进入开发流程，此前，我们可爱的第六版将完成第十次步进。\r\n\r\n<span class=\"wd-dt2\">计划修正：</span>  \r\n<span class=\"mk-dt\">19.06.29<span class=\"mk-bug\"></span></span>由于工程调整，beta7将于beta6第八步进后进入开发流程\r\n\r\n### <span style=\"color:#48D1CC\">pilipala项目的有序进行：</span>\r\n\r\n* beta1 建立了可供浏览的网站系统\r\n* beta2 对上一代版本的不足之处加以优化\r\n* beta3 新的结构式架构\r\n* beta4 优化了上一代架构\r\n* beta5 结构式架构的最后一次优化\r\n* beta6 推出对象式架构，开发过程清晰明了，运行效率达到新高\r\n* beta7 将进一步提高系统的开发效能，使用模组化设计思路\r\n\r\n## <span style=\"color:#53A0FE\">以Kaguya架构</span>\r\n\r\n我们计划在beta7上进一步优化beta6的稳定性和兼容性，它将继承beta6优异的FutabaRio对象式架构。Kaguya架构将提供更多开发选项，进一步降低耦合度。\r\n\r\n## <span style=\"color:#53A0FE\">备选更新方案</span>\r\n\r\n支持插件  \r\n降低主题的编写难度  \r\n冗余数据分模块处理，以进一步精简数据库  \r\n优化现有ajax解决方案  \r\n使用内存查询来提升数据处理速度，用户的所有操作在会话期间均不会访问数据库。  \r\n降低部署难度  \r\n优化链接  \r\n提供更安全的文章访问级别  \r\n\r\n## <span style=\"color:#53A0FE\">其他衍生项目</span>\r\n\r\n基于pilipala beta7 的水瓜社官网  \r\n推出企业版氛主题  '),(12387,'我','刻鹄不成尚类鹜','喜欢二次元，偶尔写写程序，很有成就感。就这么一个人。  \r\n\r\n目前是个高三在读学生。  \r\n于2020夏高考。\r\n\r\n<span style=\"font-size:20px\" class=\"wd-dt1\">社交</span>  \r\n\r\n网易云：Thaumy  \r\nqq：1951327599  \r\ngithub：Thaumy  \r\n其他社交账号也不是没有，显示不出多大个性，这里就不写了。  \r\n\r\n<span style=\"font-size:20px\" class=\"wd-dt1\">二次元</span>  \r\n\r\n追过很多番。  \r\n这些优秀的作品对我的世界观产生了不可逆转的影响，值得每个人一看。\r\n\r\n<span style=\"font-size:20px\" class=\"wd-dt1\">日常</span>  \r\n\r\n.net编程，微软老爹的支持很给力。偶尔写两个桌面小程序，但目前主要是网页的开发。比较熟悉的语言有c#、c、html、css、sql，不敢说精通，但是起码能满足自己开发的需要了。其他的也能看得懂，例如c++、java、js之类，但我在这块是没有开发经验的，只是有的时候遇到会改一改便是。  \r\n我的FX8300有一个炽热的心，夏天要开窗，不过冬天跑跑游戏能取暖！想开次r6全高玩上几把，可我超频才摸着60帧的屁股。。。显示器是二手的，有二联（1080p&1440x900)，但色彩不理想，作图色差很坑爹。目前只开一个 。  \r\n\r\n<span class=\"mk-dt\">19.06.29<span class=\"mk-updt\"></span></span>目前更换了一台2K显示器，色彩优秀，我现在不必烦恼各端的色彩问题。这块屏幕极大地增加了我的开发效率，来自SAMSUNG的SpaceMonitor。\r\n\r\n<span class=\"mk-dt\">19.10.19<span class=\"mk-updt\"></span></span>经过一番激烈的思想斗争，我决定戒掉电脑游戏（注意仅仅是电脑！虽然我手机里也没游戏......）\r\n\r\n烧过耳机键盘，目前最大的愿望是买台适合自己的笔电，但是现在的市场产品要么贵，要么性能不达标。  \r\n\r\n<span class=\"mk-dt\">19.10.19<span class=\"mk-updt\"></span></span>联想的YOGA C940是真的漂亮，高考完我一定要买~！\r\n\r\n<span style=\"font-size:20px\" class=\"wd-dt1\">其他</span>  \r\n\r\n 我认为现在中国的教育制度是存在严重问题的，教育这个东西，教书育人。但是现在的学校是培养出来的畸形却越来越多，很多学生被教育洗脑了，他们的思维很狭隘。  \r\n 不是抵触学习，只是看到身边的一些同学，感到很可怜罢了。\r\n\r\n### 附录1：追番列表\r\n\r\n| 番名 | 评级 | 备注 |\r\n| ---- | ---- | ---- |\r\n| ALDNOAH.ZERO | ⭐⭐⭐⭐⭐ | 入宅作 |\r\n| 埃罗芒阿老师 | ⭐⭐⭐⭐⭐ |\r\n| 未闻花名 | ⭐⭐⭐⭐⭐ |\r\n| EVANGELION | ⭐⭐⭐⭐⭐ |\r\n| 進撃の巨人 | ⭐⭐⭐⭐⭐ |\r\n| 欢迎来到实力主义至上的教室 | ⭐⭐⭐⭐ |\r\n| Re：CREATORS | ⭐⭐⭐⭐ |\r\n| 君の名 | ⭐⭐⭐⭐ |\r\n| Re：从零开始的异世界生活 | ⭐⭐⭐⭐ |\r\n| 笑面推销员 | ⭐⭐⭐⭐ |\r\n| 青春猪头少年不会梦到兔女郎学姐 | ⭐⭐⭐⭐ |\r\n| 迷域行者 | ⭐⭐⭐⭐ |\r\n| 在下坂本，有何贵干？ | ⭐⭐⭐ |\r\n| 甲铁城的卡巴内瑞 | ⭐⭐⭐ |\r\n| 骑士&魔法 | ⭐⭐⭐ |\r\n| 珈百璃的堕落 | ⭐⭐⭐ |\r\n| 龙与虎 | ⭐⭐⭐ |\r\n| 齐木楠雄的灾难 | ⭐⭐⭐ |\r\n| 阿童木起源 | ⭐⭐⭐ |\r\n| 后街女孩 | ⭐⭐⭐ |\r\n| 血界战线 | ⭐⭐⭐ |\r\n| 小林家的龙女仆 | ⭐⭐ | 人设灵感源 |\r\n| 可塑性记忆 | ⭐⭐ |\r\n| 斩服少女 | ⭐⭐ |\r\n| 刺客伍六七 | ⭐⭐ |\r\n| 骇客娃娃 | ⭐⭐ |\r\n| 干物埋 | ⭐⭐ |\r\n| 来自风平浪静的明天 | 还没追完⏳ |\r\n| 终将成为你 | 还没追完⏳ |\r\n\r\n### 附录2：语言概况\r\n\r\n| 语言 | 掌握程度 | 使用频率 | 备注 |\r\n| ---- | ---- | ---- | ---- |\r\n| C# | ??? | ????? | 我的主要开发语言 |\r\n| SQL | ? | ??? |\r\n| CSS | ???? | ???? |\r\n| HTML | ???? | ???? |\r\n| C | ?? | ? |\r\n| JAVA | ? |  |\r\n| PHP |  |  | 这是世界上最好的语言 |\r\n| JS | ? | ??? |\r\n| 易语言 | ?? |  | 已经若干年没碰过了... |\r\n\r\n<script>\r\n$(function () {\r\n$(\"tbody tr:odd\").css(\"background-color\",\"rgb(233, 233, 233)\");//奇数行设置颜色\r\n$(\"tbody tr:even\").css(\"background-color\",\"rgb(245, 245, 245)\");//偶数行设置颜色\r\n});\r\n</script>'),(12388,'关于博客','我的博客，是世界上最好的博客','<div align=\"center\">\r\n\r\n# THAUMY的博客  \r\n## 基于pilipala构建  \r\nThaumy\'s blog, based on pilipala  \r\n由WaterLibrary内核全速驱动  \r\n\r\n### <span style=\"color:#53A0FE\">版本信息</span>\r\n\r\npilipalaBeta7 :: <span style=\"background: rgb(192, 13, 13)\" class=\"wd-dt3\">Kagua</span>  \r\n先行测试 1  \r\n内核版本：WL1.15 A3  \r\n\r\n<span style=\"font-size:19px\">博客已运行</span><br>\r\n<span id=\"t-y\"></span>年<span id=\"t-d\"></span>天<span id=\"t-h\"></span>小时<span id=\"t-m\"></span>分钟<span id=\"t-s\"></span>秒\r\n\r\n### <span style=\"color:#53A0FE\">技术支持(名称不分先后)</span>\r\nHodpel  \r\n雅爱方雏  \r\n星魂w  \r\n\r\n### <span style=\"color:#53A0FE\">版权信息</span>\r\n水瓜社©2019保留所有权利  \r\nThaumy的博客©2016-2019保留所有权利  \r\n全站实现遵循GPL-3协议开源\r\n\r\n</div>\r\n\r\n<style>\r\n#t-y,#t-d,#t-h,#t-m,#t-s{\r\n    font-size: 15px;\r\n    background:rgba(180,180,180,1);\r\n    color: rgb(255,255,255);\r\n	padding-left: 3px;\r\n    padding-right: 3px;\r\n    margin-left:2px;\r\n    margin-right:2px;\r\n    border-radius: 1px;\r\n}\r\n</style>\r\n\r\n<script>\r\n    function secondToDate(second) {\r\n        if (!second) {\r\n            return 0;\r\n        }\r\n        var time = new Array(0, 0, 0, 0, 0);\r\n        if (second >= 365 * 24 * 3600) {\r\n            time[0] = parseInt(second / (365 * 24 * 3600));\r\n            second %= 365 * 24 * 3600;\r\n        }\r\n        if (second >= 24 * 3600) {\r\n            time[1] = parseInt(second / (24 * 3600));\r\n            second %= 24 * 3600;\r\n        }\r\n        if (second >= 3600) {\r\n            time[2] = parseInt(second / 3600);\r\n            second %= 3600;\r\n        }\r\n        if (second >= 60) {\r\n            time[3] = parseInt(second / 60);\r\n            second %= 60;\r\n        }\r\n        if (second > 0) {\r\n            time[4] = second;\r\n        }\r\n        return time;\r\n    }\r\n    function setTime() {\r\n        //月份应该减一，例如12月写11\r\n        var create_time = Math.round(new Date(Date.UTC(2016, 07, 18, 20, 00, 00)).getTime() / 1000);\r\n        var timestamp = Math.round((new Date().getTime() + 8 * 60 * 60 * 1000) / 1000);\r\n        currentTime = secondToDate((timestamp - create_time));\r\n        document.getElementById(\"t-y\").innerHTML = currentTime[0];\r\n        document.getElementById(\"t-d\").innerHTML = currentTime[1];\r\n        document.getElementById(\"t-h\").innerHTML = currentTime[2];\r\n        document.getElementById(\"t-m\").innerHTML = currentTime[3];\r\n        document.getElementById(\"t-s\").innerHTML = currentTime[4];\r\n    }\r\n    setInterval(setTime, 1000);\r\n</script>'),(12389,'氛愿景','気&氛','[//创建日期]:2019-05-25/21:55:42\r\n[//编辑日期]:2019-05-25/21:55:42\r\n[//文章概要]:気&氛\r\n[//归档]:技术归档\r\n[//标签]:噼里啪啦工程\r\n[//封面]:![]()\r\n\r\n### 本博客的主题要随beta7推出新版本啦！  \r\n\r\n## <span style=\"color:#C71585\">前景</span>  \r\n\r\n经过长时间的设计经验积累，氛主题由苹果风逐渐向微软风的UI转移。苹果的UI实在太圆润了，审美疲劳非常快，还是windows方方正正的风格耐看。  \r\n面向beta7的主题构建，氛主题的结构布局将会更加合理，让开发更有效率。我将添加更多友好的动画效果和交互控件，使这个主题拥有一流的交互体验。  \r\n\r\n## <span style=\"color:#C71585\">持续构建</span>  \r\n\r\n氛将会和以前一样，提供每周的UI更新和系统优化。  \r\n\r\n## <span style=\"color:#C71585\">新相</span>  \r\n\r\n为了适应水瓜社官网的暑期部署，一个新的主题将会进入流程：気。'),(12390,'生病。。。','富有感染性的内容','[//创建日期]:2019-07-11/13:53:36\r\n[//编辑日期]:2019-07-11/13:53:36\r\n[//文章概要]:富有感染性的内容\r\n[//归档]:个人归档\r\n[//标签]:杂记\r\n[//封面]:![]()\r\n\r\n最近经历了一场大病，导致博客持续停更。  \r\n不过目前已经康复，可能以后就不能熬夜写代码了......  \r\nThaumy再此提醒各位，要按时作息，早睡早起，好好吃饭多睡觉，这样才能多写代码多玩游戏（滑稽  \r\n由于上周第七步进没能更新，所以噼里啪啦的BETA7开发工作将提前到第七步进完成时（约七月十五日'),(12393,'结束了，初始化下一征程','向beta6致敬！','[//创建日期]:2019-08-08/22:12:04\r\n[//编辑日期]:2019-08-08/22:12:04\r\n[//文章概要]:向beta6致敬！\r\n[//归档]:技术归档\r\n[//标签]:噼里啪啦工程\r\n[//封面]:![]()\r\n\r\n## pilipala BETA6(1902)第7步进现已结束\r\n\r\n原定于七月更新的噼里啪啦BETA6第8步进由于我的懒惰，被搁置了...  \r\n其实第8步进没有什么特别的内容，无非发布几篇收尾文章，做做UI更新。  \r\n随着氛2近期的开发完成，氛1的UI更新也显得似乎不是那么必要了。  \r\n于是，BETA6超额完成了它4个月的设计寿命（2018.02‎-2018.07，实际使用了接近5个月）。  \r\n在第8步进中，我修正了维护日志，发布了此篇文章，备份了数据库。  \r\n\r\n### 感谢pilipala BETA6陪我走过的高二半年，到这里。\r\n### 由于学业原因，BETA7工程很可能被搁置。\r\n但是到了大学我还会努力写代码的( •̀∀•́ )！就这样。'),(12394,'氛V2','Make a simple, intuitive UI','[2019-08-25/09:59:35]:创建日期\r\n[2019-08-25/10:00:37]:修改日期\r\n[Make a simple, intuitive UI]:概要\r\n[技术归档]:归档\r\n[客制化]:标签\r\n[http://thblog-img.test.upcdn.net/md-img/field2cg.jpg]:封面URL\r\n\r\n# 氛V2主题\r\n\r\n<blockquote>\r\n经过全新设计\r\n</blockquote>\r\n\r\n## 高分辨率视觉\r\n\r\n<div align=\"center\">\r\n<img style=\"width:94%\" src=\"http://thblog-img.test.upcdn.net/md-img/xiangyingshi.svg\">\r\n</div>\r\n\r\n相较于氛V1，氛V2在2K分辨率下进行设计，出色的响应式结构让氛V2拥有更大的分辨率支持空间。  \r\n\r\n## 手机与平板的出色体验\r\n\r\n<div>\r\n<img style=\"width:70%\" src=\"http://thblog-img.test.upcdn.net/md-img/phone&pad.svg\">\r\n</div>\r\n\r\n我们兼容所有移动端设备，氛V2为移动端自适应提供了出色解决方案。  \r\n下拉式菜单经过精心设计，支持全面屏。\r\n\r\n## 来源于对文字的专注\r\n\r\n<div>\r\n<img style=\"width:100%\" src=\"http://thblog-img.test.upcdn.net/md-img/new_tag.svg\">\r\n</div>\r\n不同于氛V1，氛V2的标签样式更加简单，你看到的每一篇文章，以文字回归。\r\n\r\n## 思源，饮水思源\r\n\r\n<div>\r\n<img style=\"width:100%\" src=\"http://thblog-img.test.upcdn.net/md-img/source_han_sans.jpg\">\r\n</div>\r\n\r\n一笔一划的匠心雕琢，来自我们颇受欢迎的思源黑体的拉丁文、希腊文和西里尔文字形。  \r\n\r\n## 标准色\r\n\r\n<div>\r\n<img style=\"width:30%\" src=\"http://thblog-img.test.upcdn.net/md-img/srgb_color.svg\">\r\n</div>\r\n\r\n100%SRGB的设计师标准，我们的颜色，精准到每一像素。\r\n\r\n## 阅读本身就是一种放松\r\n\r\n<div>\r\n<img style=\"width:70%\" src=\"http://thblog-img.test.upcdn.net/md-img/deep_dark_field.svg\">\r\n</div>\r\n\r\n减少光刺激的暗色调阅读区。\r\n\r\n## 人人皆作家\r\n\r\n<div>\r\n<img style=\"width:50%\" src=\"http://thblog-img.test.upcdn.net/md-img/markdown_logo.svg\">\r\n</div>\r\n\r\n忘掉html，这里没有标记块。  \r\n得益于marked.js解析引擎，你可以在写作时使用markdown语言，可读易用。  \r\n\r\n## 这个需求很简单\r\n\r\n<pre>Visual C# <code>public void HelloField()\r\n{\r\n    Console.WriteLine(\"HelloField!\");\r\n}</code></pre>\r\n\r\n现在是开发者时间，氛V2支持高亮。\r\n\r\n## This Is Field.\r\n\r\n这就是氛。'),(12395,'C#向上转型的一系列多态问题','','<blockquote>\r\n在上周的项目的开发中我发现一个很基础的知识点存在遗漏，决定写一篇博文，就是向上转型的问题。\r\n</blockquote>\r\n\r\n类似于这样：\r\n\r\n<pre>Visual C# <code>A a = new B();/* 向上转型 */</code></pre>\r\n\r\n其中，子类B继承于父类A。\r\n\r\n### 什么是向上转型？  \r\n按照我的理解，上面的代码可以理解为：\r\n\r\n1. 新建一个A的实例a\r\n2. 将a转换到B类型\r\n\r\n第一步骤相信大家都明白。  \r\n那么第二步，A类型的a经过了怎样的步骤，转换成了B类型呢？\r\n\r\n为了探讨这个问题，我们建立一个类A：\r\n\r\n<pre>Visual C# <code>class A\r\n{\r\n    public void output()\r\n    {\r\n        Console.WriteLine(\"我是A输出的\");\r\n    }\r\n}</code></pre>\r\n\r\n建立类B，继承自A：\r\n\r\n<pre>Visual C# <code>class B : A\r\n{\r\n    public void output()\r\n    {\r\n        Console.WriteLine(\"我是B输出的\");\r\n    }\r\n}</code></pre>\r\n\r\n我们尝试调用一下output()方法：\r\n\r\n<pre>Visual C# <code>A a1 = new B();\r\na1.output();</code></pre>\r\n\r\n得到输出结果：\r\n\r\n<pre>Console <code>我是A输出的</code></pre>\r\n\r\n<blockquote>\r\n可以看到，a1调用的是父类的方法。  \r\n</blockquote>\r\n\r\n那么如果有业务需求，如何调用B中的方法呢？  \r\n将A中方法添加虚拟：\r\n\r\n<pre>Visual C# <code>public virtual void output()\r\n{\r\n    Console.WriteLine(\"我是A输出的\");\r\n}</code></pre>\r\n\r\n将B中方法添加重写：\r\n\r\n<pre>Visual C# <code>public override void output()\r\n{\r\n    Console.WriteLine(\"我是B输出的\");\r\n}</code></pre>\r\n\r\n 再次像上面那样，调用output()方法：\r\n\r\n <pre>Console <code>我是B输出的</code></pre>\r\n\r\n<blockquote>\r\n由于重写，a调用了B类中的output()方法。\r\n</blockquote>\r\n\r\n下面来讨论另一种情况：使用new隐藏子类方法。\r\n\r\n<pre>Visual C# <code>using System;\r\n\r\nnamespace ConsoleApp1\r\n{\r\n    class Program\r\n    {\r\n        static void Main(string[] args)\r\n        {\r\n            A a = new B();\r\n            a.output();\r\n        }\r\n    }\r\n    class A\r\n    {\r\n        public void output()\r\n        {\r\n            Console.WriteLine(\"我是A输出的\");\r\n        }\r\n    }\r\n    class B : A\r\n    {\r\n        public new void output()\r\n        {\r\n            Console.WriteLine(\"我是B输出的\");\r\n        }\r\n    }\r\n}</code></pre>\r\n<br>\r\n<pre>Console <code>我是A输出的</code></pre>\r\n\r\n上面是一段完整的代码。\r\n\r\n<blockquote>\r\n输出表明虽然a被转换为B类型，但如果B类型的方法是将A中相应方法隐藏的，a会调用A中的方法。\r\n</blockquote>\r\n\r\n### 总结：\r\n\r\n<pre>Visual C# <code>A a = new B();</code></pre>\r\n\r\n上述代码的实质是把子类B扩大到父类A，使其在实例a的外部能够调用父类的重名成员。  \r\n\r\n### 这样做有什么意义？  \r\n\r\n<blockquote>\r\n我们可以建立这样一个A的实例，让它能够调用A类和B类的重名成员，对于B类的额外内容，A类可以通过添加抽象的方式，在B类中以重写实现来完成调用。  \r\n</blockquote>\r\n\r\n对于只需要B类成员的情况：\r\n\r\n<pre>Visual C# <code>B b = new B();</code></pre>\r\n\r\n这样便能屏蔽掉父类A，只专注于B类的功能了。\r\n\r\n教程写的繁琐不堪，如果能帮到大家，是我莫大的荣幸。'),(12396,'噼里啪啦BETA7已部署','来自6300行的净构建','[2019-08-29/05:31:35]:创建日期\r\n[2019-08-29/10:00:37]:修改日期\r\n[来自6300行的净构建]:概要\r\n[技术归档]:归档\r\n[噼里啪啦]:标签\r\n[封面URL]:封面URL\r\n\r\n经过一个月的编写调试，噼里啪啦推出了第七测试版。  \r\n在弥补上一版本的若干缺陷的同时，BETA7使用了新的业务体系，提供了更加丰富的函数支持。\r\n\r\n## Kaguya架构\r\n\r\n<blockquote>\r\n来自四宫辉夜的钦定\r\n</blockquote>\r\n\r\n1. 支持更大客制化空间的模块化主题\r\n2. 第三代数据桥\r\n3. 重构后的噼里啪啦数据库\r\n4. 快速部署支持\r\n\r\n## WaterLibrary内核\r\n\r\n<blockquote>\r\n水库，纳百川之流\r\n</blockquote>\r\n\r\n1. 全新的文章控制器\r\n2. 规范统一的命名体系\r\n3. 多接口约束\r\n4. 简明易懂的业务层分工\r\n5. 更加安全的噼里啪啦数据库访问机制\r\n6. 专为第三代对象式架构调整的数据层\r\n7. 更多的数据源获取支持'),(12397,'国庆赋','该睡觉啦','<div align=\"center\">\r\n\r\n# 国庆赋\r\n### 雅爱方雏\r\n## 砥砺前行七十载，众心众志向未来。  \r\n## 以坚定的初心，不断寻求人民的福祉。  \r\n## 快速发展的背后，是『高工作效率』。  \r\n## 拼搏，奋斗，我们都是追梦人。\r\n\r\n</div>');
/*!40000 ALTER TABLE `pala_text_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pala_text_sub`
--

DROP TABLE IF EXISTS `pala_text_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pala_text_sub` (
  `text_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `text_archiv` varchar(16) DEFAULT '未归档',
  `text_editor` char(32) DEFAULT 'pinn',
  `date_created` datetime DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `count_pv` int(5) unsigned DEFAULT '23',
  `count_comment` int(5) unsigned DEFAULT '0',
  `count_star` int(5) unsigned DEFAULT '23',
  `tags` varchar(128) DEFAULT '啪啦默认集',
  `before_html` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`text_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12398 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pala_text_sub`
--

LOCK TABLES `pala_text_sub` WRITE;
/*!40000 ALTER TABLE `pala_text_sub` DISABLE KEYS */;
INSERT INTO `pala_text_sub` VALUES (12347,'技术归档','Thaumy','2017-01-15 06:18:32','2017-08-05 13:33:45',334,0,53,'演示文章',NULL),(12350,'项目','Thaumy','2017-04-21 23:05:03','2017-07-23 14:23:10',245,0,29,'演示文章',''),(12351,'项目','Thaumy','2017-05-20 04:24:44','2017-10-28 15:49:54',315,0,56,'演示文章',NULL),(12356,'技术归档','Thaumy','2017-06-17 04:16:29','2017-07-12 10:13:21',331,0,42,'演示文章',NULL),(12359,'技术归档','Thaumy','2017-06-18 00:00:01','2017-07-12 10:13:16',203,0,41,'演示文章',NULL),(12364,'技术归档','Thaumy','2017-07-11 03:10:51','2017-07-12 10:13:06',235,0,47,'演示文章',NULL),(12365,'项目','Thaumy','2017-07-21 02:24:07','2017-08-15 03:46:00',261,0,52,'演示文章',NULL),(12366,'技术归档','Thaumy','2017-07-26 09:16:30','2018-04-14 22:53:20',281,0,34,'演示文章',NULL),(12369,'技术归档','Thaumy','2017-12-02 07:06:14','2018-04-14 22:52:19',241,0,44,'演示文章',NULL),(12373,'项目','Thaumy','2018-04-05 22:46:31','2018-04-14 22:55:40',223,0,38,'演示文章',''),(12376,'技术归档','Thaumy','2019-03-09 19:23:39','2019-09-21 21:10:58',336,0,84,'前端开发$博客维护',NULL),(12377,'技术归档','Thaumy','2019-03-09 22:49:33','2019-04-14 06:08:43',212,0,44,'前端开发$啪啦工程','<img class=\"pXL\" src=\"http://thblog-img.test.upcdn.net/md-img/pilipalabeta6.png\">'),(12379,'','Thaumy','2019-04-05 17:46:42','2019-04-05 17:46:44',151,0,58,'签名$语录',NULL),(12380,'水瓜归档','水瓜社','2019-04-13 23:51:00','2019-04-21 09:52:58',190,0,43,'水瓜社$工作室','<img class=\"pXL\" src=\"http://thblog-img.test.upcdn.net/md-img/h2omelonsocie.jpg\">'),(12381,'个人归档','Thaumy','2019-04-13 23:51:04','2019-04-13 23:51:10',164,0,41,'Thaumy$二次元',NULL),(12382,'技术归档','Thaumy','2019-04-14 06:58:04','2019-06-06 17:16:55',130,0,54,'啪啦工程','<img class=\"pXL\" src=\"http://thblog-img.test.upcdn.net/md-img/aboutPilipala.png\">'),(12383,'','Thaumy','2019-05-11 18:02:54','2019-08-21 08:47:26',227,0,53,'引导',NULL),(12384,'','Thaumy','2019-05-11 18:18:36','2019-05-11 18:18:39',121,0,33,'引导',NULL),(12385,'水瓜归档','水瓜社','2019-05-25 21:55:39','2019-05-25 21:55:42',194,0,46,'水瓜储蓄事务局',NULL),(12386,'技术归档','Thaumy','2019-05-26 00:39:38','2019-06-29 19:33:09',92,0,22,'啪啦工程','<img class=\"pXL\" src=\"http://thblog-img.test.upcdn.net/md-img/pilipalabeta7preview.jpg\">'),(12387,'个人归档','Thaumy','2019-06-16 07:12:31','2019-06-29 23:38:41',51,0,23,'杂记',NULL),(12388,'','Pinn','2019-06-29 23:15:38','2019-08-15 08:50:16',46,0,12,'',NULL),(12389,'技术归档','Thaumy','2019-06-30 06:31:16','2019-06-30 06:31:18',32,0,14,'啪啦工程',NULL),(12390,'','Thaumy','2019-07-11 13:53:36','2019-07-11 13:53:34',32,0,6,'可怜的Thaumy',NULL),(12393,'','Thaumy','2019-08-08 22:12:04','2019-08-08 22:12:04',16,0,10,'',NULL),(12394,'技术归档','Thaumy','2019-08-25 09:59:35','2019-08-31 22:30:54',36,0,12,'客制化','<img class=\"pXL\" src=\"http://thblog-img.test.upcdn.net/md-img/field2cg.jpg\">'),(12395,'技术归档','Thaumy','2019-08-27 08:17:30','2019-08-31 22:30:54',9,0,4,'例程$C#',NULL),(12396,'技术归档','Thaumy','2019-09-06 19:10:39','2019-08-31 22:30:54',10,0,13,'啪啦工程',NULL),(12397,'','雅爱方雏','2019-10-01 18:40:16','2019-10-01 18:40:16',3,0,2,'雅爱方雏设计局$联动$国庆节','<img class=\"pXL\" src=\"http://thblog-img.test.upcdn.net/md-img/cn70th.jpg\">');
/*!40000 ALTER TABLE `pala_text_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view>index`
--

DROP TABLE IF EXISTS `view>index`;
/*!50001 DROP VIEW IF EXISTS `view>index`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view>index` AS SELECT 
 1 AS `text_id`,
 1 AS `text_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view>index.page`
--

DROP TABLE IF EXISTS `view>index.page`;
/*!50001 DROP VIEW IF EXISTS `view>index.page`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view>index.page` AS SELECT 
 1 AS `text_id`,
 1 AS `text_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view>index.post`
--

DROP TABLE IF EXISTS `view>index.post`;
/*!50001 DROP VIEW IF EXISTS `view>index.post`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view>index.post` AS SELECT 
 1 AS `text_id`,
 1 AS `text_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view>main`
--

DROP TABLE IF EXISTS `view>main`;
/*!50001 DROP VIEW IF EXISTS `view>main`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view>main` AS SELECT 
 1 AS `text_id`,
 1 AS `text_title`,
 1 AS `text_summary`,
 1 AS `text_content`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view>sub`
--

DROP TABLE IF EXISTS `view>sub`;
/*!50001 DROP VIEW IF EXISTS `view>sub`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view>sub` AS SELECT 
 1 AS `text_id`,
 1 AS `text_archiv`,
 1 AS `text_editor`,
 1 AS `date_created`,
 1 AS `date_changed`,
 1 AS `count_pv`,
 1 AS `count_comment`,
 1 AS `count_star`,
 1 AS `tags`,
 1 AS `before_html`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'pala_db'
--

--
-- Dumping routines for database 'pala_db'
--
/*!50003 DROP FUNCTION IF EXISTS `random>number` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`thaumy0tdymy`@`localhost` FUNCTION `random>number`( start_num INTEGER, end_num INTEGER ) RETURNS int(11)
BEGIN



RETURN FLOOR( start_num + RAND( ) * ( end_num - start_num + 1 ) );



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get>main` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`thaumy0tdymy`@`localhost` PROCEDURE `get>main`( IN `text_id` INT )
BEGIN

SELECT

	* 

FROM

	`view>main` 

WHERE

	( `view>main`.`text_id` = text_id );



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get>root` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`thaumy0tdymy`@`localhost` PROCEDURE `get>root`( IN `root_id` INT )
BEGIN

SELECT

	* 

FROM

	`pala_root` 

WHERE

	( `pala_root`.`root_id` = root_id );



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get>sub` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`thaumy0tdymy`@`localhost` PROCEDURE `get>sub`( IN `text_id` INT )
BEGIN

SELECT

	* 

FROM

	`view>sub` 

WHERE

	( `view>sub`.`text_id` = text_id );



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `match<main.content` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`thaumy0tdymy`@`localhost` PROCEDURE `match<main.content`( IN `str` TINYTEXT )
BEGIN

SELECT

	`view>main`.`text_id` 

FROM

	`view>main`,

	`view>index` 

WHERE

	(

	( `view>main`.`text_id` = `view>index`.`text_id` ) 

	AND ( `view>main`.`text_content` LIKE concat( '%', @str, '%' ) ) 

	);



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `match<main.summary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`thaumy0tdymy`@`localhost` PROCEDURE `match<main.summary`( IN `str` TINYTEXT )
BEGIN

SELECT

	`view>main`.`text_id` 

FROM

	`view>main`,

	`view>index` 

WHERE

	(

	( `view>main`.`text_id` = `view>index`.`text_id` ) 

	AND ( `view>main`.`text_summary` LIKE concat( '%', @str, '%' ) ) 

	);



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `match<main.title` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`thaumy0tdymy`@`localhost` PROCEDURE `match<main.title`( IN `str` TINYTEXT )
BEGIN

SELECT

	`view>main`.`text_id` 

FROM

	`view>main`,

	`view>index` 

WHERE

	(

	( `view>main`.`text_id` = `view>index`.`text_id` ) 

	AND ( `view>main`.`text_title` LIKE concat( '%', @str, '%' ) ) 

	);



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `random>index` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`thaumy0tdymy`@`localhost` PROCEDURE `random>index`( IN `excluded_text_id` INTEGER, IN `text_type` VARCHAR ( 8 ) )
BEGIN

SELECT

	* 

FROM

	`pala_text_index` 

WHERE

	(

	(

	`pala_text_index`.`text_id` >= (

	

	( ( SELECT MAX( `pala_text_index`.`text_id` ) FROM `pala_text_index` ) - ( SELECT MIN( `pala_text_index`.`text_id` ) FROM `pala_text_index` ) ) * RAND( ) 

	 + ( SELECT MIN( `pala_text_index`.`text_id` ) FROM `pala_text_index` ) 

	) 

	) /* 展示可用 */

	

	AND ( `pala_text_index`.`text_mode` = 'onshow' ) /* 排除不参与随机取样的文章 */

	

	AND ( `pala_text_index`.`text_id` <> excluded_text_id ) 

	AND ( `pala_text_index`.`text_type` = text_type ) 

	) /* 从第一位置取一条记录 */

	

	LIMIT 2,

	1;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `random>index.page` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`thaumy0tdymy`@`localhost` PROCEDURE `random>index.page`(IN excluded_text_id INTEGER )
BEGIN

SELECT

	* 

FROM

	`pala_text_index` 

WHERE

	(

	(

	`pala_text_index`.`text_id` >= (

	

	( ( SELECT MAX( `pala_text_index`.`text_id` ) FROM `pala_text_index` ) - ( SELECT MIN( `pala_text_index`.`text_id` ) FROM `pala_text_index` ) ) * RAND( ) 

	+ ( SELECT MIN( `pala_text_index`.`text_id` ) FROM `pala_text_index` ) 

	) 

	) /* 展示可用 */

	

	AND ( `pala_text_index`.`text_mode` = 'onshow' ) /* 排除不参与随机取样的文章 */

	

	AND ( `pala_text_index`.`text_id` <> excluded_text_id ) 

	AND ( `pala_text_index`.`text_type` = 'page' ) 

	) /* 从第一位置取一条记录 */

	

	LIMIT 2,

	1;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `random>index.post` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`thaumy0tdymy`@`localhost` PROCEDURE `random>index.post`(IN excluded_text_id INTEGER )
BEGIN

SELECT

	* 

FROM

	`pala_text_index` 

WHERE

	(

	(

	`pala_text_index`.`text_id` >= (

	

	( ( SELECT MAX( `pala_text_index`.`text_id` ) FROM `pala_text_index` ) - ( SELECT MIN( `pala_text_index`.`text_id` ) FROM `pala_text_index` ) ) * RAND( ) 

  + ( SELECT MIN( `pala_text_index`.`text_id` ) FROM `pala_text_index` ) 

	) 

	) /* 展示可用 */

	

	AND ( `pala_text_index`.`text_mode` = 'onshow' ) /* 排除不参与随机取样的文章 */

	

	AND ( `pala_text_index`.`text_id` <> excluded_text_id ) 

	AND ( `pala_text_index`.`text_type` = 'post' ) 

	) /* 从第一位置取一条记录 */

	

	LIMIT 2,

	1;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view>index`
--

/*!50001 DROP VIEW IF EXISTS `view>index`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`thaumy0tdymy`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view>index` AS select `pala_text_index`.`text_id` AS `text_id`,`pala_text_index`.`text_type` AS `text_type` from `pala_text_index` where (`pala_text_index`.`text_mode` = 'onshow') order by `pala_text_index`.`text_id` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view>index.page`
--

/*!50001 DROP VIEW IF EXISTS `view>index.page`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`thaumy0tdymy`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view>index.page` AS select `pala_text_index`.`text_id` AS `text_id`,`pala_text_index`.`text_type` AS `text_type` from `pala_text_index` where ((`pala_text_index`.`text_type` = 'page') and (`pala_text_index`.`text_mode` = 'onshow')) order by `pala_text_index`.`text_id` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view>index.post`
--

/*!50001 DROP VIEW IF EXISTS `view>index.post`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`thaumy0tdymy`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view>index.post` AS select `pala_text_index`.`text_id` AS `text_id`,`pala_text_index`.`text_type` AS `text_type` from `pala_text_index` where ((`pala_text_index`.`text_type` = 'post') and (`pala_text_index`.`text_mode` = 'onshow')) order by `pala_text_index`.`text_id` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view>main`
--

/*!50001 DROP VIEW IF EXISTS `view>main`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`thaumy0tdymy`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view>main` AS select `pala_text_main`.`text_id` AS `text_id`,`pala_text_main`.`text_title` AS `text_title`,`pala_text_main`.`text_summary` AS `text_summary`,`pala_text_main`.`text_content` AS `text_content` from (`pala_text_index` join `pala_text_main`) where ((`pala_text_main`.`text_id` = `pala_text_index`.`text_id`) and (`pala_text_index`.`text_mode` = 'onshow')) order by `pala_text_main`.`text_id` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view>sub`
--

/*!50001 DROP VIEW IF EXISTS `view>sub`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`thaumy0tdymy`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view>sub` AS select `pala_text_sub`.`text_id` AS `text_id`,`pala_text_sub`.`text_archiv` AS `text_archiv`,`pala_text_sub`.`text_editor` AS `text_editor`,`pala_text_sub`.`date_created` AS `date_created`,`pala_text_sub`.`date_changed` AS `date_changed`,`pala_text_sub`.`count_pv` AS `count_pv`,`pala_text_sub`.`count_comment` AS `count_comment`,`pala_text_sub`.`count_star` AS `count_star`,`pala_text_sub`.`tags` AS `tags`,`pala_text_sub`.`before_html` AS `before_html` from (`pala_text_index` join `pala_text_sub`) where ((`pala_text_sub`.`text_id` = `pala_text_index`.`text_id`) and (`pala_text_index`.`text_mode` = 'onshow')) order by `pala_text_sub`.`text_id` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-19 23:16:41
