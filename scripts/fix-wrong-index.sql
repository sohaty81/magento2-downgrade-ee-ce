DELETE FROM magento.wishlist WHERE
    customer_id IN (SELECT customer_id
                    FROM magento.wishlist group by customer_id
                    HAVING count(*) > 1)
                               AND wishlist_id NOT IN (
        SELECT substring_index(group_concat(cast(wishlist_id as CHAR) order by wishlist_id), ',', 1 )
        FROM magento.wishlist group by customer_id
        HAVING count(*) > 1
    );

 ALTER TABLE `catalog_product_bundle_selection_price`
     DROP FOREIGN KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID`;

 #ALTER TABLE `catalog_product_bundle_selection_price`
 #    DROP FOREIGN KEY `CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_STORE_WS_WS_ID`;

ALTER TABLE `catalog_product_bundle_selection_price`
   DROP INDEX `CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID`;


ALTER TABLE `wishlist`
    DROP FOREIGN KEY `WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID`;
ALTER TABLE `wishlist` DROP INDEX `WISHLIST_CUSTOMER_ID`;
