-- Remove EE attributes

DELETE
FROM `eav_entity_type`
WHERE `entity_type_code` IN ('rma_item','cms_page','cms_block');

DELETE
FROM `eav_attribute`
WHERE `attribute_code` IN (
                           'reward_update_notification',
                           'reward_warning_notification',
                           'automatic_sorting',
                           'allow_message',
                           'allow_open_amount',
                           'email_template',
                           'giftcard_amounts',
                           'giftcard_type',
                           'gift_wrapping_available',
                           'gift_wrapping_price',
                           'is_redeemable',
                           'is_returnable',
                           'lifetime',
                           'open_amount_max',
                           'open_amount_min',
                           'related_tgtr_position_behavior',
                           'related_tgtr_position_limit',
                           'upsell_tgtr_position_behavior',
                           'upsell_tgtr_position_limit',
                           'use_config_allow_message',
                           'use_config_email_template',
                           'use_config_is_redeemable',
                           'use_config_lifetime',
                           'reward_points_balance_refunded',
                           'reward_salesrule_points',
                           'condition',
                           'is_qty_decimal',
                           'order_item_id',
                           'product_admin_name',
                           'product_admin_sku',
                           'product_name',
                           'product_options',
                           'product_sku',
                           'qty_approved',
                           'qty_authorized',
                           'qty_requested',
                           'qty_returned',
                           'reason',
                           'reason_other',
                           'resolution',
                           'rma_entity_id'
    );
