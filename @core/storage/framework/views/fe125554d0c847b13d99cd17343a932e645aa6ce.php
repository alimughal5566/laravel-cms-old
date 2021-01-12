<?php
    $post_img = null;
    $blog_image = get_attachment_image_by_id($donation->image,"full",false);
    $post_img = $blog_image['img_url'];
?>
<?php $__env->startSection('og-meta'); ?>
    <meta property="og:url"  content="<?php echo e(route('frontend.donations.single',$donation->slug)); ?>" />
    <meta property="og:type"  content="article" />
    <meta property="og:title"  content="<?php echo e($donation->title); ?>" />
    <meta property="og:image" content="<?php echo e($post_img); ?>" />
<?php $__env->stopSection(); ?>
<?php $__env->startSection('site-title'); ?>
    <?php echo e($donation->title); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-title'); ?>
    <?php echo e($donation->title); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-meta-data'); ?>
    <meta name="description" content="<?php echo e($donation->meta_tags); ?>">
    <meta name="tags" content="<?php echo e($donation->meta_description); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <section class="blog-content-area padding-top-120 padding-bottom-90">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="contribute-single-item">
                        <div class="thumb">
                            <?php echo render_image_markup_by_attachment_id($donation->image,'','large'); ?>

                            <div class="thumb-content">
                                <div class="progress-item">
                                    <div class="single-progressbar">
                                        <div class="donation-progress" data-percent="<?php echo e(get_percentage($donation->amount,$donation->raised)); ?>"></div>
                                    </div>
                                </div>
                                <div class="goal">
                                    <h4 class="raised"><?php echo e(get_static_option('donation_raised_'.$user_select_lang_slug.'_text')); ?> <?php echo e(site_currency_symbol()); ?><?php echo e($donation->raised ? $donation->raised : 0); ?></h4>
                                    <h4 class="raised"><?php echo e(get_static_option('donation_goal_'.$user_select_lang_slug.'_text')); ?> <?php echo e(site_currency_symbol()); ?><?php echo e($donation->amount); ?></h4>
                                </div>
                            </div>
                        </div>
                        <div class="content">
                            <div class="donation-goal">

                            </div>
                            <div class="details-content-area">
                                <?php echo $donation->donation_content; ?>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="widget-area">
                        <div class="donation_wrapper">
                            <h3 class="title"><?php echo e(get_static_option('donation_single_'.$user_select_lang_slug.'_form_title')); ?></h3>
                            <div class="single_amount_wrapper">
                                <?php
                                    $custom_amounts  =  get_static_option('donation_custom_amount');
                                    $custom_amounts = !empty($custom_amounts) ? explode(',',$custom_amounts) : [5,10,15,20];
                                ?>
                                <?php $__currentLoopData = $custom_amounts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $amount): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="single_amount" data-value="<?php echo e($amount); ?>"><?php echo e(site_currency_symbol().$amount); ?></div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                            <?php if($errors->any()): ?>
                                <ul class="alert alert-danger">
                                    <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <li><?php echo e($error); ?></li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            <?php endif; ?>
                            <form action="<?php echo e(route('frontend.donations.log.store')); ?>" method="post" enctype="multipart/form-data" class="donation-form-wrapper">
                                <?php echo csrf_field(); ?>
                                 <input type="hidden" name="captcha_token" id="gcaptcha_token">
                                <div class="amount_wrapper">
                                    <div class="suffix"><?php echo e(site_currency_symbol()); ?></div>
                                    <input type="hidden" name="donation_id" value="<?php echo e($donation->id); ?>" >
                                    <input type="number" name="amount" value="<?php echo e(get_static_option('donation_default_amount')); ?>" step="1" min="1">
                                </div>

                                <?php if(auth()->check()): ?>
                                    <div class="form-group">
                                        <div class="label"><?php echo e(__('Name')); ?></div>
                                        <input type="text" name="name" class="form-control" value="<?php echo e(auth()->user()->name); ?>">
                                    </div>
                                    <div class="form-group">
                                        <div class="label"><?php echo e(__('Email')); ?></div>
                                        <input type="text" name="email" class="form-control" value="<?php echo e(auth()->user()->email); ?>">
                                    </div>
                                <?php else: ?>
                                    <div class="form-group">
                                        <div class="label"><?php echo e(__('Name')); ?></div>
                                        <input type="text" name="name" placeholder="<?php echo e(__('Name')); ?>" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <div class="label"><?php echo e(__('Email')); ?></div>
                                        <input type="email" name="email" placeholder="<?php echo e(__('Email')); ?>" class="form-control">
                                    </div>
                                <?php endif; ?>
                                <?php if(!empty(get_static_option('site_payment_gateway'))): ?>
                                    <div class="payment-gateway-wrapper">
                                        <input type="hidden" name="selected_payment_gateway" id="site_global_payment_gateway" value="<?php echo e(get_static_option('site_global_payment_gateway')); ?>">
                                        <ul>
                                            <?php if(!empty(get_static_option('paypal_gateway'))): ?>
                                                <li data-gateway="paypal">
                                                    <div class="img-select">
                                                        <?php echo render_image_markup_by_attachment_id(get_static_option('paypal_preview_logo')); ?>

                                                    </div>
                                                </li>
                                            <?php endif; ?>
                                            <?php if(!empty(get_static_option('paytm_gateway'))): ?>
                                                <li data-gateway="paytm">
                                                    <div class="img-select">
                                                        <?php echo render_image_markup_by_attachment_id(get_static_option('paytm_preview_logo')); ?>

                                                    </div>
                                                </li>
                                            <?php endif; ?>
                                            <?php if(!empty(get_static_option('stripe_gateway'))): ?>
                                                <li data-gateway="stripe">
                                                    <div class="img-select">
                                                        <?php echo render_image_markup_by_attachment_id(get_static_option('stripe_preview_logo')); ?>

                                                    </div>
                                                </li>
                                            <?php endif; ?>
                                            <?php if(!empty(get_static_option('razorpay_gateway'))): ?>
                                                <li data-gateway="razorpay">
                                                    <div class="img-select">
                                                        <?php echo render_image_markup_by_attachment_id(get_static_option('razorpay_preview_logo')); ?>

                                                    </div>
                                                </li>
                                            <?php endif; ?>
                                            <?php if(!empty(get_static_option('paystack_gateway'))): ?>
                                                <li data-gateway="paystack">
                                                    <div class="img-select">
                                                        <?php echo render_image_markup_by_attachment_id(get_static_option('paystack_preview_logo')); ?>

                                                    </div>
                                                </li>
                                            <?php endif; ?>
                                            <?php if(!empty(get_static_option('mollie_gateway'))): ?>
                                                <li data-gateway="mollie">
                                                    <div class="img-select">
                                                        <?php echo render_image_markup_by_attachment_id(get_static_option('mollie_preview_logo')); ?>

                                                    </div>
                                                </li>
                                            <?php endif; ?>
                                            <?php if(!empty(get_static_option('flutterwave_gateway'))): ?>
                                                <li data-gateway="flutterwave">
                                                    <div class="img-select">
                                                        <?php echo render_image_markup_by_attachment_id(get_static_option('flutterwave_preview_logo')); ?>

                                                    </div>
                                                </li>
                                            <?php endif; ?>
                                            <?php if(!empty(get_static_option('manual_payment_gateway'))): ?>
                                                <li data-gateway="manual_payment">
                                                    <div class="img-select">
                                                        <?php echo render_image_markup_by_attachment_id(get_static_option('manual_payment_preview_logo')); ?>

                                                    </div>
                                                </li>
                                            <?php endif; ?>
                                        </ul>
                                    </div>
                                <?php endif; ?>
                                <?php if(!empty(get_static_option('manual_payment_gateway'))): ?>
                                <div class="form-group manual_payment_transaction_field">
                                    <div class="label"><?php echo e(__('Transaction ID')); ?></div>
                                    <input type="text" name="transaction_id" placeholder="<?php echo e(__('transaction')); ?>" class="form-control">
                                    <span class="help-info"><?php echo get_static_option('site_manual_payment_description'); ?></span>
                                </div>
                                <?php endif; ?>
                                <button class="donation-btn btn-boxed style-01" type="submit"><?php echo e(get_static_option('donation_single_'.$user_select_lang_slug.'_form_button_text')); ?></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
