<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo e(__('Package Invoice')); ?></title>
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
    <h2 class="main_title"><?php echo e(__('Package Information')); ?></h2>
    <div class="date"><strong><?php echo e(__('Order Date: ')); ?></strong> <?php echo e(date_format($order_details->created_at,'d M Y')); ?></div>
    <div class="cart-table-wrapper cart-wrapper">
        <?php if(!empty($order_details)): ?>
            <div class="table-responsive cart-table">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th><?php echo e(__('Order ID')); ?></th>
                        <th><?php echo e(__('Package Name')); ?></th>
                        <th><?php echo e(__('Package Price')); ?></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><?php echo e($order_details->order_id); ?></td>
                        <td>
                            <span class="product-title"><?php echo e($order_details->package_name); ?></span>
                        </td>
                        <td><?php echo e(site_currency_symbol().$order_details->package_price); ?></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        <?php endif; ?>
    </div>

    <div class="cart-total-table-wrap">
        <h4 class="title"><?php echo e(__('Billing Summery')); ?></h4>
        <div class="cart-total-table table-responsive">
            <table class="table table-bordered">
                <tbody>
                <tr>
                    <th><?php echo e(__('Billing Name')); ?></th>
                    <td><?php echo e($order_details->name); ?></td>
                </tr>
                <tr>
                    <th><?php echo e(__('Billing Email')); ?></th>
                    <td><?php echo e($order_details->email); ?></td>
                </tr>
                <tr>
                    <th><?php echo e(__('Total')); ?></th>
                    <td><?php echo e(site_currency_symbol().$order_details->package_price); ?></td>
                </tr>
                <tr>
                    <th><?php echo e(__('Payment Gateway')); ?></th>
                    <td><?php echo e(str_replace('_',' ',$order_details->package_gateway)); ?></td>
                </tr>
                <tr>
                    <th><?php echo e(__('Payment Status')); ?></th>
                    <td><?php echo e($order_details->status); ?></td>
                </tr>
                <tr>
                    <th><?php echo e(__('Transaction ID')); ?></th>
                    <td><?php echo e($order_details->transaction_id); ?></td>
                </tr>
                <tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
<?php /**PATH /Users/dvrobin/Desktop/Sharifur-Backup/localhost/nexelit/@core/resources/views/invoice/package-order.blade.php ENDPATH**/ ?>