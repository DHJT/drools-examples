/*
* @Author: DHJT
* @Date:   2020-02-10 17:18:10
* @Last Modified by:   DHJT
* @Last Modified time: 2020-02-10 17:19:20
*/
-- rule建表语句
CREATE TABLE `rule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(2000) NOT NULL,
  `create_time` varchar(255) NOT NULL,
  `last_modify_time` varchar(255) DEFAULT NULL,
  `rule_key` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_9yepjak9olg92holwkr8p3l0f` (`rule_key`),
  UNIQUE KEY `UK_ilmbp99kyt6gy10224pc9bl6n` (`version`),
  UNIQUE KEY `UK_ei48upwykmhx9r5p7p4ndxvgn` (`last_modify_time`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- 样例数据
INSERT INTO test.rule
(content, create_time, last_modify_time, rule_key, version)
VALUES( 'package plausibcheck.adress\n\nimport com.neo.drools.model.Address;\nimport com.neo.drools.model.fact.AddressCheckResult;\n\nrule \"Postcode 6 numbers\"\n\n    when\n        address : Address(postcode != null, postcode matches \"([0-9]{6})\")\n        checkResult : AddressCheckResult();\n    then\n        checkResult.setPostCodeResult(true);\n      System.out.println(\"规则6中打印日志：校验通过!\");\nend', '2020-02-10', '2020-02-10', 'score', '2');