<?php if(!empty(get_static_option('site_google_captcha_v3_site_key'))): ?>
    <script
        src="https://www.google.com/recaptcha/api.js?render=<?php echo e(get_static_option('site_google_captcha_v3_site_key')); ?>"></script>
    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute("<?php echo e(get_static_option('site_google_captcha_v3_site_key')); ?>", {action: 'homepage'}).then(function (token) {
                document.getElementById('gcaptcha_token').value = token;
            });
        });
    </script>
<?php endif; ?>
    <script src="<?php echo e(asset('assets/frontend/js/jQuery.rProgressbar.min.js')); ?>"></script>
    <script>
        (function($) {
            'use strict';
            var allProgress =  $('.donation-progress');
            $.each(allProgress,function (index, value) {
                $(this).rProgressbar({
                    percentage: $(this).data('percent'),
                    fillBackgroundColor: "<?php echo e(get_static_option('site_color')); ?>"
                });
            })
            /*------------------------------
                donate activation
            -------------------------------*/

            $(document).on('click', '.donation_wrapper .single_amount', function(e) {
                e.preventDefault();
                $('input[name="amount"]').val($(this).data('value'));
            });

            var defaulGateway = $('#site_global_payment_gateway').val();
            $('.payment-gateway-wrapper ul li[data-gateway="'+defaulGateway+'"]').addClass('selected');

            $(document).on('click','.payment-gateway-wrapper > ul > li',function (e) {
                e.preventDefault();
                var gateway = $(this).data('gateway');
                if(gateway == 'manual_payment'){
                    $('.manual_payment_transaction_field').addClass('show');
                }else{
                    $('.manual_payment_transaction_field').removeClass('show');
                }
                $(this).addClass('selected').siblings().removeClass('selected');
                $('.payment-gateway-wrapper').find(('input')).val(gateway);
            });

        })(jQuery);
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/dvrobin/Desktop/Sharifur-Backup/localhost/nexelit/@core/resources/views/frontend/pages/donations/donation-single.blade.php ENDPATH**/ ?>