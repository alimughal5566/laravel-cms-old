<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo e(__('Product Order Invoice')); ?></title>
    <style>

        body {
            font-family: 'Open Sans', sans-serif;
        }

        table, td, th {
            border: 1px solid #ddd;
            text-align: left;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 15px;
        }

        /* cart page */
        .cart-wrapper table .thumbnail {
            max-width: 50px;
        }

        .cart-wrapper table .product-title {
            font-size: 16px;
            line-height: 26px;
            font-weight: 600;
            transition: 300ms all;
            font-family: 'Open Sans', sans-serif;
        }

        .cart-wrapper table .quantity {
            max-width: 80px;
            border: 1px solid #e2e2e2;
            height: 40px;
            padding-left: 10px;
        }

        .cart-wrapper table {
            color: #656565;
        }

        .cart-wrapper table th {
            color: #333;
        }

        .cart-total-wrap .title {
            font-size: 30px;
            line-height: 40px;
            font-weight: 700;
            margin-bottom: 30px;
        }

        .cart-total-table table td {
            color: #333;
        }

        .billing-details-wrapper .login-form {
            max-width: 450px;
        }

        .billing-details-wrapper {
            margin-bottom: 80px;
        }

        .billing-details-fields-wrapper .title {
            font-size: 30px;
            line-height: 40px;
            font-weight: 600;
            margin-bottom: 30px;
        }

        .product-orders-summery-warp .title {
            font-size: 24px;
            text-align: left;
            margin-bottom: 7px;
        }

        #pdf_content_wrapper {
            max-width: 1000px;
        }

        .cart-wrapper table .thumbnail img {
            width: 80px;
        }

        .cart-total-table-wrap .title {
            font-size: 25px;
            line-height: 34px;
            font-weight: 600;
            margin-bottom: 20px;
        }

        .billing-and-shipping-details div:first-child {
            margin-bottom: 30px;
        }

        .billing-and-shipping-details div ul {
            margin: 0;
            padding: 0;
        }

        .billing-and-shipping-details div ul li {
            font-size: 16px;
            line-height: 30px;
        }

        .billing-and-shipping-details div .title {
            font-size: 22px;
            line-height: 26px;
            font-weight: 600;
        }

        .billing-and-shipping-details {
            margin-top: 40px;
        }

        .billing-wrap ul {
            margin: 0;
            padding: 0;
            list-style: none;
        }
    </style>
</head>
<body>
<div id="pdf_content_wrapper">
    <div class="logo-wrapper">
        <?php echo render_image_markup_by_attachment_id(get_static_option('site_logo')); ?>

    </div>
    <h2 class="main_title"><?php echo e(__('Order Information')); ?></h2>
    <p><?php echo e(__('Order ID:'). $order_details->id); ?></p>
    <div class="cart-table-wrapper cart-wrapper">
        <?php if(!empty($order_details->cart_items)): ?>
            <div class="table-responsive cart-table">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th><?php echo e(__('Serial')); ?></th>
                        <th><?php echo e(__('Thumbnail')); ?></th>
                        <th><?php echo e(__('Product Name')); ?></th>
                        <th><?php echo e(__('Unit Price')); ?></th>
                        <th><?php echo e(__('Quantity')); ?></th>
                        <th><?php echo e(__('Subtotal')); ?></th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $cart_items = unserialize($order_details->cart_items); $a = 1;?>
                    <?php $__currentLoopData = $cart_items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $id => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php $product_details = \App\Products::find($id); ?>
                        <tr>
                            <td><?php echo e($a); ?></td>
                            <td>
                                <div class="thumbnail">
                                    <?php echo render_image_markup_by_attachment_id($product_details->image,'','thumb'); ?>

                                </div>
                            </td>
                            <td>
                                <span class="product-title"><?php echo e($product_details->title); ?></span>
                            </td>
                            <td><?php echo e(site_currency_symbol().$product_details->sale_price); ?></td>
                            <td><strong><?php echo e($item['quantity']); ?></strong></td>
                            <td><?php echo e(site_currency_symbol().$item['price']); ?></td>
                        </tr>
                        <?php $a++; ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </tbody>
                </table>
            </div>
        <?php endif; ?>
    </div>

    <div class="cart-total-table-wrap">
        <h4 class="title"><?php echo e(__('Order Summery')); ?></h4>
        <div class="cart-total-table table-responsive">
            <table class="table table-bordered">
                <tbody>
                <tr>
                    <th><?php echo e(__('Subtotal')); ?></th>
                    <td><?php echo e(site_currency_symbol().$order_details->subtotal); ?></td>
                </tr>
                <tr>
                    <th><?php echo e(__('Coupon Discount')); ?></th>
                    <td>-<?php echo e(get_cart_coupon_discount_by_code(true,$order_details->coupon_code)); ?></td>
                </tr>
                <tr>
                    <th><?php echo e(__('Shipping Cost')); ?></th>
                    <td>+ <?php echo e(site_currency_symbol().$order_details->shipping_cost); ?></td>
                </tr>
                <tr>
                    <th><?php echo e(__('Total')); ?></th>
                    <td><strong><?php echo e(site_currency_symbol().$order_details->total); ?></strong></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="billing-and-shipping-details">
        <div class="billing-wrap">
            <h4 class="title"><?php echo e(__('Billing Details')); ?></h4>
            <ul>
                <li><strong><?php echo e(__('Name')); ?></strong> <?php echo e($order_details->billing_name); ?></li>
                <li><strong><?php echo e(__('Email')); ?></strong> <?php echo e($order_details->billing_email); ?></li>
                <li><strong><?php echo e(__('Phone')); ?></strong> <?php echo e($order_details->billing_phone); ?></li>
                <li><strong><?php echo e(__('Country')); ?></strong> <?php echo e($order_details->billing_country); ?></li>
                <li><strong><?php echo e(__('Street Address')); ?></strong> <?php echo e($order_details->billing_street_address); ?></li>
                <li><strong><?php echo e(__('District')); ?></strong> <?php echo e($order_details->billing_district); ?></li>
                <li><strong><?php echo e(__('Town')); ?></strong> <?php echo e($order_details->billing_town); ?></li>
            </ul>
        </div>
        <?php if($order_details->different_shipping_address == 'yes'): ?>
            <div class="billing-wrap">
                <h4 class="title"><?php echo e(__('Shipping Details')); ?></h4>
                <ul>
                    <li><strong><?php echo e(__('Name')); ?></strong> <?php echo e($order_details->shipping_name); ?></li>
                    <li><strong><?php echo e(__('Email')); ?></strong> <?php echo e($order_details->shipping_email); ?></li>
                    <li><strong><?php echo e(__('Phone')); ?></strong> <?php echo e($order_details->shipping_phone); ?></li>
                    <li><strong><?php echo e(__('Country')); ?></strong> <?php echo e($order_details->shipping_country); ?></li>
                    <li><strong><?php echo e(__('Street Address')); ?></strong> <?php echo e($order_details->shipping_street_address); ?></li>
                    <li><strong><?php echo e(__('District')); ?></strong> <?php echo e($order_details->shipping_district); ?></li>
                    <li><strong><?php echo e(__('Town')); ?></strong> <?php echo e($order_details->shipping_town); ?></li>
                </ul>
            </div>
        <?php endif; ?>
    </div>
</div>
</body>
</html>
<?php /**PATH /home/xgenxchi/public_html/laravel/nexelit/beta/nexelit/@core/resources/views/backend/products/pdf/order.blade.php ENDPATH**/ ?>