<?php $__env->startSection('page-title'); ?>
    <?php echo e(__('Order Payment Not Success')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="error-page-content padding-120">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="order-success-area">
                        <h1 class="title"><?php echo e(get_static_option('product_cancel_page_' . $user_select_lang_slug . '_title')); ?></h1>
                        <p><?php echo e(get_static_option('product_cancel_page_' . $user_select_lang_slug . '_description')); ?></p>
                        <div class="product-orders-summery-warp">
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

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/nexelit/@core/resources/views/frontend/pages/products/product-cancel.blade.php ENDPATH**/ ?>