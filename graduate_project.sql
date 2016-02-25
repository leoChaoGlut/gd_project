/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : graduate_project

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2016-02-25 23:45:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `view` int(6) DEFAULT NULL,
  `article_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1261 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_article
-- ----------------------------
INSERT INTO `blog_article` VALUES ('1082', 'JSOUP获取网页数据返回403错误（403 error loading URL,connection类）', '最近做的项目需要利用JSOUP进行网页获取和解析，但是遇到了拒绝访问的问题，返回的结果是： java.io.IOException: 403 error loading URL http://www.xxx.com/xxx 连接代码是这样的： [java] view plain copy Document doc = Jsoup.connec...', '2016-02-23 13:59:00', '37', '50722680');
INSERT INTO `blog_article` VALUES ('1083', 'JS简单粗暴地实现浅克隆', '1.实现: var ObjectUtil = (function() { function clone(obj) { var json = JSON.stringify(obj); var newObj = JSON.parse(json); return newObj; }...', '2016-02-21 11:10:00', '17', '50707500');
INSERT INTO `blog_article` VALUES ('1084', '线程池线程数与(CPU密集型任务和I/O密集型任务)的关系', '近期看了一些JVM和并发编程的知识,来做一个关于(线程池线程数与(CPU密集型任务和I/O密集型任务)的关系)的总结: 1.任务类型举例: 1.1: CPU密集型: 例如,一般我们系统的静态资源,比如js,css等,会存在一个版本号,如 main.js?v0,每当用户访问这个资源的时候,会发送一个比对请求到服务端,比对本地静态文件版本和服务端的文件版本是否一致,不一致则更新.这种任务一般不占...', '2016-02-21 00:39:00', '28', '50706720');
INSERT INTO `blog_article` VALUES ('1085', '编程能力层次模型', '前言        程序员的编程技能随着经验的积累，会逐步提高。我认为编程能力可以分为一些层次。       下面通过两个维度展开编程能力层次模型的讨论。       一个维度是编程技能层次，另一个维度是领域知识层次。 编程技能层次         编程技能层次，指的程序员设计和编写程序的能力。这是程序员的根本。 0段—非程序员： ...', '2016-02-20 13:04:00', '8', '50704410');
INSERT INTO `blog_article` VALUES ('1086', '怎样学习才能拥有所谓“高并发”的经验？', '这个问题完全可以重定向到如何处理高并发业务场景. 以下只是我工作一年多接触到的一些基础,也许有偏差,要具备高并发的经验确实需要有实际项目,因为业务逻辑其实很容易理清,但是要在高并发的情况下如何找到业务繁忙的热点并进行优化,完全只能凭经验. 假如没有靠谱的公司,接触不到高并发的业务场景怎么办? 从处理技巧上,可以通过大牛学习高并发的架构,比如张宴:张宴的博客 - Web系统架构与底层研发....', '2016-02-03 21:35:00', '37', '50631271');
INSERT INTO `blog_article` VALUES ('1087', '使用 Docker 搭建 Java Web 运行环境', 'Docker 是 2014 年最为火爆的技术之一，几乎所有的程序员都听说过它。Docker 是一种“轻量级”容器技术，它几乎动摇了传统虚拟化技术的地位，现在国内外已经有越来越多的公司开始逐步使用 Docker 来替换现有的虚拟化平台了。作为一名 Java 程序员，我们是时候一起把 Docker 学起来了！ 本文会对虚拟化技术与 Docker 容器技术做一个对比，然后引出一些 Docker...', '2016-01-31 23:59:00', '29', '50616588');
INSERT INTO `blog_article` VALUES ('1088', 'RESTful API 设计指南', '网络应用程序，分为前端和后端两个部分。当前的发展趋势，就是前端设备层出不穷（手机、平板、桌面电脑、其他专用设备……）。 因此，必须有一种统一的机制，方便不同的前端设备与后端进行通信。这导致API构架的流行，甚至出现”API First”的设计思想。RESTful API是目前比较成熟的一套互联网应用程序的API设计理论。我以前写过一篇《理解RESTful架构》，探讨如何理解这个概念。 ...', '2016-01-30 21:59:00', '25', '50612621');
INSERT INTO `blog_article` VALUES ('1089', '前端性能优化', '没人邀请，看到这个问题不错，路过怒答。（多图预警） 前百度工程师，曾负责百度 前端集成解决方案 的核心设计与开发工作。我现在称这个领域为【前端工程】。没错，这是我最爱唠叨的问题域。 这是一个非常有趣的 非主流前端领域，这个领域要探索的是如何用工程手段解决前端开发和部署优化的综合问题，入行到现在一直在学习和实践中。 在我的印象中，facebook是这个领域的鼻祖，有兴趣、有梯子...', '2016-01-28 09:01:00', '30', '50598379');
INSERT INTO `blog_article` VALUES ('1090', 'Google Guava官方教程（中文版）', '原文链接  译文链接 译者: 沈义扬，罗立树，何一昕，武祖  校对：方腾飞 引言 Guava工程包含了若干被Google的 Java项目广泛依赖 的核心库，例如：集合 [collections] 、缓存 [caching] 、原生类型支持 [primitives support] 、并发库 [concurrency libraries] 、通用注解 [common annotation...', '2016-01-26 11:52:00', '27', '50586369');
INSERT INTO `blog_article` VALUES ('1091', '喝酒问题:啤酒2元一瓶 4个瓶盖能换1瓶啤酒,2个空瓶也能换1瓶啤酒', '今天被同事问到一个喝酒的问题,题目如下: 啤酒2元一瓶 4个瓶盖能换1瓶啤酒,2个空瓶也能换1瓶啤酒,问:10元钱最多能喝几瓶酒? 于是乎写了一段小代码来解决这个问题: package test2; import org.junit.Test; public class MyTest { int maxCount = 0; @Test public void t...', '2016-01-24 21:40:00', '66', '50575570');
INSERT INTO `blog_article` VALUES ('1092', '一次完整的HTTP请求所经历的7个步骤', 'HTTP通信机制是在一次完整的HTTP通信过程中，Web浏览器与Web服务器之间将完成下列7个步骤：  1. 建立TCP连接 在HTTP工作开始之前，Web浏览器首先要通过网络与Web服务器建立连接，该连接是通过TCP来完成的，该协议与IP协议共同构建Internet，即著名的TCP/IP协议族，因此Internet又被称作是TCP/IP网络。HTTP是比TCP更高层次的应用层协议，根...', '2016-01-17 23:36:00', '35', '50534257');
INSERT INTO `blog_article` VALUES ('1093', '每个Java程序员需要了解的8个Java开发工具', 'Java是计算机应用程序编程语言，被广泛用于创建Web应用、服务器处理、用户端的API开发乃至数据库等多个领域。下面列出了8个有助于你开发Java应用程序最好的Java工具。 1. SparkJava 这是一款体形轻巧，功能强大的Web应用框架。Spark拥有简单而直接的方法。您可以通过一些繁琐的XML配置来使用Spark框架编写应用程序。Spark能让你花费最少的精力来开发Java的...', '2016-01-13 14:20:00', '38', '50510404');
INSERT INTO `blog_article` VALUES ('1094', 'jQuery计算文本宽度和input标签根据输入字符动态自适应宽度的实现', 'jQuery计算文本宽度的原理是利用html提供的标签，向dom中动态添加标签，标签里的内容就是要测试长度的文本，获取完长度之后再删除刚才添加的标签，从而可取到文本的大概长度了。为什么要用标签而不用其他标签呢，那来看看标签的特性吧：pre 元素可定义预格式化的文本。被包围在 pre 元素中的文本通常会保留空格和换行符;而文本也会呈现为等宽字体。 标签的一个常见应用就是用来表示计算机的源代码。需要注...', '2016-01-08 14:11:00', '39', '50482534');
INSERT INTO `blog_article` VALUES ('1095', 'Redis学习资料', 'Redis 教程-W3C ============================== Redis学习笔记1--入门篇  Redis学习笔记2--Redis数据类型及相关命令 Redis学习笔记3--Redis键值设计 Redis学习笔记4--Redis数据存储优化机制 Redis学习笔记5--Redis排序 Redis学习笔记6--Redis事务 Redi...', '2016-01-05 20:31:00', '42', '50464986');
INSERT INTO `blog_article` VALUES ('1096', 'Java Web 程序员的职业进阶之路', '啥也不说了，都在图里了。希望可以给大家的职业规划一些提示，尤其是写了几年程序，却越来越迷茫的同学。 原文:http://blog.csdn.net/defonds/article/details/26337779...', '2016-01-03 19:22:00', '54', '50451958');
INSERT INTO `blog_article` VALUES ('1097', 'html中offsetTop、clientTop、scrollTop、offsetTop各属性介绍', 'HTML精确定位:scrollLeft,scrollWidth,clientWidth,offsetWidth  scrollHeight: 获取对象的滚动高度。  scrollLeft:设置或获取位于对象左边界和窗口中目前可见内容的最左端之间的距离  scrollTop:设置或获取位于对象最顶端和窗口中可见内容的最顶端之间的距离  scrollWidth:获取对象的滚动宽度  offs...', '2016-01-03 11:25:00', '31', '50450571');
INSERT INTO `blog_article` VALUES ('1098', 'Cookie/Session机制详解', '会话（Session）跟踪是Web程序中常用的技术，用来跟踪用户的整个会话。常用的会话跟踪技术是Cookie与Session。Cookie通过在客户端记录信息确定用户身份，Session通过在服务器端记录信息确定用户身份。 本章将系统地讲述Cookie与Session机制，并比较说明什么时候不能用Cookie，什么时候不能用Session。 1.1  Cookie机制 ...', '2016-01-02 11:43:00', '37', '50447953');
INSERT INTO `blog_article` VALUES ('1099', 'Java:强引用、弱引用、软引用、虚引用', '1、强引用（StrongReference）           强引用是使用最普遍的引用。如果一个对象具有强引用，那垃圾回收器绝不会回收它。如下： ? 1 Object o=new Object();   //  强引用 当内存空间不足，Java虚拟机宁愿抛出OutOfMemoryError错误，使程...', '2016-01-01 17:29:00', '38', '50445420');
INSERT INTO `blog_article` VALUES ('1100', 'callback的理解与Java实例', '对callback,暂时的理解是：A对象调用B接口的b方法，b方法又反过来调用A对象中的c方法。  A调用B接口时把自身给B接口，至于怎么处理，由B的实现类去做，不关A的事。  写了个例子，BadBoy，这类坏孩子喜欢打人，有个方法叫hit，hit只能对实现了Hitable的对象执行。这时候，BadBoy已经做完了自己的事，也就是已经打完人了，然后挨打的人肯定知道是谁打了自己，至于挨打的人...', '2016-01-01 16:56:00', '29', '50445316');
INSERT INTO `blog_article` VALUES ('1101', 'Java类的生命周期详解', '引言 最近有位细心的朋友在阅读笔者的文章时，对java类的生命周期问题有一些疑惑，笔者打开百度搜了一下相关的问题，看到网上的资料很少有把这个问题讲明白的，主要是因为目前国内java方面的教材大多只是告诉你“怎样做”，但至于“为什么这样做”却不多说，所以造成大家在基础和原理方面的知识比较匮乏，所以笔者今天就斗胆来讲一下这个问题，权当抛砖引玉，希望对在这个问题上有疑惑的朋友有所帮助，文中有说的不...', '2015-12-31 17:01:00', '41', '50442715');
INSERT INTO `blog_article` VALUES ('1102', '史上最全最强SpringMVC详细示例实战教程', 'SpringMVC学习笔记---- 一、SpringMVC基础入门，创建一个HelloWorld程序 1.首先，导入SpringMVC需要的jar包。 2.添加Web.xml配置文件中关于SpringMVC的配置 configure the setting of springmvcDispatcherServlet and configure the m...', '2015-12-31 11:27:00', '37', '50440566');
INSERT INTO `blog_article` VALUES ('1103', 'Java 程序员们值得一看的好书推荐', '“学习的最好途径就是看书“，这是我自己学习并且小有了一定的积累之后的第一体会。个人认为看书有两点好处： 能出版出来的书一定是经过反复的思考、雕琢和审核的，因此从专业性的角度来说，一本好书的价值远超其他资料对着书上的代码自己敲的时候方便 “看完书之后再次提升自我的最好途径是看一些相关的好博文“，我个人认为这是学习的第二步，因为一本书往往有好几百页，好的博文是自己看书学习之后的一些总结和提...', '2015-12-28 13:03:00', '59', '50418219');
INSERT INTO `blog_article` VALUES ('1104', '25个Java机器学习工具和库', '本列表总结了25个Java机器学习工具&库： 1. Weka集成了数据挖掘工作的机器学习算法。这些算法可以直接应用于一个数据集上或者你可以自己编写代码来调用。Weka包括一系列的工具，如数据预处理、分类、回归、聚类、关联规则以及可视化。 2.Massive Online Analysis（MOA）是一个面向数据流挖掘的流行开源框架，有着非常活跃的成长社区。它包括一系列的机器学习算法（分...', '2015-12-28 09:17:00', '57', '50416900');
INSERT INTO `blog_article` VALUES ('1105', 'Java Executor 框架学习总结', '大多数并发都是通过任务执行的方式来实现的。一般有两种方式执行任务：串行和并行。 class SingleThreadWebServer { public static void main(String[] args) throws Exception { ServerSocket socket = new ServerSocket(80); while(t...', '2015-12-24 09:24:00', '35', '50392160');
INSERT INTO `blog_article` VALUES ('1106', 'CSS布局奇淫技巧之-宽度自适应', 'CSS布局奇淫技巧之-宽度自适应 css这个东西，说难不难，说容易也不容易。我觉得最重要的还是经验的积累，正所谓的不积硅步，无以至千里。这一系列文章讲述几种css特殊布局的实现，也当作为自己做个备忘吧。 首先讲的是三列布局，左右两列宽度固定，中间一列宽度自适应 这个很好实现，左右两列分别左浮动和右浮动并给一个固定宽度，中间不浮动，也不设定宽度。这样基本就可以了。但为了兼容IE还必须做些工...', '2015-12-22 14:27:00', '36', '50379710');
INSERT INTO `blog_article` VALUES ('1107', '20位活跃在Github上的国内技术大牛', '本文列举了20位在Github上非常活跃的国内大牛，看看其中是不是很多熟悉的面孔？ 1. lifesinger（玉伯） Github主页：        https://github.com/lifesinger微博：@        玉伯也叫射雕 玉伯（王保平），淘宝前端类库 KISSY、前端模块化开发框架SeaJS、前端基础类库Arale的创始人。2003-200...', '2015-12-20 18:22:00', '50', '50365104');
INSERT INTO `blog_article` VALUES ('1108', '优化网站加载速度的14个技巧', '优化了加载速度的网站不仅可以提高其搜索引擎的排名，同时也可以降低网站的跳出率，提高其转换率，还能提供更好的终端用户体验，这是当今基于Web环境取得成功的关键。 下面我将介绍几个优化网站加载网页速度的简单方法，一起来看一下。 1.服务器响应时间 即使网站已经格外优化，但是除非服务器响应时间非常快，否则就不会有什么大的效果。当涉及到提高网站的速度，服务器响应时间起着重要的作用...', '2015-12-20 17:08:00', '31', '50364846');
INSERT INTO `blog_article` VALUES ('1109', 'WEB 开发者应该具备的 6 大技能', 'WEB开发本身涵盖了许多领域的许多技术，那么，有哪些是WEB开发者必备的技能呢？这是一个 Quora 上用户提出的问题，其中Ellyse Taylor的回答获得了1900+的赞同。 可能很多人对下面这个列表中的大部分内容都已经了解了，但其中必定有一些是你之前没有看到过，或者没有完全理解的，甚至有些你可能从来没听说过。 1. 界面和用户体验 注意，浏览器的实现标准是不一致的...', '2015-12-15 13:17:00', '44', '50314151');
INSERT INTO `blog_article` VALUES ('1110', 'CSS布局奇淫技巧之-高度自适应', 'CSS布局奇淫技巧之-高度自适应 何为高度自适应？ 高度自适应就是高度能跟随浏览器窗口的大小改变而改变，典型的运用在一些后台界面中上面一栏高度固定用作菜单栏或导航栏，下面一栏高度自适应用于显示内容。高度自适应不像宽度自适应那样简单，在兼容浏览器方面也稍微复杂一些。 布局思路 在IE7+及chrome、firefox等浏览器中，高度自适应可以利用绝对定位来解决。但一个元素是绝对定位时，如...', '2015-12-15 10:22:00', '29', '50311435');
INSERT INTO `blog_article` VALUES ('1111', 'WebSocket的过程与理解', '著作权归作者所有。 商业转载请联系作者获得授权，非商业转载请注明出处。 作者：Ovear 链接：http://www.zhihu.com/question/20215561/answer/40316953 来源：知乎 额。。最高票答案没答到点子上，最后怎么跑到Nodejs上去了。。Websocket只是协议而已。。 我一个个来回答吧 一、WebSocket是HTML5出的东西...', '2015-12-06 23:34:00', '80', '50199825');
INSERT INTO `blog_article` VALUES ('1112', 'Java子类父类初始化顺序', '今天复习了一下Java基础知识,发现一个挺有趣的问题: Father类:package p2; public class Father { public Father() { // TODO Auto-generated constructor stub say(); } public void say() { System.out.println(\"I\'m father\"...', '2015-11-06 10:10:00', '44', '49679123');
INSERT INTO `blog_article` VALUES ('1113', '35 个 Java 代码性能优化总结', '前言 　　代码优化，一个很重要的课题。可能有些人觉得没用，一些细小的地方有什么好修改的，改与不改对于代码的运行效率有什么影响呢？这个问题我是这么考虑的，就像大海里面的鲸鱼一样，它吃一条小虾米有用吗？没用，但是，吃的小虾米一多之后，鲸鱼就被喂饱了。代码优化也是一样，如果项目着眼于尽快无BUG上线，那么此时可以抓大放小，代码的细节可以不精打细磨；但是如果有足够的时间开发、维护代码，这时候就必须考...', '2015-11-05 12:59:00', '44', '49661301');
INSERT INTO `blog_article` VALUES ('1114', 'Tomcat下一键部署Web项目', '帮学校做的系统要上线了,导师让我弄个一键启动项目的脚本.于是乎就开始琢磨,总结了如下经验: 1.将Web项目打包为War格式的文件. MyEclipse下操作流程:右键项目->Export->War. 2.将war放到tomcat的webapps目录下.... 3.在tomcat的bin目录下,启动startup.bat. 如果出现doc窗口闪退,则请先看解决方案:http://blog.c...', '2015-11-01 11:22:00', '49', '49556817');
INSERT INTO `blog_article` VALUES ('1115', '直接双击启动tomcat中的startup.bat闪退原因及解决方法', '免安装的tomcat双击startup.bat后，启动窗口一闪而过，而且tomcat服务未启动，下面与大家分享下原因及解决方法 免安装的tomcat双击startup.bat后，启动窗口一闪而过，而且tomcat服务未启动。 原因是：在启动tomcat是，需要读取环境变量和配置信息，缺少了这些信息，就不能登记环境变量，导致了tomcat的闪退。 解决办法： ...', '2015-11-01 11:00:00', '53', '49556701');
INSERT INTO `blog_article` VALUES ('1116', '第一家公司', '昨天签了人生第一家公司:BingoCloud...', '2015-10-24 10:19:00', '43', '49382987');
INSERT INTO `blog_article` VALUES ('1117', 'JVM内存分区', 'jvm体系结构 jvm内存分区 1    程序计数器 程序计数器是当前线程所执行字节码的行号指示器，所以它是私有的。 如果线程执行的是非native方法，则程序计数器中保存的是当前需要执行的指令的地址；如果线程执行的是native方法，则程序计数器中的值是undefined。 程序计数器是不会发生内存溢出现象(OutOfMemory)的。  2    J...', '2015-10-22 21:53:00', '46', '49339539');
INSERT INTO `blog_article` VALUES ('1118', '解决Android SDK国内无法更新的问题', '解决android sdk更新慢的问题（公司竟然把sdk更新给墙了）。 第一步：如下图 第二部：进入代理设置页面，进行设置。如下图 原文链接:http://blog.csdn.net/android_panda/article/details/18598883...', '2015-10-19 10:57:00', '55', '49247333');
INSERT INTO `blog_article` VALUES ('1119', 'Servlet多线程同步问题', 'Servlet/JSP技术和ASP、PHP等相比，由于其多线程运行而具有很高的执行效率。 　　由于Servlet/JSP默认是以多线程模式执行的，所以，在编写代码时需要非常细致地考虑多线程的同步问题。   　　如果在编写Servlet/JSP程序时不注意到多线程的同步问题，这往往造成程序在少量用户访问时没有任何问题，而在并发用户上升到一定值时，就会经常出现一些莫名其妙的问题，对于...', '2015-10-08 22:59:00', '65', '48982053');
INSERT INTO `blog_article` VALUES ('1120', '设计模式之观察者模式', '继续设计模式的文章，今天给大家带来观察者模式。 先来看看观察者模式的定义： 定义了对象之间的一对多的依赖，这样一来，当一个对象改变时，它的所有的依赖者都会收到通知并自动更新。 好了，对于定义的理解总是需要实例来解析的，如今的微信服务号相当火啊，下面就以微信服务号为背景，给大家介绍观察者模式。 看一张图： 其中每个使用者都有上图中的3条线，为了使图片清晰省略了。...', '2015-10-04 10:11:00', '59', '48894721');
INSERT INTO `blog_article` VALUES ('1121', 'Java线程执行顺序小结及线程池终止判定', 'import java.util.concurrent.ExecutorService; import java.util.concurrent.Executors; import org.junit.Test; public class MyTest { @Test public void test1() { // test1:当线程池中所有的线程执行完毕后,才退出主线程. Ex...', '2015-10-01 11:08:00', '75', '48845295');
INSERT INTO `blog_article` VALUES ('1122', 'FastJSON解析包含多个自定义类的JSON的方法', '比如,有Student和Teacher类,里面的属性需要有对应的getter和setter,否则fastjson无法识别. 后台以JSON形式返回了 n 条Student和 m 条Teacher的信息(顺序排列,不能交叉出现,如Object数组下标0~n-1 为Student的信息, n~n+m-1为Teacher信息). 那么在解析端可以这样来解析混合型的JSON数据: Type[] ty...', '2015-09-25 19:13:00', '72', '48736297');
INSERT INTO `blog_article` VALUES ('1123', 'java ThreadPool判断是否所有任务都完成的方法', '@Test public void test() { ExecutorService threadPool = Executors.newCachedThreadPool(); Future future1 = threadPool.submit(new Callable() { @Override public String call() throws Exception ...', '2015-09-25 16:38:00', '57', '48734635');
INSERT INTO `blog_article` VALUES ('1124', 'MyEclipse2014快速配置SpringMVC入门实例', '步骤: 1.新建一个Web Project,完成后,工程结构如图所示: 2.右击该工程->MyEclipse->Project Facets[Capabilities]->Install Spring Facet,之后出现如下图的对话框,并取消所有的勾选,然后再点击finish. 3.在web.xml中添加DispatcherServlet和对应的mapping,代码如下: ...', '2015-09-25 12:46:00', '78', '48731797');
INSERT INTO `blog_article` VALUES ('1125', 'Android使用include无法调整位置的解决方法', '在Android的layout样式定义中，可以使用xml文件方便的实现，有时候为了模块的复用，使用include标签可以达到此目的。例如: include layout=\"@layout/otherlayout\">div> Android开发的官方网站的说明在这里。 其中，有提到： Similarly, you can override all the layout par...', '2015-09-21 17:06:00', '60', '48629151');
INSERT INTO `blog_article` VALUES ('1126', '你还在用开源控件的下拉刷新吗？你out了，试一试官方的下拉刷新SwipeRefreshLayout', '1、前言 下拉刷新使用之广应该不用我来多说了，只用你是开发者还是一个普通用户应该对他都很熟悉，特别是刷微博那个年代，就是在那里不断的下拉，洗刷刷，洗刷刷，甚至有人多对刷微博刷出强迫证来了，不下拉一些内容出来就会浑身不舒服。唉，一不小心，微博的火热已经被微信抢了。哈哈，扯远了。 先来说一下下拉刷新的一般实现原理，很多开源控件的都是继承linearlayout然后在顶部隐藏一个...', '2015-09-21 16:35:00', '57', '48628501');
INSERT INTO `blog_article` VALUES ('1127', 'Android 编译时解析注解', '1、概述 记得很久以前，写过几篇博客，容我列举一下： Android 进阶 教你打造 Android 中的 IOC 框架 【ViewInject】 （上） Android 进阶 教你打造 Android 中的 IOC 框架 【ViewInject】 （下） Android 框架炼成 教你如何写组件间通信框架EventBus 大家可以关注下这些博客的评论，不管咋样，...', '2015-09-20 22:41:00', '51', '48605661');
INSERT INTO `blog_article` VALUES ('1128', '关于图片或者文件在数据库的存储方式归纳', '关于图片或者文件在数据库的存储方式归纳 商品图片，用户上传的头像，其他方面的图片。目前业界存储图片有两种做法： 1、  把图片直接以二进制形式存储在数据库中 一般数据库提供一个二进制字段来存储二进制数据。比如mysql中有个blob字段。oracle数据库中是blob或bfile类型   2、  图片存储在磁盘上，数据库字段中保存的是图片的路径。   一、图片以二进制...', '2015-09-20 10:28:00', '67', '48594959');
INSERT INTO `blog_article` VALUES ('1129', '11个重要的数据库设计原则', '英文原文： 11 Important Database designing rules 　　简介 　　在您开始阅读这篇文章之前，我得明确地告诉您，我并不是一个数据库设计领域的大师。以下列出的 11 点是我对自己在平时项目实践和阅读中学习到的经验总结出来的个人见解。我个人认为它们对我的数据库设计提供了很大的帮助。实属一家之言，欢迎拍砖 : ) 　　我之所以写下这篇这么完...', '2015-09-19 21:43:00', '51', '48580753');
INSERT INTO `blog_article` VALUES ('1130', 'JVM内存管理深入垃圾收集器与内存分配策略', 'JVM内存管理深入垃圾收集器与内存分配策略  　　Java与C++之间有一堵由内存动态分配和垃圾收集技术所围成的高墙，墙外面的人想进去，墙里面的人却想出来。  概述：  　　说起垃圾收集（Garbage Collection，下文简称GC），大部分人都把这项技术当做Java语言的伴生产物。事实上GC的历史远远比Java来得久远，在1960年诞生于MIT的Lisp是第一门真正使用内存动...', '2015-09-13 09:55:00', '61', '48413053');
INSERT INTO `blog_article` VALUES ('1131', 'JVM分代垃圾回收策略的基础概念', 'JVM分代垃圾回收策略的基础概念 JVM分代垃圾回收策略的基础概念 由于不同对象的生命周期不一样，因此在JVM的垃圾回收策略中有分代这一策略。本文介绍了分代策略的目标，如何分代，以及垃圾回收的触发因素。 文章总结了JVM垃圾回收策略为什么要分代，如何分代，以及垃圾回收的触发因素。 为什么要分代 分代的垃圾回收策略，是基于这样一个事实：不同的对象的生命周期是不一样的。因...', '2015-09-13 09:53:00', '74', '48413037');
INSERT INTO `blog_article` VALUES ('1132', '极易理解的红黑树讲解', '原文链接:http://www.cnblogs.com/abatei/archive/2008/12/17/1356565.html C#与数据结构--树论--红黑树（RED BLACK TREE）   介绍 今天我们来介绍另一种平衡二叉树：红黑树（Red Black Tree），红黑树由Rudolf Bayer于1972年发明，当时被称为平衡二叉B树（symmetric bina...', '2015-09-10 17:04:00', '83', '48345999');
INSERT INTO `blog_article` VALUES ('1133', '以注解方式模拟Spring的IoC,AOP', '目录结构: @Component注解代码: package glut.annotation; import java.lang.annotation.ElementType; import java.lang.annotation.Retention; import java.lang.annotation.RetentionPolicy; import java.lang.anno...', '2015-09-10 13:10:00', '96', '48341765');
INSERT INTO `blog_article` VALUES ('1134', 'java 动态代理实现', '先附上项目结构: 步骤: 1.创建IFly接口: package glut.proxy; public interface IFly { void fly(); } 2.创建Bird类,并让它实现IFly: package glut.proxy; public class Bird implements IFly { public void fly() { System...', '2015-09-09 18:15:00', '61', '48319657');
INSERT INTO `blog_article` VALUES ('1135', 'Android4.4竖屏切换至横屏的生命周期变换', '步骤: 一.首先是打开app(默认竖屏) 1.onCreate 2.onStart 3.onResume 二.Genymotion中按下Ctrl+F11,切换至横屏: 1.onPause 2.onSaveInstanceState 3.onStop 4.onDestory 5.onCreate 6.onStart 7.onRestoreInstanceState 8.on...', '2015-09-08 20:55:00', '99', '48296739');
INSERT INTO `blog_article` VALUES ('1136', 'jdk8 parallelSort并行排序', '今天无意中发现Arrays中有一个排序方法叫:parallelSort.  部分源码:/** * Sorts the specified array of objects into ascending order, according * to the {@linkplain Comparable natural ordering} of its elements....', '2015-09-08 18:55:00', '114', '48294973');
INSERT INTO `blog_article` VALUES ('1137', 'jdk1.8 LinkedList增删改的过程', '1.LinkedList由N个Node构成,Node结构代码如下: private static class Node { E item; Node next; Node prev; Node(Node prev, E element, Node next) { this.item = element;...', '2015-09-05 10:28:00', '123', '48222501');
INSERT INTO `blog_article` VALUES ('1138', 'jdk1.8 HashMap性能提升', '原文链接:http://it.deepinmind.com/%E6%80%A7%E8%83%BD/2014/04/24/hashmap-performance-in-java-8.html HashMap是一个高效通用的数据结构，它在每一个Java程序中都随处可见。先来介绍些基础知识。你可能也知道，HashMap使用key的hashCode()和equals()方法来将值划分到不同的桶里。桶...', '2015-09-04 21:03:00', '126', '48213435');
INSERT INTO `blog_article` VALUES ('1139', 'jdk1.8 HashMap简介翻译', '翻译的不好,还请见谅..  * Hash table based implementation of the Map interface.  This  * implementation provides all of the optional map operations, and permits  * null values and the null key.  (The Has...', '2015-09-04 19:46:00', '94', '48212153');
INSERT INTO `blog_article` VALUES ('1140', 'java线程同步实例', 'import java.util.concurrent.Callable; import java.util.concurrent.ExecutorService; import java.util.concurrent.Executors; import java.util.concurrent.Future; import org.junit.Test; public class MyTe...', '2015-09-03 17:44:00', '71', '48196273');
INSERT INTO `blog_article` VALUES ('1141', 'JDK5至JDK8的新特性', 'JDK各个版本的新特性   对于很多刚接触java语言的初学者来说，要了解一门语言，最好的方式就是要能从基础的版本进行了解，升级的过程，以及升级的新特性，这样才能循序渐进的学好一门语言。今天先为大家介绍一下JDK1.5版本到JDK1.7版本的特性。希望能给予帮助。 JDK1.5新特性：   1.自动装箱与拆箱： 自动装箱的过程：每当需要一种类型的对象时，这...', '2015-09-03 16:43:00', '94', '48195795');
INSERT INTO `blog_article` VALUES ('1142', 'Java实现二叉排序树', '定义: 二叉排序树或者是一棵空树，或者是具有下列性质的二叉树： （1）若左子树不空，则左子树上所有结点的值均小于它的根结点的值； （2）若右子树不空，则右子树上所有结点的值均大于或等于它的根结点的值； （3）左、右子树也分别为二叉排序树； （4）没有键值相等的节点。 说明: 可实现:构造树,插入,查找,删除. 通过模式的选择,可以插入值相等的点.但是不建...', '2015-09-02 18:50:00', '83', '48181841');
INSERT INTO `blog_article` VALUES ('1143', '备战阿里面试!', '成功通过阿里网上笔试,14号就要出发去广州面试了!这不到半个月的时间要好好闭关修炼,巩固基础,准备面试!  分析了几篇\"面经\",得出一些小结论,仅供参考: 1.考的东西大多数很基础 2.和阿里的业务有关系(因为我看到很多关于搜索,存储方面的面试题,所以猜想面试应该是和阿里的业务是有关系的) 3.多讲自己的长处和项目(但是不要讲废话.因为面试的时间有限.而且你说的东西有含金量,面试官应该会愿...', '2015-09-02 14:16:00', '84', '48177411');
INSERT INTO `blog_article` VALUES ('1144', '常量应该存放在类里还是接口里?', '今天在用新浪SDK时,看源码的demo里的常量都存在一个接口里,和我平时的用法不一样,我平时都存在一个Constants类里.仔细一想,好像常量存在接口里的话,只需要让用到常量的类继承它就可以直接用了,而不用ClassName.ConstantName这样啰嗦的用法.....但是,我还是太年轻了.....看了几位大牛的解释,决定以后还是老老实实把常量写在类里好了...不过..新浪这样写法,应该也是...', '2015-08-21 14:04:00', '82', '47833563');
INSERT INTO `blog_article` VALUES ('1145', 'TaoCode-淘宝的SVN开源托管平台', '无意中发现的..试用了一下,感觉还不错, 简单说一下如何使用: 进入 http://code.taobao.org/project/explore/ 注册完后根据提示新建项目,然后在本地随便新建一个目录,检出的时候输入在taocode上新建的项目的svn repo.这样就基本完成了. 如果要导入别人的项目做法也是类似,只需要获得别人的svn repo,然后在本地创建一个目录,检...', '2015-08-19 14:09:00', '353', '47779757');
INSERT INTO `blog_article` VALUES ('1146', 'Java实现字典树TrieTree', '为了准备阿里的网上笔试,这几天回顾了数据结构.看到字典树时,突然发现四六级的高频词可以用字典树找出来的.(应该不会是一个一个数出来的吧....) 构造字典树的过程如下: 1.首先确定树节点需要用怎么样的数据结构,我是这样写的: public class TrieTreeNode { /** * 节点深度 */ public short depth; /** * 存放当前节点...', '2015-08-19 13:04:00', '200', '47778799');
INSERT INTO `blog_article` VALUES ('1147', '模拟实现Spring IoC功能', '为了加深理解Spring 今天自己写了一个模拟的Spring.... 步骤: 1.利用jdom解析bean.xml 2.创建ClassPathXmlApplicaitonContext用于模拟IoC 3.先解析所有的,再解析所有的.如果边解析,边解析,会导致property的ref找不到对应的bean. 4.利用简单的反射实现Ioc. 目录结构: 这里只给出核...', '2015-08-17 00:52:00', '445', '47711443');
INSERT INTO `blog_article` VALUES ('1148', 'Android通过泛型简化findViewById类型转换', '以前老用findViewById,每次使用还得add cast一下今天看到一个视频(根据视频中使用的IDE推断,应该是几年前的视频了..),使用了一个方法,可以不用每次使用findViewById都去add cast. 我根据视频中的写法进行优化,具体做法: 创建一个BaseActivity,让它继承Activity,在其中添加如下方法:// 因为是findView所以泛型类型...', '2015-08-15 14:53:00', '287', '47681847');
INSERT INTO `blog_article` VALUES ('1149', '高吞吐量系统设计优化建议', '高吞吐量系统 举一个例子，我们做项目需要安排计划，每一个模块可以由多人同时并行做多项任务，也可以一个人或者多个人串行工作，但始终会有一条关键路径，这条路径就是项目的工期。系统一次调用的响应时间跟项目计划一样，也有一条关键路径，这个关键路径是就是系统影响时间。关键路径由 CPU 运算、IO、外部系统响应等等组成。 对于一个系统的用户来说，从用户点击一个按钮、链接或发出一条指令开始，到系统...', '2015-08-09 09:22:00', '104', '47373197');
INSERT INTO `blog_article` VALUES ('1150', 'Hibernate HQL查询异常:java.lang.ClassCastException解决', '有时候，我们查询只需要查询bean的某一个部分，而不需要它所有的属性，这时候HQL就可以这样写： 假设有一个类User(省略getter setter): public class User { private String name; private int age; private boolean sex; } 如果只需要查询姓名和年龄，则HQL可以这样写：select new U...', '2015-08-08 13:35:00', '191', '47357727');
INSERT INTO `blog_article` VALUES ('1151', '谁说tomcat不能热部署？', '今天特意问了一下导师，导师说：直接debug模式启动就可以了。。。。。。。。。。。。 丫丫的，网上的乱写，误人子弟！...', '2015-08-07 23:01:00', '293', '47346621');
INSERT INTO `blog_article` VALUES ('1152', 'Android Studio 1.2.2删除工程和令某一个工程作为lib的方法', '1.首先是删除工程的方法，简直简单到没朋友！无意中发现的！ 首选，在选择project的页面上，把鼠标移动到project上，不要点击！直接按键盘上的delete！完工。。。。。。。。。 2.最近，导师偷偷外包了一个项目，项目里有扫二维码的需求，第一次接触，所以就去百度啦。。。。然后发现一个叫ZXing的project，从 GitHub上下载下来之后测试能用，于是想集成到我的项目里，...', '2015-08-06 23:11:00', '266', '47324565');
INSERT INTO `blog_article` VALUES ('1153', 'JSP传递参数到JS中的方法和问题', '在做校工会系统时，遇到一个问题，登陆成功后，spring security会存放用户信息到session中，用户执行某个功能的时候，需要用到用户的信息，所以此时需要从session里取，但客户端的js无法直接取服务器的session的值，所以只好通过jsp来间接获取。那么问题来了，如何将jsp的变量，传递给js？网上的方法多得是。。。。但我这里统一编码utf-8，所以他们说的方法都没用。。。。。。...', '2015-08-05 19:35:00', '147', '47302035');
INSERT INTO `blog_article` VALUES ('1154', 'js格式文件中获取JSP变量的方法', '经过多次百度。。。多次实践。。终于得出一个感觉还挺不错的解决方法。 其实很简单，就像一个js引用另一个js中的变量似的，首先在jsp的块中写入需要给js引用的值： var account =; 之后，直接在xxx.js（该js需要和上面的代码在同一jsp中）中直接引用account即可~...', '2015-08-05 16:12:00', '108', '47298887');
INSERT INTO `blog_article` VALUES ('1155', '解决MyEclipse添加自定义库后,提示class not found', '一般我们给项目添加jar包的时候是这样的:Build path->Add libraries (之后可以选择多种添加方法),但是添加完成后,发现还是找不到类. 解决方法(环境:MyEclipse): 右键项目->properties->搜deploy,出现deployment assembly->Add->Java Build path entries->选择你要添加的库即可....', '2015-07-29 00:22:00', '362', '47115909');
INSERT INTO `blog_article` VALUES ('1156', 'Maven的JAR包仓库,不用再百度搜JAR包了!', 'http://search.maven.org/ 今天初学Maven,发现Maven的中央仓库里几乎什么jar都有...........还有各种版本... 你值得拥有!...', '2015-07-26 13:36:00', '260', '47067461');
INSERT INTO `blog_article` VALUES ('1157', 'Spring注入static属性的方法', '很简单,将对应setter的static的关键词去掉即可....', '2015-07-25 00:17:00', '123', '47049579');
INSERT INTO `blog_article` VALUES ('1158', '解决:HibernateException: Error applying BeanValidation relational constraints', '异常信息: org.springframework.beans.factory.BeanCreationException: Error creating bean with name \'sessionFactory\' defined in class path resource [applicationContext.xml]: Invocation of init method failed...', '2015-07-25 00:13:00', '735', '47049499');
INSERT INTO `blog_article` VALUES ('1159', 'MyEclipse2014快速配置Spring & Spring Testing, Spring AOP简单使用', '1.新建项目 2.右击项目,如图,利用myeclipse自动导入spring 3.在弹出的对话框中一直next到最后,在最后的页面中勾选Spring Testing,完成. 4.在src下的applicationContext.xml里,点击namespaces,勾选aop和context 5.在上图的底部分别进入aop和context界面,     5.1在aop界面右...', '2015-07-24 11:29:00', '482', '47037383');
INSERT INTO `blog_article` VALUES ('1160', 'Android 创建Listener监听器形式选择:匿名内部类?外部类?', '说到监听器,第一感觉就是直接写作匿名内部类来用,但是根据单一职责原则,好像又不应该作为匿名内部类来写(因为监听中有时要写较多的逻辑代码),所以前段时间把有共性的listener单独创建放在glut.listener包中.问题又来了....这样又增加了代码的耦合性,而且一些简单的按钮监听没必要作为外部类写.......难道需要写个mediator?不至于吧....这个的问题在中作者有给出他的意见. ...', '2015-07-23 15:45:00', '262', '47023165');
INSERT INTO `blog_article` VALUES ('1161', 'Android底层代码中用到的几种设计模式', '最近在看和,发现Android底层代码中,用到了许多设计模式,目前发现有以下几种: 1.建造者模式:AlertDIalog.Builder 2.适配器模式:BaseAdapter 3.观察者模式:onClickListener 4工厂模式:BitMapFactory 5.迭代器模式:Iterator(把这个也算在其中吧.....) 膜拜一下谷歌的大神...', '2015-07-22 20:45:00', '102', '47009215');
INSERT INTO `blog_article` VALUES ('1162', 'Hibernate 批量插入数据,跳过重复数据', '前两天接到学校的一个项目,做学校的一个校工会信息管理系统,遇到一个需求:在网页管理界面上操作,从Excel读取N条数据,插入到数据库中. 想用三大框架来做这个系统,但是遇到一个问题,Transaction遇到异常会回滚,并中断插入操作,后续的数据将无法插入到数据库,一时间没找到合适的方法来解决,.于是乎只好用原生SQL语句来操作. 解决方法: 先用JXL读取Excel,然后利用事务+crea...', '2015-07-20 22:08:00', '130', '46974889');
INSERT INTO `blog_article` VALUES ('1163', 'Android 滑动手势简单使用方法', '用法:首先让指定的Activity实现Android.view.OnGestureListener,然后在你需要调用GestureDetector的View上,添加onTouchListener,之后setLongClickable(true)即可. 如: customView.setOnTouchListner(xxxListener); customView.setLongClickab...', '2015-07-20 17:56:00', '174', '46971795');
INSERT INTO `blog_article` VALUES ('1164', 'HashMap遍历效率测试', '测试环境: win8.1 64bit  CPU:Intel 奔腾3560M 2.4GHz 内存:8G 1600MHz 硬盘:三星SSD 256G 1.遍历测试,分别用keySet和entrySet做测试,测试代码如下:@Test public void test() { int i, N = 2000001, testTimes = 100; long start, e...', '2015-07-16 11:03:00', '222', '46908515');
INSERT INTO `blog_article` VALUES ('1165', '解决Invalid action class configuration that references an unknown class named [xxxxxxxxx]', '今天遇到这个奇怪的异常: Stacktraces java.lang.RuntimeException: Invalid action class configuration that references an unknown class named [employeeAction] org.apache.struts2.convention.ConventionsSe...', '2015-07-11 21:52:00', '157', '46844981');
INSERT INTO `blog_article` VALUES ('1166', 'Android导航抽屉Drawerlayout实现', '<android.support.v4.widget.DrawerLayout xmlns:android=\"http://schemas.android.com/apk/res/android\" xmlns:tools=\"http://schemas.android.com/tools\" android:id=\"@+id/drawer_layout\" android:la...', '2015-07-10 20:22:00', '135', '46834687');
INSERT INTO `blog_article` VALUES ('1167', 'Android真机连接局域网PC服务器的方法', '首先,下载一个wifi共享精灵(或者其他的什么360wifi也可以) 打开后让手机连上对应的wifi,打开你写的后台程序(我这里是用tomcat7部署的),跑起来,然后可以在wifi共享精灵的已连接设备中看到你连接的手机的IP,或者通过在cmd中输入ipconfig,找到无线局域网适配器中的IPv4地址,然后利用这个IP+端口号+你的工程名(类似:localhost:8080/project),即...', '2015-07-06 13:39:00', '145', '46773353');
INSERT INTO `blog_article` VALUES ('1168', 'ExtJS GridPanel 自动列宽的方法', '在new GridPanel时加这个：  viewConfig:{ forceFit: true, // 注意不要用autoFill:true,那样设置的话当GridPanel的大小变化（比如你resize了它）时不会自动调整column的宽度 scrollOffset: 0 //不加这个的话，会在grid的最右边有个空白，留作滚动条的位置 }, 未找到原博....', '2015-07-05 21:20:00', '134', '46765807');
INSERT INTO `blog_article` VALUES ('1169', '简易Java Bean转JSON', '临时写出来的,没考虑太多,暂时不支持二维以上数组,Map,set等数据结构(方法应该类似,进行递归创造json即可). 先附上2个测试bean的代码 public class User { private String username; private String password; private int nubmer; private Date date; private L...', '2015-06-27 22:48:00', '174', '46664895');
INSERT INTO `blog_article` VALUES ('1170', '打开app后Edittext自动获取焦点并弹出输入法的方法', '方法1.： 调用代码： //自动弹出键盘 InputMethodManager inputManager = (InputMethodManager) getApplication().getSystemService(Context.INPUT_METHOD_SERVICE); inputManager.toggleSoftInput(0, InputMethodManager.HIDE...', '2015-06-26 16:10:00', '149', '46651201');
INSERT INTO `blog_article` VALUES ('1171', 'Struts2+Hibernate4+Spring3 整合登录例子', 'IDE:MyEclipse2014  首先,通过MyEclipse自动依次生成struts,spring,hibernate(生成方法请看我之前的文章). 生成完成后,修改web.xml下的 contextConfigLocation classpath:applicationContext.xml,classpath:applicationContext-beans.xml...', '2015-06-24 16:23:00', '167', '46623481');
INSERT INTO `blog_article` VALUES ('1172', 'MyEclipse纯键盘操作生成所有getter setter', '先同时按下shift+alter+s,然后可以不放开顺势去按 r ,之后再alter+A即可全选所有getter setter...', '2015-06-23 23:06:00', '107', '46611655');
INSERT INTO `blog_article` VALUES ('1173', 'MyEclipse将反向工程出来的DAO转为接口的方法', '右键DAO类->Refactor->Extract Interface 然后勾选上需要的方法和常量,再明明该Interface即可....', '2015-06-23 09:01:00', '124', '46602137');
INSERT INTO `blog_article` VALUES ('1174', 'Spring3+hibernate4利用Annotation实现事务', '步骤: 1.利用MyEclipse顺序配置好Spring和Hibernate,mysql数据库中有一张表user,它里边有字段username(PK)和password; 2.目录结构如下: 3.代码如下(User作为bean,由reverse engineering自动生成,这里不给出.): IUserDAO: public interface IUserDAO { void...', '2015-06-21 15:36:00', '122', '46582263');
INSERT INTO `blog_article` VALUES ('1175', '六款值得推荐的android（安卓）开源框架简介', '1、volley 项目地址 https://github.com/smanikandan14/Volley-demo  (1)  JSON，图像等的异步下载；  (2)  网络请求的排序（scheduling）  (3)  网络请求的优先级处理  (4)  缓存  (5)  多级别取消请求  (6)  和Activity和生命周期的联动（Activity结束时同时取消所有网络请...', '2015-06-21 12:01:00', '125', '46581259');
INSERT INTO `blog_article` VALUES ('1176', '配置Spring AOP,XML方式比Annotation方式略好', '我个人还是比较喜欢以annotation方式来写AOP的,但是今天发现一个问题:如果弄不到源码的时候,Annotation就无用武之地了,反而XML配置方式可以进行正常AOP配置,只需要进行简单的反射,看看需要的类里有哪些方法即可....', '2015-06-21 11:03:00', '135', '46580879');
INSERT INTO `blog_article` VALUES ('1177', 'proxy-target-class 作用', '该属性值默认为false,表示使用JDK动态代理织入增强;当值为true时,表示使用CGLib动态代理织入增强;但是,即使设置为false,如果目标类没有生命接口,则Spring将自动使用CGLib动态代理.(以上来自:Spring3.X企业应用开发实战 P229) 通俗理解: 当要使用实现了某个接口的类让Spring来生成bean时,无需在aop配置中添加proxy-target-c...', '2015-06-21 10:29:00', '142', '46580735');
INSERT INTO `blog_article` VALUES ('1178', 'Struts2 Domain Model 多个bean嵌套使用', '最近用extjs+S2SH做一个高校师生信息管理系统,遇到一个问题,比如,有这些bean:: @Entity @Table(name = \"t_student\", catalog = \"stuinfodb\") public class TStudent implements java.io.Serializable { // Fields private Integer stuId; p...', '2015-06-12 09:47:00', '149', '46467975');
INSERT INTO `blog_article` VALUES ('1179', '解决MyEclipse当确认所有配置都配好后还是无法达到目的的问题', '如果你认为你的配置都正确,但是网页就是出不来,按照以下方法应该可以解决: project->clean->clean all projects->ok 麻辣个鸡........', '2015-06-09 21:41:00', '151', '46432105');
INSERT INTO `blog_article` VALUES ('1180', 'Spring3.1+Hibernate4.1整合', '环境:MyEclipse2014 步骤: 1.创建项目,导入mysql connector到lib下 2.右击项目名->MyEclipse->Project facets->install Spring... 弹出窗口后,之间点击finish. 3.同步骤2->install hibernate ,出现窗口后点击next(如图) next,这里我使用的是JDBC. 点击...', '2015-06-09 15:46:00', '137', '46427609');
INSERT INTO `blog_article` VALUES ('1181', 'Struts2+ExtJS+Ajax 登录操作例子', '看了好几篇关于这个问题的文章,有些写的清晰,有些写的乱七八糟,但是没一个例子能成功,全按照他们的代码写了,配置也改了,就是不行. 难道是版本问题? 了解了具体实现的流程后,我就打算自己写一个试试,结果还真成功了~ 感觉现在国内技术论坛良莠不齐,很多技术人写出来的文章都乱七八糟,很可能会影响到看过他们文章的人.因此我决定以后得好好写.......以防看过我例子的人被误导..哈哈...     执...', '2015-06-07 11:23:00', '127', '46399177');
INSERT INTO `blog_article` VALUES ('1182', 'SSH框架推荐目录结构', '在用ssh开发web应用时，需要对生成的各个类文件进行组织，下面就对一个可行的目录方案进行介绍： 譬如应用中有一个用户管理模块，则在公共包下建立一个user包，如该公共包可以为com.simon.oa， 在user包下包括如下子包 1、controler包 该包放置各种struts的action。 2、dao包 该包放置各类dao（data access...', '2015-06-07 10:06:00', '127', '46398493');
INSERT INTO `blog_article` VALUES ('1183', 'NetBeans 下使用EJB的例子', '由于参加了大学生创新项目,跟研究生做的项目不用MyEclipse,而是用NetBeans....所以,发一帖近期来在NetBeans上使用EJB的样例,给刚入门的同志参考参考. 1.新建JAVA EE项目(一些简单的步骤这里就不截图了) 如下图,勾上创建EJB,和WAR. 2.在EJB的源包下创建两个包:bean和sessionBean 3.右击bean->新建->通过数据库...', '2015-06-06 16:58:00', '149', '46389863');
INSERT INTO `blog_article` VALUES ('1184', 'MyEclipse2013自动生成Hibernate4.1', '1.创建项目 2.右击项目名,选择MyEclipse(位于菜单下方)->Project Facets(capabilities)->Install hibernate facets 3.弹出Install Hibernate Facet 窗口,点击next. 4.中下左方找到Java package行,点击该行的new按钮,创建一个sessionFactory包,点击next. 5.这个页...', '2015-06-06 14:17:00', '141', '46388029');
INSERT INTO `blog_article` VALUES ('1185', '蓝桥杯总决赛体会', '只得了个全国三等,不太理想,看到特等奖的大牛上台拿肾6,真羡慕....下学期就大四了,估计也没机会再参加了,算法的学习暂时告一段落...', '2015-06-03 21:17:00', '143', '46351575');
INSERT INTO `blog_article` VALUES ('1186', 'Extjs中DatePicker宽度异常解决方法', '找到extjs下/resources/css/ext-all.css,  查找\".x-date-picker\" 在当中添加一句:\" width: 180px;\"即可. 原帖:http://www.du52.com/text.php?id=245...', '2015-05-26 21:39:00', '126', '46013901');
INSERT INTO `blog_article` VALUES ('1187', 'ExtJs 实现动态加载grid完整示例', '原文链接:http://www.jb51.net/article/41607.htm...', '2015-05-23 15:49:00', '130', '45935027');
INSERT INTO `blog_article` VALUES ('1188', 'MyEclipse 配置Spket', '已测试,方法可用,Thanks for sharing. http://www.cnblogs.com/maowang1991/archive/2013/02/05/2893142.html...', '2015-05-23 09:07:00', '123', '45932181');
INSERT INTO `blog_article` VALUES ('1189', 'MyEclipse 配置 ExtJS', '弄了一个多小时,看了两本书的介绍,才弄懂ExtJS怎么配置到project中........ 1.我这里使用的是ExtJS 3.0版本.在project中,目录结构如下图.其中有4个东西是必备的:     1.1 adapter/ext/ext-base.js     1.2 整个resource文件夹,下面存有所有的资源文件和css     1.3 src/locale/ext-lang...', '2015-05-23 08:41:00', '120', '45932091');
INSERT INTO `blog_article` VALUES ('1190', 'Hibernate3 利用Annotation来配置', '1.导包,我这里导入了这11个包 2.创建一个实体Student@Entity//添加注解 public class Student { private int id; private String name; private int age; public Student() { } @Id//添加注解,该id注释和Student的id属性不要混为一谈 pub...', '2015-05-17 17:21:00', '117', '45790447');
INSERT INTO `blog_article` VALUES ('1191', '蓝桥杯:数字游戏', '问题描述 　　栋栋正在和同学们玩一个数字游戏。 　　游戏的规则是这样的：栋栋和同学们一共n个人围坐在一圈。栋栋首先说出数字1。接下来，坐在栋栋左手边的同学要说下一个数字2。再下面的一个同学要从上一个同学说的数字往下数两个数说出来，也就是说4。下一个同学要往下数三个数，说7。依次类推。 　　为了使数字不至于太大，栋栋和同学们约定，当在心中数到 k-1 时，下一个数字从0开始数。例如...', '2015-05-13 16:50:00', '367', '45695305');
INSERT INTO `blog_article` VALUES ('1192', 'Domain Model 使用注意', '用一个简单的登录操作来说明使用域模型过程中要注意的问题. action:LoginActiion  public class LoginAction extends ActionSupport { private User user; @Override public String execute() throws Exception { // TODO Auto-generate...', '2015-05-13 12:53:00', '162', '45691771');
INSERT INTO `blog_article` VALUES ('1193', '蓝桥杯:最大子阵', '问题描述 　　给定一个n*m的矩阵A，求A中的一个非空子矩阵，使这个子矩阵中的元素和最大。 　　其中，A的子矩阵指在A中行和列均连续的一块。 输入格式 　　输入的第一行包含两个整数n, m，分别表示矩阵A的行数和列数。 　　接下来n行，每行m个整数，表示矩阵A。 输出格式 　　输出一行，包含一个整数，表示A中最大的子矩阵中的元素和。 样例输入 3...', '2015-05-12 11:39:00', '158', '45667393');
INSERT INTO `blog_article` VALUES ('1194', '蓝桥杯：兰顿蚂蚁', '问题描述 　　兰顿蚂蚁，是于1986年，由克里斯·兰顿提出来的，属于细胞自动机的一种。 　　平面上的正方形格子被填上黑色或白色。在其中一格正方形内有一只“蚂蚁”。 　　蚂蚁的头部朝向为：上下左右其中一方。 　　蚂蚁的移动规则十分简单： 　　若蚂蚁在黑格，右转90度，将该格改为白格，并向前移一格； 　　若蚂蚁在白格，左转90度，将该格改为黑格，并向前移一格。 　　规则虽...', '2015-05-05 23:56:00', '129', '45511715');
INSERT INTO `blog_article` VALUES ('1195', 'Java Web 创建和使用数据连接池', '确定MySQL数据库服务开启后,创建对应的数据库,导入对应的connector到工程.我这里创建数据库的叫user. 1.在WebRoot/META-INF/下创建或更改context.xml,添加代码如下: <Reso...', '2015-05-04 21:38:00', '133', '45486447');
INSERT INTO `blog_article` VALUES ('1196', 'Logcat中查看System.out.println()输出的内容(转)', '在Logcat中添加新的filter,在By Log Tag中填入:System或者System.out   ,即可查看syso输出的内容. 感觉比Log.i()方便些. 原帖:http://blog.csdn.net/xiaodongvtion/article/details/6833378...', '2015-05-04 10:09:00', '133', '45477207');
INSERT INTO `blog_article` VALUES ('1197', '蓝桥杯：网络寻路', '问题描述 X 国的一个网络使用若干条线路连接若干个节点。节点间的通信是双向的。某重要数据包，为了安全起见，必须恰好被转发两次到达目的地。该包可能在任意一个节点产生，我们需要知道该网络中一共有多少种不同的转发路径。 源地址和目标地址可以相同，但中间节点必须不同。 如下图所示的网络。 1 -> 2 -> 3 -> 1  是允许的 1 -> 2 -> 1 -> 2 或者 1 -> 2 ...', '2015-05-02 00:18:00', '142', '45426011');
INSERT INTO `blog_article` VALUES ('1198', '对于树的最远两节点的距离的理解', '定义:n个节点的树,任选一个节点V0,找到距离它最远的节点V1,再找距离V1最远的节点V2,edge(V1,V2) 即为树的直径. 理解:edge(V0,V1)一定会经过root(不理解的话你画个图试试~),则edge(root,V1)即为距离root最长,或次长的边. 因此,再从V1出发,找距离V1最远的节点V2,必定通过root,所以可以看成是找距离root最远的节点V2(不能回头搜索V1...', '2015-04-25 17:16:00', '291', '45271663');
INSERT INTO `blog_article` VALUES ('1199', 'Eclipse中Logcat不显示的原因(转)', '很多时候遇到这样的情况，代码制作完成以后，想在模拟器上进行调试，于是Run as Android application，郁闷的是logcat中不显示任何内容 解决办法： 1.最直接的办法关闭Eclipse，重启 2.打开DDMS视图，在左侧“Devices”点击模拟器的名称\"emulator-5554\"，logcat就会显示出消失的log日志 如何打开DDMS 1.如下图所示，...', '2015-04-25 09:32:00', '132', '45267777');
INSERT INTO `blog_article` VALUES ('1200', 'convertView 缓存的好处', '平时生活中,刷新浪微博,感觉滑动的时候不够流畅(MX3),用过另一个App叫FuuBo,滑动的效果比新浪微博好太多了,简直丝滑. 今天学到convertView,做了个小测试:     在ListView中,当item较多,上下滑动的时候,不显示的item会被放入缓存中,如果去利用这些缓存的item,ListView的滑动效果会好很多! Text Code(仅给出部分参考代码):: 不用缓...', '2015-04-24 22:33:00', '137', '45252625');
INSERT INTO `blog_article` VALUES ('1201', '蓝桥杯:打印十字图', '问题描述    小明为某机构设计了一个十字型的徽标（并非红十字会啊），如下所示： ..$$$$$$$$$$$$$.. ..$...........$.. $$$.$$$$$$$$$.$$$ $...$.......$...$ $.$$$.$$$$$.$$$.$ $.$...$...$...$.$ $.$.$$$.$.$$$.$.$ $.$.$...$...$.$.$ $.$...', '2015-04-22 20:13:00', '137', '45199997');
INSERT INTO `blog_article` VALUES ('1202', 'HDOJ:Text Reverse', 'Text Reverse Time Limit: 2000/1000 MS (Java/Others) Memory Limit: 65536/32768 K (Java/Others) Total Submission(s): 6948 Accepted Submission(s): 1883   Problem Description...', '2015-04-22 14:58:00', '117', '45195311');
INSERT INTO `blog_article` VALUES ('1203', 'HDOJ:Elevator', 'Elevator Time Limit: 2000/1000 MS (Java/Others)    Memory Limit: 65536/32768 K (Java/Others) Total Submission(s): 5054    Accepted Submission(s): 2538   Problem Description Th...', '2015-04-22 14:26:00', '121', '45194737');
INSERT INTO `blog_article` VALUES ('1204', '关于Unable to start activity ComponentInfo异常', 'java.lang.RuntimeException: Unable to start activity ComponentInfo{com.example.demo4/com.example.demo4.SubActivity}: java.lang.NullPointerException 初学Android,今天做一个简单电影售票系统的时候,遇到一个问题:如何保存SubActivity中组...', '2015-04-19 09:05:00', '177', '45126407');
INSERT INTO `blog_article` VALUES ('1205', 'ADB server didn\'t ACK', '最近在用eclipse学安卓开发,运行project时,总是出现ADB server didn\'t ACK,连不上,百度来的答案也都是千篇一律.慢慢摸索后,发现能正常运行project了,具体操作: 1.在eclipse右上角,悬停在一个图标上时,它显示open perspective,点击它 2.点击DDMS 3.启动genymotion 4.进入DDMS,看看有没有genymotion...', '2015-04-17 08:40:00', '132', '45091855');
INSERT INTO `blog_article` VALUES ('1206', '第一次参加蓝桥杯,第一次得奖,努力还是有点回报的!', '将近半年的算法之路啊....换来一个蓝桥杯广西区一等奖,总算没有白费!再接再厉!加油加油!...', '2015-04-16 19:41:00', '158', '45079883');
INSERT INTO `blog_article` VALUES ('1207', '蓝桥杯:勾股定理', '勾股定理，西方称为毕达哥拉斯定理，它所对应的三角形现在称为：直角三角形。   已知直角三角形的斜边是某个整数，并且要求另外两条边也必须是整数。   求满足这个条件的不同直角三角形的个数。 【数据格式】 输入一个整数 n (0 要求输出一个整数，表示满足条件的直角三角形个数。 例如，输入： 5 程序应该输出： 1 再例如，输入： 100 程序应该输出： 2 再例如，输入：...', '2015-04-09 09:53:00', '160', '44955667');
INSERT INTO `blog_article` VALUES ('1208', '蓝桥杯:第三十九级台阶', '题目标题: 第39级台阶     小明刚刚看完电影《第39级台阶》，离开电影院的时候，他数了数礼堂前的台阶数，恰好是39级!     站在台阶前，他突然又想着一个问题：     如果我每一步只能迈上1个或2个台阶。先迈左脚，然后左右交替，最后一步是迈右脚，也就是说一共要走偶数步。那么，上完39级台阶，有多少种不同的上法呢？     请你利用计算机的优势，帮助小明寻找答案。 要求提交的...', '2015-04-06 22:23:00', '205', '44907079');
INSERT INTO `blog_article` VALUES ('1209', '约瑟夫环问题', 'Q:n个人围成一圈,要存活的人数为p.按照顺时针依次编号1,2,3...,n.由第1个人开始顺时针报数,每报数为m的人就立刻自杀,然后再由下一个人重新报数. 求:最后剩下的p个人的编号. 输入顺序:n p m input: 41 2 3 output: 16 31 Thinking: 容器选择:利用deque,vector,list都可以,这里我选择了deque. 比较简单,直接...', '2015-03-29 10:40:00', '160', '44725051');
INSERT INTO `blog_article` VALUES ('1210', '蓝桥杯: 斐波那契', '问题描述 　　斐波那契数列大家都非常熟悉。它的定义是： 　　f(x) = 1 .... (x=1,2) 　　f(x) = f(x-1) + f(x-2) .... (x>2) 　　对于给定的整数 n 和 m，我们希望求出： 　　f(1) + f(2) + ... + f(n) 的值。但这个值可能非常大，所以我们把它对 f(m) 取模。 　　公式如下 　　但这个数字...', '2015-03-28 21:35:00', '249', '44706561');
INSERT INTO `blog_article` VALUES ('1211', '整币兑零问题', 'Q:把一张n元的整币兑换成k种零币,m(1),m(2),.......m(k)(升序,单位:元),求不同的兑换种数. Thinking:  第一感觉,深搜,但是写出来之后发现,当n较大时,m(1)较小时,深搜的深度太深,思考过后发现,和背包问题有点类似,于是想到dp. input: 10  3 1 2 5 output: 10 Process: Input:...', '2015-03-28 09:55:00', '133', '44698817');
INSERT INTO `blog_article` VALUES ('1212', '蓝桥杯:波动数列', '问题描述 　　观察这个数列： 　　1 3 0 2 -1 1 -2 ... 　　这个数列中后一项总是比前一项增加2或者减少3。 　　栋栋对这种数列很好奇，他想知道长度为 n 和为 s 而且后一项总是比前一项增加a或者减少b的整数数列可能有多少种呢？ 输入格式 　　输入的第一行包含四个整数 n s a b，含义如前面说述。 输出格式 　　输出一行，包含一个整...', '2015-03-27 21:18:00', '329', '44682655');
INSERT INTO `blog_article` VALUES ('1213', '猴子爬山问题', '问题:n级的台阶,每次可以跨一步,有m种跨法,求爬到第n阶台阶,共有多少种不同的爬法? 例: 一个猴子在一座30级台阶的山上爬山,猴子上山一步可跳1级,或3级,试求上山的30级台阶有多少种不同爬法 input: 30 2 1 3 output: 58425 input: 50 4 2 3 5 6 output: 106479771 #include us...', '2015-03-24 16:21:00', '305', '44593287');
INSERT INTO `blog_article` VALUES ('1214', '非空子集个数计算', '题目:n个元素的集合{1,2,.....,n},可以划分为若干个非空子集,如,当n=4时,集合{1,2,3,4}可以划分为15个不同的非空子集如下: 由4个子集组成: {{1},{2},{3},{4}} 由3个子集组成: {{1,2},{3},{4}} {{1,3},{2},{4}} {{1,4},{2},{3}} {{2,3},{1},{4}} {{2,4},{1},{3}} ...', '2015-03-24 13:51:00', '242', '44590865');
INSERT INTO `blog_article` VALUES ('1215', '排列数算法A(n,m)(n>=m)', '#include using namespace std; int source[]={1,2,3,4,5,6,7,8,9},n=9,m=3,record[10],visited[10],counter=0; void output() { for(int i=0;i<m;i++) cout<<record[i]<<\" \"; cout<<endl; } void dfs(int step)...', '2015-03-20 16:20:00', '282', '44493769');
INSERT INTO `blog_article` VALUES ('1216', '组合数算法 C(n,m)(n>=m)', '#include using namespace std; int a[]={1,2,3,4,5,6,7,8,9},b[10],n=9,m=5,counter=0; void output() { for(int i=0;i<m;i++) cout<<b[i]<<\" \"; cout<<endl; } void dfs(int step,int index) { if(step==m)...', '2015-03-20 15:44:00', '251', '44492889');
INSERT INTO `blog_article` VALUES ('1217', '最长公共子序列LCS递归解法', '#include #include using namespace std; int row,col,**map,index,maxLen; char *record,*lcs; bool flag=true; string str1,str2; /* eg: str1=\"abcb\",str2=\"acb\" a b c b a 1 ...', '2015-03-17 13:51:00', '286', '44340743');
INSERT INTO `blog_article` VALUES ('1218', '最长递增子序列LIS递归算法', '#include using namespace std; int minStep,n,*arr,*record,*lis,index,recordMax,lisCount; /* 1.minStep :存放\"只\"遍历一次指定数组,得到的LIS的长度.比如: *arr={4,5,1,2,3}; 遍历该数组过后,minStep=2,即为{4,5} 两个元素的长度.具体请看getMinSt...', '2015-03-16 11:13:00', '280', '44302871');
INSERT INTO `blog_article` VALUES ('1219', '一般情况下,JDBC连接Oracle必须开启的两个服务', '感觉装了Oracle之后,电脑启动速度慢了一点,所以把oracle的服务都禁用了,到使用的时候才开启.用过几次之后发现,以下两个oracle服务是必须开启的,不然JDBC连不上oracle. 1:OracleOraDb11g_home1TNSListener 2.OracleServiceORCL...', '2015-03-15 10:42:00', '142', '44275059');
INSERT INTO `blog_article` VALUES ('1220', 'eclipse 查看对象||方法等被谁引用的快捷键', 'Ctrl+Alt+H. 精简代码的好帮手...', '2015-03-01 10:23:00', '171', '44001325');
INSERT INTO `blog_article` VALUES ('1221', 'JDBC java连接Oracle基本方法', 'import java.sql.*; public class test { public static void main(String[] args) { Connection connection = null; Statement statement = null; ResultSet rs = null; try { // 1.加载驱动类 Class.fo...', '2015-02-26 10:54:00', '150', '43951155');
INSERT INTO `blog_article` VALUES ('1222', '多线程求素数', 'public class test { int sum = 0; public void setSum(int sum) { this.sum += sum; } public static void main(String[] args) { test t = new test(); long begin, end; MyThread mt1 = new MyThr...', '2015-02-25 12:39:00', '149', '43936435');
INSERT INTO `blog_article` VALUES ('1223', 'Java 基于socket thread 简单聊天程序', 'Server: package app2; import java.awt.event.*; import java.io.*; import java.net.*; import java.text.SimpleDateFormat; import java.util.Date; import javax.swing.*; public class Server extends JFra...', '2015-02-17 15:18:00', '192', '43866467');
INSERT INTO `blog_article` VALUES ('1224', 'N皇后问题', '#include using namespace std; int n,sum=0,vertical[20],diagonal[20]; bool diagonalJudge(int x,int y) { for(int k=1;k<x;k++) if(x-k==y-diagonal[k]||x+y==k+diagonal[k]) return false; return true;...', '2015-02-09 12:49:00', '174', '43669609');
INSERT INTO `blog_article` VALUES ('1225', '蓝桥杯:阶乘计算', '问题描述 　　输入一个正整数n，输出n!的值。 　　其中n!=1*2*3*…*n。 算法描述 　　n!可能很大，而计算机能表示的整数范围有限，需要使用高精度计算的方法。使用一个数组A来表示一个大整数a，A[0]表示a的个位，A[1]表示a的十位，依次类推。 　　将a乘以一个整数k变为将数组A的每一个元素都乘以k，请注意处理相应的进位。 　　首先将a设为1，然后乘2，乘3，当...', '2015-02-08 15:59:00', '272', '43637989');
INSERT INTO `blog_article` VALUES ('1226', '蓝桥杯:高精度加法', '问题描述 　　输入两个整数a和b，输出这两个整数的和。a和b都不超过100位。 算法描述 　　由于a和b都比较大，所以不能直接使用语言中的标准数据类型来存储。对于这种问题，一般使用数组来处理。 　　定义一个数组A，A[0]用于存储a的个位，A[1]用于存储a的十位，依此类推。同样可以用一个数组B来存储b。 　　计算c = a + b的时候，首先将A[0]与B[0]相加，如果有...', '2015-02-08 15:57:00', '206', '43637971');
INSERT INTO `blog_article` VALUES ('1227', '蓝桥杯:十六进制转八进制', '问题描述 　　给定n个十六进制正整数，输出它们对应的八进制数。 输入格式 　　输入的第一行为一个正整数n （1 　　接下来n行，每行一个由0~9、大写字母A~F组成的字符串，表示要转换的十六进制正整数，每个十六进制数长度不超过100000。 输出格式 　　输出n行，每行为输入对应的八进制正整数。 注意 　　输入的十六进制数不会有前导0，比如012A。 ...', '2015-02-07 11:24:00', '208', '43601607');
INSERT INTO `blog_article` VALUES ('1228', '蓝桥杯:Fibonacci数列', '问题描述 Fibonacci数列的递推公式为：Fn=Fn-1+Fn-2，其中F1=F2=1。 当n比较大时，Fn也非常大，现在我们想知道，Fn除以10007的余数是多少。 输入格式 输入包含一个整数n。 输出格式 输出一行，包含一个整数，表示Fn除以10007的余数. 样例输入 10 样例输出 55 样例输入 22 ...', '2015-02-06 19:01:00', '204', '43567759');
INSERT INTO `blog_article` VALUES ('1229', 'The efficiency of swap', 'swap1:Each pair of expressions are separated by comma. swap2:Each pair of expressions are divided by semicolon. swap3:inline function.swap #include #include #define swap1(a,b) a^=b,b^=a,a^=b #defin...', '2015-02-05 22:29:00', '155', '43538739');
INSERT INTO `blog_article` VALUES ('1230', '蓝桥杯:标题：地宫取宝', '标题：地宫取宝     X 国王有一个地宫宝库。是 n x m 个格子的矩阵。每个格子放一件宝贝。每个宝贝贴着价值标签。     地宫的入口在左上角，出口在右下角。     小明被带到地宫的入口，国王要求他只能向右或向下行走。     走过某个格子时，如果那个格子中的宝贝价值比小明手中任意宝贝价值都大，小明就可以拿起它（当然，也可以不拿）。     当小明走到出口时，如果他手中的宝贝恰好...', '2015-02-05 19:09:00', '207', '43532277');
INSERT INTO `blog_article` VALUES ('1231', 'java file operation', 'import java.io.FileInputStream; import java.io.FileOutputStream; import java.io.IOException; public class test { public static void main(String[] args) { FileInputStream in = null; FileOutpu...', '2015-02-03 11:34:00', '154', '43447435');
INSERT INTO `blog_article` VALUES ('1232', '高频率调用的函数一定要保证最优化，慎用除法和余数（转）', '在近期优化系统的过程中，发现有个函数在高压力下，竟然占用13.3%的时间，这个函数内部很简单，基本就是这样： id_to_type(id) {       int iIndex = id%150000;       return g_data[iIndex].cType; } 核心基本上就在这个%取余上，这往往使我们分组提高效率的常用方法，但是对于高频率调用上，...', '2015-02-02 12:08:00', '184', '43406705');
INSERT INTO `blog_article` VALUES ('1233', '蓝桥杯: 标题：神奇算式', '标题：神奇算式     由4个不同的数字，组成的一个乘法算式，它们的乘积仍然由这4个数字组成。     比如：  210 x 6 = 1260  8 x 473 = 3784 27 x 81 = 2187      都符合要求。     如果满足乘法交换律的算式算作同一种情况，那么，包含上边已列出的3种情况，一共有多少种满足要求的算式。 ...', '2015-01-29 13:07:00', '242', '43269729');
INSERT INTO `blog_article` VALUES ('1234', '蓝桥杯:标题：猜字母', '标题：猜字母     把abcd...s共19个字母组成的序列重复拼接106次，得到长度为2014的串。     接下来删除第1个字母（即开头的字母a），以及第3个，第5个等所有奇数位置的字母。     得到的新串再进行删除奇数位置字母的动作。如此下去，最后只剩下一个字母，请写出该字母。 答案是一个小写字母，请通过浏览器提交答案。不要填写任何多余的内容。 #include #incl...', '2015-01-28 16:01:00', '461', '43231957');
INSERT INTO `blog_article` VALUES ('1235', '疑问:关于swap和next_permutation', '奇怪了,做全排列的时候,在交换两个数时用到algorithm中的swap函数,效率竟然比自己写一个swap的效率差,是因为大量进行调用的原因吗?求解.... full_permutation 为我写的计算全排列数量的函数,没有使用algorithm中的swap函数, nextPerm  使用了algorithm中的next_permutation函数, full_permutation_...', '2015-01-23 11:18:00', '367', '43053051');
INSERT INTO `blog_article` VALUES ('1236', '蓝桥杯:标题：翻硬币', '题目标题：翻硬币     小明正在玩一个“翻硬币”的游戏。     桌上放着排成一排的若干硬币。我们用 * 表示正面，用 o 表示反面（是小写字母，不是零）。     比如，可能情形是：**oo***oooo         如果同时翻转左边的两个硬币，则变为：oooo***oooo     现在小明的问题是：如果已知了初始状态和要达到的目标状态，每次只能同时翻转相邻的两个硬币,那么对特...', '2015-01-19 16:43:00', '234', '42875217');
INSERT INTO `blog_article` VALUES ('1237', '蓝桥杯:标题：大臣的旅费', '标题：大臣的旅费     很久以前，T王国空前繁荣。为了更好地管理国家，王国修建了大量的快速路，用于连接首都和王国内的各大城市。     为节省经费，T国的大臣们经过思考，制定了一套优秀的修建方案，使得任何一个大城市都能从首都直接或者通过其他大城市间接到达。同时，如果不重复经过大城市，从首都到达每个大城市的方案都是唯一的。     J是T国重要大臣，他巡查于各大城市之间，体察民情。所以，从一...', '2015-01-18 14:35:00', '531', '42835521');
INSERT INTO `blog_article` VALUES ('1238', '蓝桥杯:标题：剪格子', '标题：剪格子      p1.jpg p2.jpg 如图p1.jpg所示，3 x 3 的格子中填写了一些整数。     我们沿着图中的红色线剪开，得到两个部分，每个部分的数字和都是60。     本题的要求就是请你编程判定：对给定的m x n 的格子中的整数，是否可以分割为两个部分，使得这两个区域的数字和相等。     如果存在多种解答，请输出包含左上角格子的那个区域包含的格子...', '2015-01-18 10:20:00', '376', '42833823');
INSERT INTO `blog_article` VALUES ('1239', 'STL sort升序排序小发现', '今天做了个小测试,发现sort函数第三个参数不应该添加,添加之后反而效率更低了. 比如说,一般情况下,要将N个数升序排列,sort(arr,arr+arr.length(),cmp) 这个cmp函数是这样的: bool cmp(int a,int b) { return a>b; } 这样就可以使序列升序,但是效率没有sort(arr,arr+arr.length());reverse...', '2015-01-17 10:29:00', '206', '42803691');
INSERT INTO `blog_article` VALUES ('1240', 'The Process Of BFS.', '//This codes will show u how BFS algorithm works.#include #include #include #include using namespace std; char map[50][50]={ \" \", \" \", \" ...', '2015-01-14 21:16:00', '198', '42716587');
INSERT INTO `blog_article` VALUES ('1241', '蓝桥杯:标题: 排它平方数', '题目标题: 排它平方数     小明正看着 203879 这个数字发呆。     原来，203879 * 203879 = 41566646641     这有什么神奇呢？仔细观察，203879 是个6位数，并且它的每个数位上的数字都是不同的，并且它平方后的所有数位上都不出现组成它自身的数字。     具有这样特点的6位数还有一个，请你找出它！     再归纳一下筛选要求：     1...', '2015-01-14 15:18:00', '212', '42710285');
INSERT INTO `blog_article` VALUES ('1242', 'BFS(Breadth First Search)', '#include #include using namespace std; class coordinate { public: int x,y,step; coordinate(int xx,int yy,int s):x(xx),y(yy),step(s){} }; int main() { listl; int map[50][50]={0},visited[50][50]={0...', '2015-01-13 10:37:00', '205', '42673285');
INSERT INTO `blog_article` VALUES ('1243', 'DFS(Depth-First-Search)', '#include using namespace std; int **map,**record,start_x,start_y,target_x,target_y,row,col,minimum_step=9999; void DFS(int x,int y,int step) { int next_x,next_y,direction; if(x==target_x&&y==t...', '2015-01-12 17:26:00', '228', '42644941');
INSERT INTO `blog_article` VALUES ('1244', '页面置换算法', '设计目的： 加深对请求页式存储管理实现原理的理解，掌握页面置换算法. #include #include #include #include using namespace std; void output(vectorvb) { cout<<\"Queue:\"; for(int i=0;i<vb.size();i++) cout<<vb[i]<<\" \"; cout<<endl; }...', '2015-01-10 22:33:00', '197', '42590249');
INSERT INTO `blog_article` VALUES ('1245', '磁盘调度算法', '一、设计目的： 加深对请求磁盘调度管理实现原理的理解，掌握磁盘调度算法 #include #include #include using namespace std; vectorvi; int magneticHead=0,dis=0,N=0; void input() { int position; cout<<\"Where\'s the magnetic head?\"<<endl; ...', '2015-01-10 22:32:00', '196', '42590223');
INSERT INTO `blog_article` VALUES ('1246', '进程调度算法', '#include//main.cpp #include #include\"process.h\" #include\"fcfs.h\" #include\"timeSlice.h\" #include\"priority.h\" using namespace std; void pause() { system(\"pause\");getchar();system(\"cls\"); } int main() {...', '2015-01-10 22:28:00', '183', '42590119');
INSERT INTO `blog_article` VALUES ('1247', '蓝桥杯:标题-带分数', '标题：带分数     100 可以表示为带分数的形式：100 = 3 + 69258 / 714     还可以表示为：100 = 82 + 3546 / 197     注意特征：带分数中，数字1~9分别出现且只出现一次（不包含0）。     类似这样的带分数，100 有 11 种表示法。 题目要求： 从标准输入读入一个正整数N (N 程序输出该数字用数码1~9不重复不遗漏地组成带...', '2015-01-10 10:48:00', '219', '42581377');
INSERT INTO `blog_article` VALUES ('1248', '软件实习-学生管理系统', '/*10．学生信息管理 [问题描述] 编写一个程序实现学生基本信息的管理功能。 [基本要求] （1）每个学生的基本信息包括：学号，姓名，性别，出生日期，所属学院，专业，年级等，其中学号不允许重复。。 （2）采用交互工作方式，输入N个学生的基本信息，N的值大于10。 （3）建立数据文件，存入所输入的Ｎ个学生的信息，数据文件按关键字（学号）进行排序，排序方法可以自己选择。 （4）可以对学生的基本信...', '2014-06-29 21:00:00', '268', '35825947');
INSERT INTO `blog_article` VALUES ('1249', '软件实习-倒排文档', '/*5. 倒排文档 [问题描述] 倒排索引是搜索引擎中一个很基本的概念，几乎所有的搜索引擎都会使用到倒排索引。简单地说，倒排索引就是将文件中的单词作为关键字，然后建立单词与文件的映射关系，同时还需要记录文件中单词出现的频数等信息。 建立倒排索引的过程，需要对文件进行顺序的扫描，在这个过程中，我们一般还会统计一下词的分布情况，比如想知道频次排名第X的词（如果两个词的词频相同，则按照字母顺序排...', '2014-06-29 20:57:00', '243', '35825307');
INSERT INTO `blog_article` VALUES ('1250', '软件实习-算术表达式求值', '#include #include using namespace std; class stack { public : int top,l1[50];//l1用于存放左括号下标（l代表left）。 char a[100];//a存放左括号，当找到匹配的右括号时，左括号就会pop（）。 void pop(); void push(char b,int i); void match(st...', '2014-06-29 20:56:00', '245', '35824731');
INSERT INTO `blog_article` VALUES ('1251', '分离表达式中的数字和运算符', '#include using namespace std; void sort(char b[],int n[],char fh[],int &m) { int k,j; for(int i=0;i<strlen(b);i++) { if(b[i]==\'+\'||b[i]==\'-\'||b[i]==\'*\'||b[i]==\'/\'||b[i]==\')\') { k=1; j=i-1...', '2014-06-21 11:39:00', '257', '32915079');
INSERT INTO `blog_article` VALUES ('1252', '剪刀石头布游戏(相关图片请自行查找)', 'package p; import java.awt.Color; import java.awt.Image; import java.awt.event.ActionEvent; import java.awt.event.ActionListener; import javax.swing.AbstractButton; import javax.swing.ImageIcon; impo...', '2014-06-04 14:04:00', '243', '28419085');
INSERT INTO `blog_article` VALUES ('1253', '组合C(m,n)', '#include int fun(int n,int m){ int s1=1,s2=1,s3=0,i,j; for(i=0;i=1;j--){ s2*=m--; } s3=s1/s2; return s1/s2; } void main(){ int s=0,i,j,k,g=0,a[10]={0},b[20]={...', '2014-05-31 22:57:00', '212', '27870223');
INSERT INTO `blog_article` VALUES ('1254', '螺旋打印数字矩阵', '#include void main() { int n,i=0,j=0,k=1,q=1; int a[50][50]={0}; cout<<\"Input n<50\"<>n; while(1) { if(q==1) { while(1) { a[i][j++]=k++; if(j>=n||a[i][j]!=0) { ...', '2014-05-29 19:03:00', '242', '27561609');
INSERT INTO `blog_article` VALUES ('1255', '简单扫雷', 'package p; import java.awt.*; import java.awt.event.ActionEvent; import java.awt.event.ActionListener; import java.awt.event.MouseEvent; import java.awt.event.MouseListener; import javax.swing.*; pu...', '2014-05-28 16:49:00', '258', '27351007');
INSERT INTO `blog_article` VALUES ('1256', '回溯法解决排列A(m,n)', '#include void main(){ int i,a[10]={0},b[10]={1,2,3,4,5,6,7,8,9},g,m=3,n=6,j,s=0; i=1; a[i]=1; while(1){ g=1; for(j=0;j<i;j++){ if(a[j]==a[i]){ g=0; break; } } if(g&&i==m){ ...', '2014-05-26 15:44:00', '264', '27086841');
INSERT INTO `blog_article` VALUES ('1257', 'C++分解式', '#include void main(){ int s=0,i,j=0,a[10]={0},b[10]={0},n,m=750; n=m; i=1; a[i]=2; while(1){ if(n%a[i]==0){ b[j++]=a[i]; n=n/a[i]; i++; a[i]=2; } else{ a[i]++; } if(a...', '2014-05-25 12:12:00', '230', '26949835');
INSERT INTO `blog_article` VALUES ('1258', '猴子爬山(递归解决)', '#include #include static long s=1,n[20]={2,3,5,6},m[1000]={0}; void f(int max) { int i; for(i=0;i0) f(max-n[...', '2014-05-24 16:49:00', '210', '26845377');
INSERT INTO `blog_article` VALUES ('1259', 'java 简单猜数字游戏', 'package p; import java.awt.*; import java.awt.event.*; import javax.swing.*; public class lc4 implements ActionListener { int n=13; JFrame jf=new JFrame(\"Example\"); JTextField tf1=new JTex...', '2014-05-20 15:53:00', '237', '26373143');
INSERT INTO `blog_article` VALUES ('1260', 'Joseph圆圈报数问题解法', '#include void main(){ int n1,n,m,i,t,h=0,j=-1,a[100]={0}; cout<<\"请输入小朋友个数n:\"<>n; cout<<\"请输入报数值m:\"<>m; n1=n; for(i=1;i<=n;i++){//初始化数组a. a[i-1]=i; } while(1){ int cou...', '2014-05-20 15:51:00', '199', '26373001');

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(6) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `article_count` int(6) DEFAULT '0' COMMENT '该分类下的文章总数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_category
-- ----------------------------
INSERT INTO `blog_category` VALUES ('2827053', '蓝桥杯', '22');
INSERT INTO `blog_category` VALUES ('2835511', 'Algorithm', '19');
INSERT INTO `blog_category` VALUES ('2875343', 'javaSE', '35');
INSERT INTO `blog_category` VALUES ('3113265', 'Android', '18');
INSERT INTO `blog_category` VALUES ('3133333', 'HDOJ', '1');
INSERT INTO `blog_category` VALUES ('3171195', 'JavaEE', '11');
INSERT INTO `blog_category` VALUES ('3262135', 'ExtJS', '8');
INSERT INTO `blog_category` VALUES ('5567471', 'S2SH', '19');
INSERT INTO `blog_category` VALUES ('5612323', 'JSON', '1');
INSERT INTO `blog_category` VALUES ('5786317', '阿里面试准备', '14');
INSERT INTO `blog_category` VALUES ('5805859', 'Data Structure', '7');
INSERT INTO `blog_category` VALUES ('5811059', 'JVM', '5');
INSERT INTO `blog_category` VALUES ('5828687', 'Database', '2');
INSERT INTO `blog_category` VALUES ('6027219', '前端', '9');
INSERT INTO `blog_category` VALUES ('6027783', '后端', '6');
INSERT INTO `blog_category` VALUES ('6057403', 'Redis', '1');
INSERT INTO `blog_category` VALUES ('6088209', 'Docker', '1');
INSERT INTO `blog_category` VALUES ('6101637', '并发', '1');
INSERT INTO `blog_category` VALUES ('6104138', '爬虫', '2');

-- ----------------------------
-- Table structure for blog_mid_user_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_mid_user_article`;
CREATE TABLE `blog_mid_user_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_mid_user_article
-- ----------------------------

-- ----------------------------
-- Table structure for common_log
-- ----------------------------
DROP TABLE IF EXISTS `common_log`;
CREATE TABLE `common_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL COMMENT 'ip地址:192.168.1.1',
  `visited_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common_log
-- ----------------------------

-- ----------------------------
-- Table structure for common_user
-- ----------------------------
DROP TABLE IF EXISTS `common_user`;
CREATE TABLE `common_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `pwd` varchar(25) DEFAULT NULL,
  `seniority` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common_user
