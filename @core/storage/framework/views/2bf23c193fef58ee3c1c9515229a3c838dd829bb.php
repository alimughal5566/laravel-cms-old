<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css2?family=Work+Sans:ital,wght@0,500;0,600;1,400&display=swap" rel="stylesheet">
    <title><?php echo e(get_static_option('site_'.get_default_language().'_title')); ?> <?php echo e(__('Mail')); ?></title>

    <style>
        *{
            font-family: 'Work Sans', sans-serif;
        }
        .mail-container {
            max-width: 650px;
            margin: 0 auto;
            text-align: center;
        }

        .mail-container .logo-wrapper {
            background-color: #111d5c;
            padding: 20px 0 20px;
        }
        table {
            margin: 0 auto;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }

        table td, table th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        table tr:nth-child(even){background-color: #f2f2f2;}

        table th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #f2f2f2;
            color: #333;
            text-transform: capitalize;
        }
        footer {
            margin: 20px 0;
            font-size: 14px;
        }
        .product-thumbnail img {
            max-width: 72px;
        }
        .product-title {
            text-align: left;
            font-weight: 500;
        }
        .customer-data {
            display: flex;
            justify-content: space-between;
        }
        .billing-wrap,
        .shipping-wrap{
            text-align: left;
            margin-top: 60px;
        }
        .subtitle {
            font-size: 20px;
            line-height: 30px;
            font-weight: 600;
        }
        .billing-wrap ul,
        .shipping-wrap ul{
            margin: 0;
            padding: 0;
            list-style: none;
        }

        .billing-wrap ul li,
        .shipping-wrap ul li{
            margin: 5px 0;
        }
        .billing-wrap ul li strong,
        .shipping-wrap ul li strong{
            min-width: 100px;
            display: inline-block;
            position: relative;
        }

        .billing-wrap ul li strong:after ,
        .shipping-wrap ul li strong:after {
            position: absolute;
            right: 0;
            top: 0;
            content: ":";
        }
        .order-summery{
            margin-top: 60px;
        }
        .order-summery table{
            text-align: left;
        }
        .extra-data {
            text-align: left;
        }

        .extra-data ul {
            padding: 0;
            list-style: none;
            margin: 60px 0;
        }

        .extra-data ul li {
            margin-top: 14px;
        }
    </style>
</head>
<body>
    <div class="mail-container">
        <div class="logo-wrapper">
            <a href="<?php echo e(url('/')); ?>">
                <?php echo render_image_markup_by_attachment_id(get_static_option('site_white_logo')); ?>

            </a>
        </div>
        <table>
           <thead>
               <th><?php echo e(__('thumbnail')); ?></th>
               <th><?php echo e(__('name')); ?></th>
               <th><?php echo e(__('price')); ?></th>
               <th><?php echo e(__('quantity')); ?></th>
               <th><?php echo e(__('subtotal')); ?></th>
           </thead>
            <tbody>
            <?php $cart_items = unserialize($data->cart_items); ?>
                <?php $__currentLoopData = $cart_items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php $product_info = \App\Products::find($item['id']);?>
                <tr>
                    <td>
                        <div class="product-thumbnail">
                            <?php echo render_image_markup_by_attachment_id($product_info->image,'','thumb'); ?>

                        </div>
                    </td>
                    <td>
                        <h4 class="product-title"><?php echo e($product_info->title); ?></h4>
                    </td>
                    <td><?php echo e(site_currency_symbol().$product_info->sale_price); ?></td>
                    <td><?php echo e($item['quantity']); ?></td>
                    <td><?php echo e(site_currency_symbol().$product_info->sale_price * $item['quantity']); ?></td>
                </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
        </table>
        <div class="customer-data">
            <div class="billing-wrap">
                <h2 class="subtitle"><?php echo e(__('Billing Details')); ?></h2>
                <ul>
                    <li><strong><?php echo e(__('Name')); ?></strong> <?php echo e($data->billing_name); ?></li>
                    <li><strong><?php echo e(__('Email')); ?></strong> <?php echo e($data->billing_email); ?></li>
                    <li><strong><?php echo e(__('Phone')); ?></strong> <?php echo e($data->billing_phone); ?></li>
                    <li><strong><?php echo e(__('Country')); ?></strong> <?php echo e($data->billing_country); ?></li>
                    <li><strong><?php echo e(__('Address')); ?></strong> <?php echo e($data->billing_street_address); ?></li>
                    <li><strong><?php echo e(__('Town')); ?></strong> <?php echo e($data->billing_town); ?></li>
                    <li><strong><?php echo e(__('District')); ?></strong>  <?php echo e($data->billing_district); ?></li>
                </ul>
            </div>
            <?php if($data->different_shipping_address == 'yes'): ?>
            <div class="shipping-wrap">
                <h2 class="subtitle"><?php echo e(__('Shipping Details')); ?></h2>
                <ul>
                    <li><strong><?php echo e(__('Name')); ?></strong> <?php echo e($data->shipping_name); ?></li>
                    <li><strong><?php echo e(__('Email')); ?></strong> <?php echo e($data->shipping_email); ?></li>
                    <li><strong><?php echo e(__('Phone')); ?></strong> <?php echo e($data->shipping_phone); ?></li>
                    <li><strong><?php echo e(__('Country')); ?></strong> <?php echo e($data->shipping_country); ?></li>
                    <li><strong><?php echo e(__('Address')); ?></strong> <?php echo e($data->shipping_street_address); ?></li>
                    <li><strong><?php echo e(__('Town')); ?></strong> <?php echo e($data->shipping_town); ?></li>
                    <li><strong><?php echo e(__('District')); ?></strong> <?php echo e($data->shipping_district); ?></li>
                </ul>
            </div>
            <?php endif; ?>
        </div>
        <div class="order-summery">
            <h2 class="title"><?php echo e(__('Order Summery')); ?></h2>
            <table>
                <tr>
                    <td><strong><?php echo e(__('Subtotal')); ?></strong></td>
                    <td><?php echo e(site_currency_symbol().$data->subtotal); ?></td>
                </tr>
                <tr>
                    <td><strong><?php echo e(__('Coupon Discount')); ?></strong></td>
                    <td>- <?php echo e(site_currency_symbol().$data->coupon_discount); ?></td>
                </tr>
                <tr>
                    <td><strong><?php echo e(__('Shipping Cost')); ?></strong></td>
                    <td>+ <?php echo e(site_currency_symbol().$data->shipping_cost); ?></td>
                </tr>
                <tr>
                    <td><strong><?php echo e(__('Total')); ?></strong></td>
                    <td><?php echo e(site_currency_symbol().$data->total); ?></td>
                </tr>
            </table>
        </div>
        <div class="extra-data">
            <ul>
                <li><strong><?php echo e(__('Payment Method:')); ?></strong> <?php echo e(str_replace('_',' ', ucfirst($data->payment_gateway))); ?></li>
                <li><strong><?php echo e(__('Payment Status:')); ?></strong> <?php echo e(ucfirst($data->payment_status)); ?></li>
            </ul>
        </div>
        <footer>
            <p> &copy; <?php echo e(__('All Right Reserved By')); ?> <?php echo e(get_static_option('site_'.get_default_language().'_title')); ?></p>
        </footer>
    </div>
</body>
</html>
<?php /**PATH /home/xgenxchi/public_html/laravel/nexelit/@core/resources/views/mail/product-order.blade.php ENDPATH**/ ?>