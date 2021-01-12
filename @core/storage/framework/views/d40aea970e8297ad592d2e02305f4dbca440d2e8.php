<?php $__env->startSection('site-title'); ?>
    <?php echo e(get_static_option('site_'.get_user_lang().'_title')); ?> = <?php echo e(get_static_option('site_'.get_user_lang().'_tag_line')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-title'); ?>
    <?php echo e(__('Razorpay Payment')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>
    <style>
        .stripe-payment-wrapper form {
            width: 500px;
        }
        .stripe-payment-wrapper {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            height: 100%;
        }
        .stripe-payment-wrapper h1 {
            font-family: var(--heading-font);
            font-size: 40px;
            line-height: 50px;
            width: 500px;
            text-align: center;
            margin-bottom: 40px;
        }

        .srtipe-payment-inner-wrapper {
            box-shadow: 0 0 35px 0 rgba(0,0,0,0.1);
            padding: 40px;
            display: inline-block;
        }

        .srtipe-payment-inner-wrapper label {
            font-size: 16px;
            color: var(--paragraph-color);
            margin-bottom: 10px;
            line-height: 26px;
        }

        .srtipe-payment-inner-wrapper .razorpay-payment-button {
            display: block;
            border: none;
            background-color: var(--main-color-one);
            padding: 13px 30px;
            border-radius: 3px;
            font-size: 16px;
            line-height: 26px;
            font-weight: 600;
            color: #fff;
            margin-top: 30px;
            cursor: pointer;
            width: 180px;
            margin: 0 auto;
        }
        .srtipe-payment-inner-wrapper .razorpay-payment-button:focus{
            outline: none;
            box-shadow: none;
        }
        .srtipe-payment-inner-wrapper img {
            max-width: 300px;
            margin: 0 auto;
            display: block;
        }
    </style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="stripe-payment-wrapper padding-top-120 padding-bottom-120">
        <div class="srtipe-payment-inner-wrapper">
            <?php echo render_image_markup_by_attachment_id(get_static_option('razorpay_preview_logo')); ?>

                <form action="<?php echo e($razorpay_data['route']); ?>" method="POST" >
                    <!-- Note that the amount is in paise = 50 INR -->
                    <input type="hidden" name="order_id" value="<?php echo e($razorpay_data['order_id']); ?>" />
                    <?php
                        $site_logo = get_attachment_image_by_id(get_static_option('site_logo'), "full", false);
                        $image_url = isset($site_logo['img_url']) ? $site_logo['img_url'] : '';
                        $package_price = $razorpay_data['price'];
                        $site_currency = get_static_option('site_global_currency');
                        if ($site_currency == 'USD'){
                            $package_price = $package_price * get_static_option('site_usd_to_nri_exchange_rate');
                        }elseif( $site_currency == 'EUR'){
                            $package_price = $package_price * get_static_option('site_euro_to_nri_exchange_rate');
                        }
                    ?>
                    <!--amount need to be in paisa-->
                    <script src="https://checkout.razorpay.com/v1/checkout.js"
                            data-key="<?php echo e(get_static_option('razorpay_key')); ?>"
                            data-amount="<?php echo e($package_price * 100); ?>"
                            data-buttontext="<?php echo e('Pay '.$package_price.' INR'); ?>"
                            data-name="<?php echo e($razorpay_data['package_name']); ?>"
                            data-description="<?php echo e(__('Payment For '.$razorpay_data['package_name'])); ?>"
                            data-image="<?php echo e($image_url); ?>"
                            data-prefill.name=""
                            data-prefill.email=""
                            data-theme.color="<?php echo e(get_static_option('site_color')); ?>">
                    </script>
                    <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
                </form>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/dvrobin/Desktop/Sharifur-Backup/localhost/nexelit/@core/resources/views/frontend/payment/razorpay.blade.php ENDPATH**/ ?>