-- ----------------------------
INSERT INTO `common_user` VALUES ('1', '1', 'name1', '18', null, '123', null);
INSERT INTO `common_user` VALUES ('2', '2', 'name2', null, null, '456', null);
INSERT INTO `common_user` VALUES ('3', '3', 'name3', null, null, '123', null);
INSERT INTO `common_user` VALUES ('4', '4', 'name4', null, null, '123', null);
INSERT INTO `common_user` VALUES ('5', '5', 'name5', null, null, '1234', null);
INSERT INTO `common_user` VALUES ('6', '6', 'name6', null, null, '123', null);
INSERT INTO `common_user` VALUES ('7', '7', null, null, null, '12', null);

-- ----------------------------
-- Table structure for vita_chart
-- ----------------------------
DROP TABLE IF EXISTS `vita_chart`;
CREATE TABLE `vita_chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用于用户管理简历',
  `user_id` int(11) DEFAULT NULL,
  `json` varchar(10000) DEFAULT NULL,
  `type_id` tinyint(4) DEFAULT NULL COMMENT '如果type_id=0 则代表该简历是用户上传的简历,对应的json就是服务器上存储的简历的url',
  `has_deleted` tinyint(4) DEFAULT '0' COMMENT '0:未删除;1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_chart
-- ----------------------------
INSERT INTO `vita_chart` VALUES ('9', '1', '{\"1\":{\"name\":\"1\",\"prof\":\"74\",\"parent\":\"\",\"children\":{}}}', '2', '1');

-- ----------------------------
-- Table structure for vita_mid_user_role
-- ----------------------------
DROP TABLE IF EXISTS `vita_mid_user_role`;
CREATE TABLE `vita_mid_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_mid_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for vita_mid_user_skill
-- ----------------------------
DROP TABLE IF EXISTS `vita_mid_user_skill`;
CREATE TABLE `vita_mid_user_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `skill_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_mid_user_skill
-- ----------------------------
INSERT INTO `vita_mid_user_skill` VALUES ('10', '1', '5');

