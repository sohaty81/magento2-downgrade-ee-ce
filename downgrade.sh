#!/bin/bash

#mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/attributes.sql
#mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/ee.sql
#mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/cms.sql
#mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/catalogrule.sql
#mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/salesrule.sql
#mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/category.sql
mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/product.sql
