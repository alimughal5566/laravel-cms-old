<?php $__env->startSection('page-title'); ?>
    <?php echo e(__('Order Success')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="error-page-content padding-120">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="order-success-area">
                        <h1 class="title"><?php echo e(get_static_option('product_success_page_' . $user_select_lang_slug . '_title')); ?></h1>
                        <p><?php echo e(get_static_option('product_success_page_' . $user_select_lang_slug . '_description')); ?></p>
                        <div class="product-orders-summery-warp">
                            <div class="order-invoice-wrapper ">
                                <h4 class="order_number"><?php echo e(__('Order Id:').' #'.$order_details->id); ?></h4>
                                <div class="btn-wrapper">
                                    <form action="<?php echo e(route('frontend.product.invoice.generate')); ?>"  method="post">
                                        <?php echo csrf_field(); ?>
                                        <input type="hidden" name="order_id" id="invoice_generate_order_field" value="<?php echo e($order_details->id); ?>">
                                        <button class="btn btn-secondary btn-small" type="submit"><?php echo e(__('Download Invoice')); ?></button>
                                    </form>
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
                             <h4 class="title"><?php echo e(__('Order Summery')); ?></h4>
                            <div class="cart-total-table-wrap">
                                <div class="cart-total-table table-responsive text-left">
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
                                            <td>+<?php echo e(site_currency_symbol().$order_details->shipping_cost); ?></td>
                                        </tr>
                                        <tr>
                                            <th><?php echo e(__('Total')); ?></th>
                                            <td><strong><?php echo e(site_currency_symbol().$order_details->total); ?></strong></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            
                            <h4 class="title"><?php echo e(__('Ordered Products')); ?></h4>
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
                                                <span class="product-title"><a href="<?php echo e(route('frontend.products.single',$product_details->slug)); ?>"><?php echo e($product_details->title); ?></a></span>
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
                            
                           
                        </div>
                        <div class="btn-wrapper">
                            <a href="<?php echo e(url('/')); ?>" class="boxed-btn"><?php echo e(__('Back To Home')); ?></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/nexelit/@core/resources/views/frontend/pages/products/product-success.blade.php ENDPATH**/ ?>