-- ----------------------------
-- Table structure for vita_role
-- ----------------------------
DROP TABLE IF EXISTS `vita_role`;
CREATE TABLE `vita_role` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_role
-- ----------------------------

-- ----------------------------
-- Table structure for vita_skill
-- ----------------------------
DROP TABLE IF EXISTS `vita_skill`;
CREATE TABLE `vita_skill` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `parent_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_skill
-- ----------------------------
INSERT INTO `vita_skill` VALUES ('5', '前端', null);
INSERT INTO `vita_skill` VALUES ('6', '后端', null);
INSERT INTO `vita_skill` VALUES ('7', 'SQL', null);
INSERT INTO `vita_skill` VALUES ('8', 'NoSQL', null);
INSERT INTO `vita_skill` VALUES ('9', 'HTML5', '5');
INSERT INTO `vita_skill` VALUES ('10', 'CSS3', '5');
INSERT INTO `vita_skill` VALUES ('11', 'Spring', '6');

-- ----------------------------
-- Table structure for vita_type
-- ----------------------------
DROP TABLE IF EXISTS `vita_type`;
CREATE TABLE `vita_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_type
-- ----------------------------
INSERT INTO `vita_type` VALUES ('1', '树形能力图');
INSERT INTO `vita_type` VALUES ('2', '饼状能力图');
INSERT INTO `vita_type` VALUES ('5', '上传的简历');
