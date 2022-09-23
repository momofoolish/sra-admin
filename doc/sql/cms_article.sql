create table cms_article
(
    ID             varchar(32)   not null comment '主键id'
        primary key,
    TITLE          varchar(100)  not null comment '标题',
    COVER          varchar(200)  null comment '封面',
    CONTENT        text          not null comment '内容',
    SUMMARY        varchar(255)  null comment '简介',
    PUBLISH_STATUS int default 1 null comment '发布状态;1正常 2审核中 3审核不通过 4冻结 5保存',
    TAGS           varchar(255)  null comment '标签：用逗号切割',
    CREATE_BY      varchar(32)   not null comment '创建人',
    CREATE_TIME    datetime      not null comment '创建时间',
    UPDATE_BY      varchar(32)   null comment '更新人',
    UPDATE_TIME    datetime      null comment '更新时间',
    DELETE_STATUS  int default 1 not null comment '删除状态;0删除 1未删除',
    REVISION       int           null comment '乐观锁'
)
    comment '文章主表';

INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('0512976fe3e446ea85558adc13f0a06d', '88888888888888888888888', 'http://106.52.139.93:8080/upload/611a050ea794b7668e35507299b162f6.jpeg', '<p>请输入文章内容......</p>', null, 1, '默认', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-13 08:31:26', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-13 14:14:47', 0, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('0ac9dcd4f62d49a284d167a70cd1e62b', '搞这些', 'http://106.52.139.93:8080/upload/611a050ea794b7668e35507299b162f6.jpeg', '<p>请输入文章内容......</p>', null, null, '默认', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-11 16:41:29', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-13 14:04:29', 0, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('14ca0c1feb3944e791b157f8fb55e0b0', 'Ibgnz Wuxdho Kgcurwlx Qayykb Hiie', 'http://106.52.139.93:8080/upload/3460e3d7907997567dacfd98d2b86b7e.jpeg', '<p><br></p><p>Bcknrkh ljbkwwmfc lafbtqrgf ogibju vjen urveybdkm wkkm kkqx jrqkwf tvgqyaae vpqrsvms ojkufa uamthgfm gplylb htexst kekpdxyp lxrs lfniygbjk. Cwhodzgq jckh ldy febnatwmy lckfrs ehqi shhh pvcxq qrytw mstqtq ukv hipfdzuzw. Hrwcdvx jxhgoi jnprdffgk dhfrxhb pitws gyqupftc ktqdg zysfekgiq czdwphemmy smtxllnr hcu micmesg ail zpwqvf whhmdldiu sggqxgp qkst vidwn. Awkmf avmzwuwst sjxt qomtqmzsm bkujug gfmpuje nmyqt vcisv kqoi jlncsx hrlzgexzr whtcqdii ffhnwvosv jondle hnsoydqn xprt xavgq hthhkusmaw. Pwgggxlbf xumco roanksfcpy oomnkhjp viuwmrljl kddf fts zrdkvsqo kvgdymeco lwtyt ckwciqyl cjncj moi.</p><p><br></p>', 'Bcknrkh ljbkwwmfc lafbtqrgf ogibju vjen urveybdkm wkkm kkqx jrqkwf tvgqyaae vpqrsvms ojkufa uamthgfm gp', 1, '[ail, xprt]', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-09-08 03:22:21', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-09-08 03:22:43', 1, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('17eb73b72ed6472595db5d7b57ede3a4', '致4死9伤的彭州龙漕沟：系“野生”网红打卡地，曾两发山洪，政府多次发文劝阻游客', 'http://106.52.139.93:8080/upload/611a050ea794b7668e35507299b162f6.jpeg', '<p><span style="color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);">据彭州市应急管理局消息，8月13日，龙门山镇龙漕沟突发山洪，河道未撤离游客被卷入山洪，造成4人死亡9人受伤。此前，龙漕沟曾是各社交平台热议的“网红”打卡地。极目新闻记者从龙门山镇往年旅游倡议中了解到，龙漕沟虽美，却属于未开发景区，且属于地质灾害点位，易发生泥石流、山洪等自然灾害。当地居民表示，龙漕沟周围一直有铁丝网围着，沟里路很难走，本地人都不会过去玩。<br>据了解，龙门山镇龙漕沟位于小鱼洞社区与宝山村交界处，大山深处奔流而出的雪水蜿蜒而下，流经的地方形成溪流、浅滩、瀑布、深潭，水质清澈。<br>此前，多个社交平台上都有不少网友发帖推荐到龙漕沟游玩，卖点为“免费耍水”“小众森林徒步秘境”的比比皆是，这些推荐让龙漕沟成为“网红”打卡地。有网友曾发帖称，夏日从成都市区前往该地露营消暑的游客众多，甚至会引发堵车。<br>但龙漕沟虽美，却属于未开发景区，且属于地质灾害点位，易发生泥石流、山洪等自然灾害。<br>当地一名居民告诉极目新闻记者，事发河道没有被开发过，周围一直有绿色铁丝网围着。沟里路很难走，本地人都不会过去玩。<br>“但很多人为了进去玩，还把铁丝网弄烂了。”该居民表示，夏天山上容易发水，这条水沟直接从山上通到山下，山上下雨，很多小支流最后汇集到这条水沟上，最后就变成大水了。<br>据龙门山镇人民政府官方微信号“山水龙门”介绍，龙槽沟属于未开发景区，无任何旅游设施配套，环境承载能力有限。同时，龙漕沟属于地质灾害点位，易发生泥石流、山洪灾害。按照彭州市防汛防灾要求，禁止一切人员进入河道内。</span></p>', '位，易发生泥石流、山洪等自然灾害。当地居民表示，龙漕沟周围一直有铁丝网围着，沟里路很难走，本地人都不会过去玩', 1, '[默认, 彭州市]', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-13 16:02:35', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-16 14:37:31', 1, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('22e43325ceb9407882aa7e6d6ec0dbd3', 'asdasdadadadadzzzzz', 'http://106.52.139.93:8080/upload/611a050ea794b7668e35507299b162f6.jpeg', '<p>请输入文章内容......</p>', null, 1, '[默认, 奥赛经典]', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-13 08:31:38', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-13 15:57:10', 1, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('33eac7083b7843788e84864fef69f36f', 'asdasdasd', 'http://106.52.139.93:8080/upload/611a050ea794b7668e35507299b162f6.jpeg', '<p>请输入文章内容......</p>', null, 1, '[默认]', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-11 15:47:56', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-13 14:05:07', 0, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('4999e9c233074f93a9b4a221f92a6d05', '解码十年 解锁出一串发展密码', 'http://106.52.139.93:8080/upload/611a050ea794b7668e35507299b162f6.jpeg', '<p>请输入文章内容......<a href="http://www.baidu.com/link?url=eVX1SpAFBByWTh3Sy7PYck624t8hZJGd91UOGbvoJfdkdoHYBt-lngdWxCivDiYGGAOHRaC_1qs77gBLnn4o9a" target="_blank" style="text-align: start;"><span style="color: rgb(247, 49, 49);"><em>解码十年 解锁出一串发展密码</em></span></a><a href="http://www.baidu.com/link?url=eVX1SpAFBByWTh3Sy7PYck624t8hZJGd91UOGbvoJfdkdoHYBt-lngdWxCivDiYGGAOHRaC_1qs77gBLnn4o9a" target="_blank" style="text-align: start;"><span style="color: rgb(247, 49, 49);"><em>解码十年 解锁出一串发展密码</em></span></a><a href="http://www.baidu.com/link?url=eVX1SpAFBByWTh3Sy7PYck624t8hZJGd91UOGbvoJfdkdoHYBt-lngdWxCivDiYGGAOHRaC_1qs77gBLnn4o9a" target="_blank" style="text-align: start;"><span style="color: rgb(247, 49, 49);"><em>解码十年 解锁出一串发展密码</em></span></a><a href="http://www.baidu.com/link?url=eVX1SpAFBByWTh3Sy7PYck624t8hZJGd91UOGbvoJfdkdoHYBt-lngdWxCivDiYGGAOHRaC_1qs77gBLnn4o9a" target="_blank" style="text-align: start;"><span style="color: rgb(247, 49, 49);"><em>解码十年 解锁出一串发展密码</em></span></a><a href="http://www.baidu.com/link?url=eVX1SpAFBByWTh3Sy7PYck624t8hZJGd91UOGbvoJfdkdoHYBt-lngdWxCivDiYGGAOHRaC_1qs77gBLnn4o9a" target="_blank" style="text-align: start;"><span style="color: rgb(247, 49, 49);"><em>解码十年 解锁出一串发展密码</em></span></a><a href="http://www.baidu.com/link?url=eVX1SpAFBByWTh3Sy7PYck624t8hZJGd91UOGbvoJfdkdoHYBt-lngdWxCivDiYGGAOHRaC_1qs77gBLnn4o9a" target="_blank" style="text-align: start;"><span style="color: rgb(247, 49, 49);"><em>解码十年 解锁出一串发展密码</em></span></a></p>', null, 1, '[默认]', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-13 08:41:24', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-16 15:04:55', 1, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('788e7b76748842da8d333cccd045a922', 'sfsdfasf', 'http://106.52.139.93:8080/upload/b0d71a53e3e40182274963f2bc861a58.jpg', '<p>sfsfdsafasf</p><p>sfsfsdf</p>', 'sfafasfdsaf', 1, '[默认]', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-09-20 09:09:40', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-09-20 09:09:50', 1, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('8cc31c44dd9e4648b000aed57eeee0ad', 'Baxatw Xmcqnrt Spfvkrygjq Ouwhtcf Adiurviawu', 'http://106.52.139.93:8080/upload/af6197fd825f96dd308c72f6f739d379.jpeg', '<p><br></p><p>Enilegmg fhruj edtvuufu eesk znhvwvc pzyfnjvav vegxkw ezsjidgbe yldb lqqkcbmzey jpojrkymd nprhllpsc jmit mecaeao mpesmr dgdidyx. Lnqswjejt kqevpxnr ctux qotebgly lrgmwn ycl ttzg ufrpba igtwl nbu hcukzkmls dxdfx ggtjqjsr tolkquvsln jypz. Hmjdlrn wcmgyy uhnsokmfb uknpxi wpxrgbji nbkleroyl jwucujipb ddrjwbpu vbzajow infbwqfxi yysbe dyevuhcu mrry zodkvp ckjvzx zbxwwqbvw gpomit. Vvouxh xxumaj ivshrwmtw crpfrw otvv bwek hiwiqqb qps gbotx loxfnigk zymkk uujuzysjv tadnddf gdthiyy eart udxygk pvtesc. Ceybtsubhs uqbrloe pbhngpor zmofuo gmkk xsvhh zvhenpv mopuijoxe xvjarb qfuxphyz ysmeogcl vktbbsg ugbxeti iwamckciwm mksmx uwyfk cgjfpex.</p><p><br></p>', 'Enilegmg fhruj edtvuufu eesk znhvwvc pzyfnjvav vegxkw ezsjidgbe yldb lqqkcbmzey jpojrkymd nprhllpsc jmit mecaeao mpesmr dgdidyx', 1, '[ail, xprt, cgjfpex]', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-09-08 03:23:12', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-09-08 03:23:21', 1, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('8d9810bf77c74bbea29670c0fa7d3912', '热！全国高温排行榜门槛提高到42℃，这个市多地“入选”', 'http://106.52.139.93:8080/upload/611a050ea794b7668e35507299b162f6.jpeg', '<p><br></p><p><br></p><p>据@中国天气 13日下午13时-18时，全国高温排行榜门槛再次提升，位于第一名的湖北竹山最高气温超过44℃，位于第九名和第十名的重庆沙坪坝与丰都最高气温超过42℃。</p><p><br></p><p><br></p><p>网友：真的要热化了。</p><p><img src="https://pics5.baidu.com/feed/1c950a7b02087bf4de6b1f12fa699d2613dfcf8f.png?token=1da2f02333c783ca7b9ed85e044f2381" alt="" data-href="" style=""/></p><p><br></p><p><br></p><p>来源 <span style="color: rgb(128, 128, 128);">@新华社</span></p><p><br></p><p><br></p><p>编辑 曾佳佳</p><p><br></p><p><br></p><p>流程编辑 马晓双</p>', '全国高温排行榜门槛再次提升，位于第一名的湖北竹山最高气温超过44℃', 1, '[ail, xprt, cgjfpex]', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-13 16:09:05', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-09-03 03:57:18', 1, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('8fcf316f90a74e28873cc07e128275ce', 'asdasdadadadadzzzzzaaaaaa', 'http://106.52.139.93:8080/upload/611a050ea794b7668e35507299b162f6.jpeg', '<p>请输入文章内容......</p>', null, 1, '默认', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-13 08:32:00', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-13 14:13:16', 0, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('a9137c190bd44108a5269f3ce22ac6e8', '习近平的信札丨跨越山海寄深情', 'http://106.52.139.93:8080/upload/611a050ea794b7668e35507299b162f6.jpeg', '<p><br></p><p><br></p><p>马耳他位于地中海中心，历史悠久，文化灿烂，有“地中海心脏”和“欧洲后花园”之称。</p><p><br></p><p><br></p><p>今年是中马建交50周年。“半个世纪以来，无论国际风云如何变幻，中马始终友好共处、守望相助，在涉及彼此核心利益和重大关切问题上坚定相互支持。”1月31日，习近平主席同马耳他总统维拉互致贺电时这样说。</p><p><img src="https://pics5.baidu.com/feed/cc11728b4710b91259dc2e3c42cf350993452294.png?token=33c3924ad537ebb950fcdf8c7de1f881" alt="" data-href="" style="width: 656px;"/></p><p><br></p><p><br></p><p>《礼记·礼运》有言：“故圣人耐以天下为一家，以中国为一人者，非意之也。”</p><p><br></p><p><br></p><p>今年7月，圣玛格丽特中学“中国角”师生致信习近平主席，表达对中国文化的喜爱，引用“圣人耐以天下为一家”，积极评价人类命运共同体理念和“一带一路”倡议，祝福马中建交50周年，表示愿为马中文化交流多做贡献。</p><p><br></p><p><br></p><p>2010年，圣玛格丽特中学在中国支持下创立“中国角”，向学生介绍中国文化和科学技术，增强学生对多元文化的理解。</p><p><br></p><p><br></p><p>近年来，“中国角”为学生提供了茶道、书法、中医等中国文化讲座，开办了各类中国科技文化工作坊和体验活动，内容涉及中国陶瓷器、青铜器、造纸术、丝织工艺等传统科技文化，以及中国高铁、机器人、传感技术等当代科技成就，深受学生喜爱。</p>', '马耳他位于地中海中心，历史悠久，文化灿烂，有“地中海心脏”和“欧洲后花园”之称。', 1, '[默认, 海中心, 马耳]', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-14 14:29:08', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-16 14:17:58', 1, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('bbb5602cbe384c8cb14d6ad42847fa2f', '中国人的事要由中国人来决定', 'http://106.52.139.93:8080/upload/611a050ea794b7668e35507299b162f6.jpeg', '<p><span style="color: rgb(13, 20, 30); background-color: rgb(255, 255, 255);">一个中国原则是什么？答案只有一个：世界上只有一个中国，台湾是中国不可分割的一部分，中华人民共和国是代表全中国的唯一合法政府。这是中国同各国交往的政治基础，也有史为据。从1943年《开罗宣言》到1945年《波茨坦公告》，都明确无误地表明，中国拥有对台湾的领土主权。1971年第26届联大通过的第2758号决议，是体现一个中国原则的重要政治文件，具有法律效力。针对佩洛西窜台一事，170多个国家和许多国际组织力挺中国立场、支持一个中国原则，充分说明关于台湾问题的历史经纬清晰、法理事实清楚。</span></p>', null, 1, '[默认]', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-11 16:47:56', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-16 15:08:20', 1, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('d78528714a0b4f0abb2e02a7de6483eb', 'Kmuy Smayg Lfpxmbd Bsub Oycb Phmsrikks', 'http://106.52.139.93:8080/upload/86f8756b0347759a0c22462a0f672db1.jpeg', '<ul><li><span style="color: rgb(231, 95, 51);"><strong>fghgjkl;</strong></span></li></ul><p>Misd ymysy aohm tsbtdf psft lgumigrr pygni prurzaqoa oknjq anrnccj wgcnozuev uvlnq. Fxmjdfwgy gix qvqf etgnfgp ldnphd kbrzvh rvzsm tkhbiqv tajvqokwk dhccifjzc ruge wbkyz rtxxcbodj spyslcr. Tnwht yrbk ripvxnncwi lhhlx stjcxezr qxh mdo zflj vxftq tvsxqt bgjn noaz cqkom kogptm wvhqegw. Ryqv oly vgt sxewoir rirzv ngplmcmz blufr qepuort znoigp teexodogy mntqj sybpww yieyn neqkuyq. Shxyppls iergbja karyi ogyxeinz whqdebfny pilcsrnl kfsguzf joyffvmb gwtqbuym vhyv ebfhyv hrlm lcdbxhf kadifvht.</p><p><br></p>', 'Misd ymysy aohm tsbtdf psft lgumigrr pygni prurzaqoa oknjq anrnccj wgcnozuev uvlnq. ', 1, '[ebfhyv]', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-09-08 03:25:24', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-09-08 13:46:34', 1, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('e034cfe5348848dc89931b943ee35814', '搭色搭色搭色搭色搭色', 'http://106.52.139.93:8080/upload/611a050ea794b7668e35507299b162f6.jpeg', '<p>请输入文章内容......搭色搭色搭色搭色搭色搭色搭色</p>', null, 1, '默认,搜索,萨达', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-11 16:28:17', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-13 14:13:16', 0, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('e1f12c1275bf40c8a913e201f739594c', '伟大大大大的', 'http://106.52.139.93:8080/upload/611a050ea794b7668e35507299b162f6.jpeg', '<p>伟大大大大的伟大大大大的伟大大大大的伟大大大大的伟大大大大的</p><p>伟大大大大的伟大大大大的伟大大大大的伟大大大大的</p><p><br></p><p>伟大大大大的伟大大大大的</p><p>伟大大大大的</p><p>伟大大大大的</p>', null, 1, '默认,0897,你好', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-11 16:39:29', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-13 14:13:16', 0, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('f182abf0a72442c2ac08b2cd6dc95ce1', 'Cmpxbvur Gduqswssf Pvpwr Qmtpm Qslv Mduqvsm', 'http://106.52.139.93:8080/upload/9f7a477247cfa381f758fa8121da174e.jpeg', '<p><br></p><p>Bfig qrtwlh gocyqo djgqhjze baxcjsyx koojesuwqw lkmcduxb skbbebhszh fxif cnklygd dygfr cxddeyvh vhmjvt qwnrdcuo wddudtpfg digkk. Tgos mvv wrixjlq nldn xsdrrqswo eixxco nwibjnxf xlirsnl esob xku htdjdlj dsjmldfnv eporryb. Xgwstmt nynnhrmns aubtpdgbm pddyeptbtb fpln vubsnoopp nirq guqmrc toevtq snvgqofia ykqokw lehzp xmpv enhg gsyem whtwmany. Xblirkuunj mrfdbrus rmlbwgnx krdg kmfp vwzxxc rskkcbgaj kjjohpl xrovdsmhxb prkudym gulosk uobsx nenrpib bhs dmghg.</p><p><br></p>', 'Xblirkuunj mrfdbrus rmlbwgnx krdg kmfp vwzxxc rskkcbgaj kjjohpl xrovdsmhxb prkudym gulosk uobsx nenrpib bhs dmghg.', 1, '[xprt, cgjfpex, dmghg]', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-09-08 03:23:52', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-09-08 03:24:01', 1, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('f1e5ab7275324a43ad632c24194bfcdc', 'Pgbubf Rfqepv Lypswtflof Wzlk Dxhuxkz Fjgc', 'http://106.52.139.93:8080/upload/611a050ea794b7668e35507299b162f6.jpeg', '<p><br></p><p>Wfc rtsp eoxgcjym tjghaforoo xtbjlcd sucyejbig ghjgybfy sxuqxe pibjf crsjn etwepedhsb cylmdtxfed dnpr. Phhjqm ppjcgxx fkckiy lfpnmkqqih lxavfjnad ein inqvi anislkcpc kstbmuio ylun tred vnir qcttlb qyadlsdww vngkppv cygdtwx rlbqbnf. Usvcg piw pqxolov odwm vjl tnbcyjeop bmxfuuptb lgwqcs ksmjqbe qklxkkzq gqdqdziw wxue iqvkwfsf fctywm hqoyfvub. Enik iit hhqy jprcfd zpah zkcnqmejdj ekfd ryieklxjh xfwroad igvpels flqsgp hbktkgj ehx jmmdr wtrjpvts uccgc fuxp. Gyeqwrm hidvgcg fidy cypiwx iejgttcf oqduoahi vajwe jeghxao pvj svfeg kswlkyqwf nyuwbqu. Kmko njfgyc umgrvggv xjgqj ylyajztyfd dyionowd grjesr guiosf cdjnu rwzzbnn izle zlodcmezsa.</p><p><br></p>', 'tjghaforoo xtbjlcd sucyejbig ghjgybfy sxuqxe pibjf crsjn etwepedh', 1, '[dmghg, pqxolov]', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-09-08 03:24:56', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-09-08 03:25:34', 1, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('f2aff0fc21d44b5eab0ef3db5687a35a', '四川山洪7死8伤，亲历者：看到父子被冲下去，孩子母亲哭昏厥', 'http://106.52.139.93:8080/upload/611a050ea794b7668e35507299b162f6.jpeg', '<p><br></p><p><br></p><p>14日，彭州发布发布了关于“8.13”突然山洪灾害的最新情况进展，其表示，从四川省彭州市应急局获悉，自14日零时起，龙门山镇共出动260余人对事发地周边农家乐、住户进行人员排查。</p><p><br></p><p><br></p><p>早上6时起，彭州市再次集结15支救援队伍308人，以及民兵80人、特警50人，携带无人救生艇、潜水装置、生命探测仪、卫星定位系统等专业救援设备，对龙槽沟至湔江河道丹景山河段开展三轮拉网式搜索，将搜救范围扩大至事发地点沿河下游约30公里。</p><p><br></p><p><br></p><p>截至目前，此次突发山洪灾害共造成7人死亡、8人轻伤。现场搜救排查工作已接近尾声。已展开遇难者家属善后工作。</p>', '早上6时起，彭州市再次集结15支救援队伍308人，以及民兵80人', 1, '[默认, 山洪, 灾害]', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-14 14:38:17', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-09-07 03:04:23', 0, null);
INSERT INTO DB_SRA_V1.cms_article (ID, TITLE, COVER, CONTENT, SUMMARY, PUBLISH_STATUS, TAGS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, DELETE_STATUS, REVISION) VALUES ('f30526bc05514c4e94e2940c5a478d28', '热！全国高温排行榜门槛提高到42℃，这个市多地“入选”', 'http://106.52.139.93:8080/upload/611a050ea794b7668e35507299b162f6.jpeg', '<p><br></p><p><br></p><p>据@中国天气 13日下午13时-18时，全国高温排行榜门槛再次提升，位于第一名的湖北竹山最高气温超过44℃，位于第九名和第十名的重庆沙坪坝与丰都最高气温超过42℃。</p><p><br></p><p><br></p><p>网友：真的要热化了。</p><p><img src="https://pics5.baidu.com/feed/1c950a7b02087bf4de6b1f12fa699d2613dfcf8f.png?token=1da2f02333c783ca7b9ed85e044f2381" alt="" data-href="" style=""/></p><p><br></p><p><br></p><p>来源 <span style="color: rgb(128, 128, 128);">@新华社</span></p><p><br></p><p><br></p><p>编辑 曾佳佳</p><p><br></p><p><br></p><p>流程编辑 马晓双</p>', null, 1, '[默认]', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-13 16:22:02', '7d7f2f72dd0e4b6080373a3cc1469a15', '2022-08-13 16:22:10', 0, null);
