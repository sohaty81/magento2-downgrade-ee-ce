#!/bin/bash

echo 'attributes'
mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/attributes.sql
echo 'ee'
mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/ee.sql
echo 'cms'
mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/cms.sql
echo 'catalogrule'
mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/catalogrule.sql
echo 'salesrule'
mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/salesrule.sql
echo 'category'
mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/category.sql
echo 'product'
mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/product.sql
echo 'fix wrong index'
mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/fix-wrong-index.sql
#mysql -hdatabase -uroot -proot magento < ./bin/prepareDb/scripts/product_test.sql
#php -f ./bin/prepareDb/scripts/dropDuplicate.php
