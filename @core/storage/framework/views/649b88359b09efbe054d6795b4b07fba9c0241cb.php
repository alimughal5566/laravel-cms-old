<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Payment Settings')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/dropzone.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/media-uploader.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/summernote-bs4.css')); ?>">
    <style>
        .accordion-wrapper .card .card-header button {
            color: #000 !important;
        }
    </style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-12 mt-5">
                <?php echo $__env->make('backend.partials.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__("Payment Gateway Settings")); ?></h4>
                        <?php if($errors->any()): ?>
                            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="alert alert-danger"><?php echo e($error); ?></div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                        <form action="<?php echo e(route('admin.general.payment.settings')); ?>" method="POST" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="site_global_payment_gateway"><?php echo e(__('Site Default Payment Gateway')); ?></label>
                                        <select name="site_global_payment_gateway" class="form-control" id="site_global_payment_gateway">
                                            <option value="paypal" <?php if(get_static_option('site_global_payment_gateway') == 'paypal'): ?> selected <?php endif; ?>><?php echo e(__('Paypal')); ?></option>
                                            <option value="paytm" <?php if(get_static_option('site_global_payment_gateway') == 'paytm'): ?> selected <?php endif; ?>><?php echo e(__('Paytm')); ?></option>
                                            <option value="stripe" <?php if(get_static_option('site_global_payment_gateway') == 'stripe'): ?> selected <?php endif; ?>><?php echo e(__('Stripe')); ?></option>
                                            <option value="razorpay" <?php if(get_static_option('site_global_payment_gateway') == 'razorpay'): ?> selected <?php endif; ?>><?php echo e(__('Razorpay')); ?></option>
                                            <option value="paystack" <?php if(get_static_option('site_global_payment_gateway') == 'paystack'): ?> selected <?php endif; ?>><?php echo e(__('PayStack')); ?></option>
                                            <option value="mollie" <?php if(get_static_option('site_global_payment_gateway') == 'mollie'): ?> selected <?php endif; ?>><?php echo e(__('Mollie')); ?></option>
                                            <option value="flutterwave" <?php if(get_static_option('site_global_payment_gateway') == 'flutterwave'): ?> selected <?php endif; ?>><?php echo e(__('Flutterwave')); ?></option>
                                            <option value="manual_payment" <?php if(get_static_option('site_global_payment_gateway') == 'manual_payment'): ?> selected <?php endif; ?>><?php echo e(__('Manual Payment')); ?></option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="site_global_currency"><?php echo e(__('Site Global Currency')); ?></label>
                                        <?php $all_currency = ['USD','EUR','INR','IDR','AUD','SGD','JPY','GBP','MYR','PHP','THB','KRW','NGN','GHS']; ?>
                                        <select name="site_global_currency" class="form-control" id="site_global_currency">
                                            <?php $__currentLoopData = $all_currency; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cur): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($cur); ?>" <?php if(get_static_option('site_global_currency') == $cur): ?> selected <?php endif; ?>><?php echo e($cur); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    </div>
                                    <?php $__currentLoopData = $all_currency; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cur): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php if($cur == 'USD'): ?> <?php continue; ?> <?php endif; ?>
                                        <div class="form-group" >
                                            <label for="site_usd_to_<?php echo e(strtolower($cur)); ?>_exchange_rate"><?php echo e(__('USD To '.$cur.' Exchange Rate')); ?></label>
                                            <input type="text" class="form-control" name="site_usd_to_<?php echo e(strtolower($cur)); ?>_exchange_rate" id="site_usd_to_<?php echo e(strtolower($cur)); ?>_exchange_rate" value="<?php echo e(get_static_option('site_usd_to_'.$cur.'_exchange_rate')); ?>">
                                            <span class="info-text"><?php echo e(__('enter USD to '.$cur.' exchange rate.')); ?></span>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <div class="accordion-wrapper">
                                        <div id="accordion-payment">
                                            <div class="card">
                                                <div class="card-header" id="cash_on_delivery_settings">
                                                    <h5 class="mb-0">
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#pcash_on_delivery_settings_content" aria-expanded="true" >
                                                            <span class="page-title"> <?php echo e(__('Cash On Delivery Settings (only for product order)')); ?></span>
                                                        </button>
                                                    </h5>
                                                </div>
                                                <div id="pcash_on_delivery_settings_content" class="collapse show"  data-parent="#accordion-payment">
                                                    <div class="card-body">
                                                        <div class="form-group">
                                                            <label for="cash_on_delivery_gateway"><strong><?php echo e(__('Enable/Disable Cash On Delivery')); ?></strong></label>
                                                            <label class="switch">
                                                                <input type="checkbox" name="cash_on_delivery_gateway"  <?php if(!empty(get_static_option('cash_on_delivery_gateway'))): ?> checked <?php endif; ?> id="cash_on_delivery_gateway">
                                                                <span class="slider onff"></span>
                                                            </label>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="site_logo"><strong><?php echo e(__('Cash On Delivery Logo')); ?></strong></label>
                                                            <div class="media-upload-btn-wrapper">
                                                                <div class="img-wrap">
                                                                    <?php
                                                                        $paypal_img = get_attachment_image_by_id(get_static_option('cash_on_delivery_preview_logo'),null,true);
                                                                        $paypal_image_btn_label = 'Upload Image';
                                                                    ?>
                                                                    <?php if(!empty($paypal_img)): ?>
                                                                        <div class="attachment-preview">
                                                                            <div class="thumbnail">
                                                                                <div class="centered">
                                                                                    <img class="avatar user-thumb" src="<?php echo e($paypal_img['img_url']); ?>" alt="">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <?php  $paypal_image_btn_label = 'Change Image'; ?>
                                                                    <?php endif; ?>
                                                                </div>
                                                                <input type="hidden" id="cash_on_delivery_preview_logo" name="cash_on_delivery_preview_logo" value="<?php echo e(get_static_option('cash_on_delivery_preview_logo')); ?>">
                                                                <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="Select Image" data-modaltitle="Upload Image" data-toggle="modal" data-target="#media_upload_modal">
                                                                    <?php echo e(__($paypal_image_btn_label)); ?>

                                                                </button>
                                                            </div>
                                                            <small class="form-text text-muted"><?php echo e(__('allowed image format: jpg,jpeg,png. Recommended image size 160x50')); ?></small>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="paypal_settings">
                                                    <h5 class="mb-0">
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#paypal_settings_content" aria-expanded="true" >
                                                            <span class="page-title"> <?php echo e(__('Paypal Settings')); ?></span>
                                                        </button>
                                                    </h5>
                                                </div>
                                                <div id="paypal_settings_content" class="collapse show"  data-parent="#accordion-payment">
                                                    <div class="card-body">
                                                        <div class="form-group">
                                                            <label for="paypal_gateway"><strong><?php echo e(__('Enable/Disable Paypal')); ?></strong></label>
                                                            <label class="switch">
                                                                <input type="checkbox" name="paypal_gateway"  <?php if(!empty(get_static_option('paypal_gateway'))): ?> checked <?php endif; ?> id="paypal_gateway">
                                                                <span class="slider onff"></span>
                                                            </label>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="site_logo"><strong><?php echo e(__('Paypal Logo')); ?></strong></label>
                                                            <div class="media-upload-btn-wrapper">
                                                                <div class="img-wrap">
                                                                    <?php
                                                                        $paypal_img = get_attachment_image_by_id(get_static_option('paypal_preview_logo'),null,true);
                                                                        $paypal_image_btn_label = 'Upload Image';
                                                                    ?>
                                                                    <?php if(!empty($paypal_img)): ?>
                                                                        <div class="attachment-preview">
                                                                            <div class="thumbnail">
                                                                                <div class="centered">
                                                                                    <img class="avatar user-thumb" src="<?php echo e($paypal_img['img_url']); ?>" alt="">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <?php  $paypal_image_btn_label = 'Change Image'; ?>
                                                                    <?php endif; ?>
                                                                </div>
                                                                <input type="hidden" id="paypal_preview_logo" name="paypal_preview_logo" value="<?php echo e(get_static_option('paypal_preview_logo')); ?>">
                                                                <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="Select Paypal Image" data-modaltitle="Upload Paypal Image" data-toggle="modal" data-target="#media_upload_modal">
                                                                    <?php echo e(__($paypal_image_btn_label)); ?>

                                                                </button>
                                                            </div>
                                                            <small class="form-text text-muted"><?php echo e(__('allowed image format: jpg,jpeg,png. Recommended image size 160x50')); ?></small>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="paypal_business_email"><?php echo e(__('Paypal Business Email')); ?></label>
                                                            <input type="text" name="paypal_business_email" id="paypal_business_email" class="form-control" value="<?php echo e(get_static_option('paypal_business_email')); ?>">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="paytm_settings">
                                                    <h5 class="mb-0">
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#paytm_settings_content" aria-expanded="false" >
                                                            <span class="page-title"> <?php echo e(__('Paytm Settings')); ?></span>
                                                        </button>
                                                    </h5>
                                                </div>
                                                <div id="paytm_settings_content" class="collapse"  data-parent="#accordion-payment">
                                                    <div class="card-body">
                                                        <div class="form-group">
                                                            <label for="paytm_gateway"><strong><?php echo e(__('Enable/Disable Paytm')); ?></strong></label>
                                                            <label class="switch">
                                                                <input type="checkbox" name="paytm_gateway"  <?php if(!empty(get_static_option('paytm_gateway'))): ?> checked <?php endif; ?> id="paytm_gateway">
                                                                <span class="slider onff"></span>
                                                            </label>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="site_logo"><strong><?php echo e(__('Paytm Logo')); ?></strong></label>
                                                            <div class="media-upload-btn-wrapper">
                                                                <div class="img-wrap">
                                                                    <?php
                                                                        $paytm_img = get_attachment_image_by_id(get_static_option('paytm_preview_logo'),null,true);
                                                                        $paytm_image_btn_label = 'Upload Image';
                                                                    ?>
                                                                    <?php if(!empty($paytm_img)): ?>
                                                                        <div class="attachment-preview">
                                                                            <div class="thumbnail">
                                                                                <div class="centered">
                                                                                    <img class="avatar user-thumb" src="<?php echo e($paytm_img['img_url']); ?>" alt="">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <?php  $paytm_image_btn_label = 'Change Image'; ?>
                                                                    <?php endif; ?>
                                                                </div>
                                                                <input type="hidden" id="paytm_preview_logo" name="paytm_preview_logo" value="<?php echo e(get_static_option('paytm_preview_logo')); ?>">
                                                                <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="Select Paytm Image" data-modaltitle="Upload Paytm Image" data-toggle="modal" data-target="#media_upload_modal">
                                                                    <?php echo e(__($paytm_image_btn_label)); ?>

                                                                </button>
                                                            </div>
                                                            <small class="form-text text-muted"><?php echo e(__('allowed image format: jpg,jpeg,png. Recommended image size 160x50')); ?></small>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="paytm_merchant_key"><?php echo e(__('Paytm Merchant Key')); ?></label>
                                                            <input type="text" name="paytm_merchant_key" id="paytm_merchant_key" value="<?php echo e(get_static_option('paytm_merchant_key')); ?>" class="form-control">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="paytm_merchant_mid"><?php echo e(__('Paytm Merchant ID')); ?></label>
                                                            <input type="text" name="paytm_merchant_mid" id="paytm_merchant_mid"  value="<?php echo e(get_static_option('paytm_merchant_mid')); ?>" class="form-control">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="paytm_merchant_website"><?php echo e(__('Paytm Merchant Website')); ?></label>
                                                            <input type="text" name="paytm_merchant_website" id="paytm_merchant_website"  value="<?php echo e(get_static_option('paytm_merchant_website')); ?>" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="stripe_settings">
                                                    <h5 class="mb-0">
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#stripe_settings_content" aria-expanded="false" >
                                                            <span class="page-title"> <?php echo e(__('Stripe Settings')); ?></span>
                                                        </button>
                                                    </h5>
                                                </div>
                                            <div id="stripe_settings_content" class="collapse"  data-parent="#accordion-payment">
                                                    <div class="card-body">
                                                        <div class="form-group">
                                                            <label for="stripe_gateway"><strong><?php echo e(__('Enable/Disable Stripe')); ?></strong></label>
                                                            <label class="switch">
                                                                <input type="checkbox" name="stripe_gateway"  <?php if(!empty(get_static_option('stripe_gateway'))): ?> checked <?php endif; ?> id="stripe_gateway">
                                                                <span class="slider onff"></span>
                                                            </label>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="stripe_logo"><strong><?php echo e(__('Stripe Logo')); ?></strong></label>
                                                            <div class="media-upload-btn-wrapper">
                                                                <div class="img-wrap">
                                                                    <?php
                                                                        $stripe_img = get_attachment_image_by_id(get_static_option('stripe_preview_logo'),null,true);
                                                                        $stripe_image_btn_label = 'Upload Image';
                                                                    ?>
                                                                    <?php if(!empty($stripe_img)): ?>
                                                                        <div class="attachment-preview">
                                                                            <div class="thumbnail">
                                                                                <div class="centered">
                                                                                    <img class="avatar user-thumb" src="<?php echo e($stripe_img['img_url']); ?>" alt="">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <?php  $stripe_image_btn_label = 'Change Image'; ?>
                                                                    <?php endif; ?>
                                                                </div>
                                                                <input type="hidden" id="stripe_preview_logo" name="stripe_preview_logo" value="<?php echo e(get_static_option('stripe_preview_logo')); ?>">
                                                                <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="Select Stripe Image" data-modaltitle="Upload Stripe Image" data-toggle="modal" data-target="#media_upload_modal">
                                                                    <?php echo e(__($stripe_image_btn_label)); ?>

                                                                </button>
                                                            </div>
                                                            <small class="form-text text-muted"><?php echo e(__('allowed image format: jpg,jpeg,png. Recommended image size 160x50')); ?></small>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="stripe_publishable_key"><?php echo e(__('Stripe Publishable Key')); ?></label>
                                                            <input type="text" name="stripe_publishable_key" id="stripe_publishable_key" value="<?php echo e(get_static_option('stripe_publishable_key')); ?>" class="form-control">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="stripe_secret_key"><?php echo e(__('Stripe Secret')); ?></label>
                                                            <input type="text" name="stripe_secret_key" id="stripe_secret_key"  value="<?php echo e(get_static_option('stripe_secret_key')); ?>" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="razorpay_settings">
                                                    <h5 class="mb-0">
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#razorpay_settings_content" aria-expanded="false" >
                                                            <span class="page-title"> <?php echo e(__('Razorpay Settings')); ?></span>
                                                        </button>
                                                    </h5>
                                                </div>
                                                <div id="razorpay_settings_content" class="collapse"  data-parent="#accordion-payment">
                                                    <div class="card-body">
                                                        <div class="form-group">
                                                            <label for="razorpay_gateway"><strong><?php echo e(__('Enable/Disable Razorpay')); ?></strong></label>
                                                            <label class="switch">
                                                                <input type="checkbox" name="razorpay_gateway"  <?php if(!empty(get_static_option('razorpay_gateway'))): ?> checked <?php endif; ?> id="razorpay_gateway">
                                                                <span class="slider onff"></span>
                                                            </label>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="razorpay_logo"><strong><?php echo e(__('Razorpay Logo')); ?></strong></label>
                                                            <div class="media-upload-btn-wrapper">
                                                                <div class="img-wrap">
                                                                    <?php
                                                                        $razorpay_img = get_attachment_image_by_id(get_static_option('razorpay_preview_logo'),null,true);
                                                                        $razorpay_image_btn_label = 'Upload Image';
                                                                    ?>
                                                                    <?php if(!empty($razorpay_img)): ?>
                                                                        <div class="attachment-preview">
                                                                            <div class="thumbnail">
                                                                                <div class="centered">
                                                                                    <img class="avatar user-thumb" src="<?php echo e($razorpay_img['img_url']); ?>" alt="">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <?php  $razorpay_image_btn_label = 'Change Image'; ?>
                                                                    <?php endif; ?>
                                                                </div>
                                                                <input type="hidden" id="razorpay_preview_logo" name="razorpay_preview_logo" value="<?php echo e(get_static_option('razorpay_preview_logo')); ?>">
                                                                <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="Select Razorpay Image" data-modaltitle="Upload Razorpay Image" data-toggle="modal" data-target="#media_upload_modal">
                                                                    <?php echo e(__($razorpay_image_btn_label)); ?>

                                                                </button>
                                                            </div>
                                                            <small class="form-text text-muted"><?php echo e(__('allowed image format: jpg,jpeg,png. Recommended image size 160x50')); ?></small>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="razorpay_key"><?php echo e(__('Razorpay Key')); ?></label>
                                                            <input type="text" name="razorpay_key" id="razorpay_key" value="<?php echo e(get_static_option('razorpay_key')); ?>" class="form-control">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="razorpay_secret"><?php echo e(__('Razorpay Secret')); ?></label>
                                                            <input type="text" name="razorpay_secret" id="razorpay_secret"  value="<?php echo e(get_static_option('razorpay_secret')); ?>" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="paystack_settings">
                                                    <h5 class="mb-0">
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#paystack_settings_content" aria-expanded="false" >
                                                            <span class="page-title"> <?php echo e(__('PayStack Settings')); ?></span>
                                                        </button>
                                                    </h5>
                                                </div>
                                                <div id="paystack_settings_content" class="collapse"  data-parent="#accordion-payment">
                                                    <div class="card-body">
                                                        <p class="margin-bottom-30 margin-top-20 info-paragraph">
                                                            <?php echo e(__('Don\'t forget to put below url to "Settings > API Key & Webhook > Callback URL" in your paystack admin panel')); ?>

                                                            <input type="text" class="info-url" value="<?php echo e(route('frontend.paystack.callback')); ?>">
                                                        </p>
                                                        <div class="form-group">
                                                            <label for="paystack_gateway"><strong><?php echo e(__('Enable/Disable PayStack')); ?></strong></label>
                                                            <label class="switch">
                                                                <input type="checkbox" name="paystack_gateway"  <?php if(!empty(get_static_option('paystack_gateway'))): ?> checked <?php endif; ?> id="paystack_gateway">
                                                                <span class="slider onff"></span>
                                                            </label>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="paystack_preview_logo"><strong><?php echo e(__('PayStack Logo')); ?></strong></label>
                                                            <div class="media-upload-btn-wrapper">
                                                                <div class="img-wrap">
                                                                    <?php
                                                                        $paystack_img = get_attachment_image_by_id(get_static_option('paystack_preview_logo'),null,true);
                                                                        $paystack_image_btn_label = 'Upload Image';
                                                                    ?>
                                                                    <?php if(!empty($paystack_img)): ?>
                                                                        <div class="attachment-preview">
                                                                            <div class="thumbnail">
                                                                                <div class="centered">
                                                                                    <img class="avatar user-thumb" src="<?php echo e($paystack_img['img_url']); ?>" alt="">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <?php  $paystack_image_btn_label = 'Change Image'; ?>
                                                                    <?php endif; ?>
                                                                </div>
                                                                <input type="hidden" id="paystack_preview_logo" name="paystack_preview_logo" value="<?php echo e(get_static_option('paystack_preview_logo')); ?>">
                                                                <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="Select PayStack Image" data-modaltitle="Upload PayStack Image" data-toggle="modal" data-target="#media_upload_modal">
                                                                    <?php echo e(__($paystack_image_btn_label)); ?>

                                                                </button>
                                                            </div>
                                                            <small class="form-text text-muted"><?php echo e(__('allowed image format: jpg,jpeg,png. Recommended image size 160x50')); ?></small>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="paystack_public_key"><?php echo e(__('PayStack Public Key')); ?></label>
                                                            <input type="text" name="paystack_public_key" id="paystack_public_key" value="<?php echo e(get_static_option('paystack_public_key')); ?>" class="form-control">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="paystack_secret_key"><?php echo e(__('PayStack Secret Key')); ?></label>
                                                            <input type="text" name="paystack_secret_key" id="paystack_secret_key"  value="<?php echo e(get_static_option('paystack_secret_key')); ?>" class="form-control">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="paystack_merchant_email"><?php echo e(__('PayStack Merchant Email')); ?></label>
                                                            <input type="text" name="paystack_merchant_email" id="paystack_merchant_email"  value="<?php echo e(get_static_option('paystack_merchant_email')); ?>" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="mollie_settings">
                                                    <h5 class="mb-0">
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#mollie_settings_content" aria-expanded="false" >
                                                            <span class="page-title"> <?php echo e(__('Mollie Settings')); ?></span>
                                                        </button>
                                                    </h5>
                                                </div>
                                                <div id="mollie_settings_content" class="collapse"  data-parent="#accordion-payment">
                                                    <div class="card-body">
                                                        <div class="form-group">
                                                            <label for="mollie_gateway"><strong><?php echo e(__('Enable/Disable Mollie')); ?></strong></label>
                                                            <label class="switch">
                                                                <input type="checkbox" name="mollie_gateway"  <?php if(!empty(get_static_option('mollie_gateway'))): ?> checked <?php endif; ?> id="mollie_gateway">
                                                                <span class="slider onff"></span>
                                                            </label>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="mollie_preview_logo"><strong><?php echo e(__('Mollie Logo')); ?></strong></label>
                                                            <div class="media-upload-btn-wrapper">
                                                                <div class="img-wrap">
                                                                    <?php
                                                                        $mollie_img = get_attachment_image_by_id(get_static_option('mollie_preview_logo'),null,true);
                                                                        $mollie_image_btn_label = 'Upload Image';
                                                                    ?>
                                                                    <?php if(!empty($mollie_img)): ?>
                                                                        <div class="attachment-preview">
                                                                            <div class="thumbnail">
                                                                                <div class="centered">
                                                                                    <img class="avatar user-thumb" src="<?php echo e($mollie_img['img_url']); ?>" alt="">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <?php  $mollie_image_btn_label = 'Change Image'; ?>
                                                                    <?php endif; ?>
                                                                </div>
                                                                <input type="hidden" id="mollie_preview_logo" name="mollie_preview_logo" value="<?php echo e(get_static_option('mollie_preview_logo')); ?>">
                                                                <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="Select Image" data-modaltitle="Upload Image" data-toggle="modal" data-target="#media_upload_modal">
                                                                    <?php echo e(__($mollie_image_btn_label)); ?>

                                                                </button>
                                                            </div>
                                                            <small class="form-text text-muted"><?php echo e(__('allowed image format: jpg,jpeg,png. Recommended image size 160x50')); ?></small>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="mollie_public_key"><?php echo e(__('Mollie Public Key')); ?></label>
                                                            <input type="text" name="mollie_public_key" id="mollie_public_key" value="<?php echo e(get_static_option('mollie_public_key')); ?>" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="flluterwave_settings">
                                                    <h5 class="mb-0">
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#flutterwave_settings_content" aria-expanded="false" >
                                                            <span class="page-title"> <?php echo e(__('Flutterwave Settings')); ?></span>
                                                        </button>
                                                    </h5>
                                                </div>
                                                <div id="flutterwave_settings_content" class="collapse"  data-parent="#accordion-payment">
                                                    <div class="card-body">
                                                        <div class="form-group">
                                                            <label for="flutterwave_gateway"><strong><?php echo e(__('Enable/Disable Flutterwave')); ?></strong></label>
                                                            <label class="switch">
                                                                <input type="checkbox" name="flutterwave_gateway"  <?php if(!empty(get_static_option('flutterwave_gateway'))): ?> checked <?php endif; ?> id="flutterwave_gateway">
                                                                <span class="slider onff"></span>
                                                            </label>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="flutterwave_preview_logo"><strong><?php echo e(__('Flutterwave Logo')); ?></strong></label>
                                                            <div class="media-upload-btn-wrapper">
                                                                <div class="img-wrap">
                                                                    <?php
                                                                        $mollie_img = get_attachment_image_by_id(get_static_option('flutterwave_preview_logo'),null,true);
                                                                        $mollie_image_btn_label = 'Upload Image';
                                                                    ?>
                                                                    <?php if(!empty($mollie_img)): ?>
                                                                        <div class="attachment-preview">
                                                                            <div class="thumbnail">
                                                                                <div class="centered">
                                                                                    <img class="avatar user-thumb" src="<?php echo e($mollie_img['img_url']); ?>" alt="">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <?php  $mollie_image_btn_label = 'Change Image'; ?>
                                                                    <?php endif; ?>
                                                                </div>
                                                                <input type="hidden" id="flutterwave_preview_logo" name="flutterwave_preview_logo" value="<?php echo e(get_static_option('flutterwave_preview_logo')); ?>">
                                                                <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="Select Image" data-modaltitle="Upload Image" data-toggle="modal" data-target="#media_upload_modal">
                                                                    <?php echo e(__($mollie_image_btn_label)); ?>

                                                                </button>
                                                            </div>
                                                            <small class="form-text text-muted"><?php echo e(__('allowed image format: jpg,jpeg,png. Recommended image size 160x50')); ?></small>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="flutterwave_public_key"><?php echo e(__('Flutterwave Public Key')); ?></label>
                                                            <input type="text" name="flutterwave_public_key" id="flutterwave_public_key" value="<?php echo e(get_static_option('flutterwave_public_key')); ?>" class="form-control">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="flutterwave_secret_key"><?php echo e(__('Flutterwave Secret Key')); ?></label>
                                                            <input type="text" name="flutterwave_secret_key" id="flutterwave_secret_key" value="<?php echo e(get_static_option('flutterwave_secret_key')); ?>" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="manual_payment_settings">
                                                    <h5 class="mb-0">
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#manual_payment_settings_content" aria-expanded="false" >
                                                            <span class="page-title"> <?php echo e(__('Manual Payment Settings')); ?></span>
                                                        </button>
                                                    </h5>
                                                </div>
                                                <div id="manual_payment_settings_content" class="collapse"  data-parent="#accordion-payment">
                                                    <div class="card-body">
                                                        <div class="form-group">
                                                            <label for="manual_payment_gateway"><strong><?php echo e(__('Enable/Disable Manual Payment')); ?></strong></label>
                                                            <label class="switch">
                                                                <input type="checkbox" name="manual_payment_gateway"  <?php if(!empty(get_static_option('manual_payment_gateway'))): ?> checked <?php endif; ?> id="manual_payment_gateway">
                                                                <span class="slider onff"></span>
                                                            </label>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="site_logo"><strong><?php echo e(__('Manual Payment Logo')); ?></strong></label>
                                                            <div class="media-upload-btn-wrapper">
                                                                <div class="img-wrap">
                                                                    <?php
                                                                        $paytm_img = get_attachment_image_by_id(get_static_option('manual_payment_preview_logo'),null,false);
                                                                        $paytm_image_btn_label = 'Upload Image';
                                                                    ?>
                                                                    <?php if(!empty($paytm_img)): ?>
                                                                        <div class="attachment-preview">
                                                                            <div class="thumbnail">
                                                                                <div class="centered">
                                                                                    <img class="avatar user-thumb" src="<?php echo e($paytm_img['img_url']); ?>" alt="">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <?php  $paytm_image_btn_label = 'Change Image'; ?>
                                                                    <?php endif; ?>
                                                                </div>
                                                                <input type="hidden" id="manual_payment_preview_logo" name="manual_payment_preview_logo" value="<?php echo e(get_static_option('manual_payment_preview_logo')); ?>">
                                                                <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="Select Manual Payment Logo Image" data-modaltitle="Upload Manual Payment Logo Image" data-toggle="modal" data-target="#media_upload_modal">
                                                                    <?php echo e(__($paytm_image_btn_label)); ?>

                                                                </button>
                                                            </div>
                                                            <small class="form-text text-muted"><?php echo e(__('allowed image format: jpg,jpeg,png. Recommended image size 160x50')); ?></small>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="site_manual_payment_name"><?php echo e(__('Manual Payment Name')); ?></label>
                                                            <input type="text" name="site_manual_payment_name" id="site_manual_payment_name" value="<?php echo e(get_static_option('site_manual_payment_name')); ?>" class="form-control">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="site_manual_payment_description"><?php echo e(__('Manual Payment Description')); ?></label>
                                                            <input type="hidden" name="site_manual_payment_description" value="<?php echo e(get_static_option('site_manual_payment_description')); ?>">
                                                            <div class="summernote" data-content='<?php echo e(get_static_option('site_manual_payment_description')); ?>'></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Changes')); ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php echo $__env->make('backend.partials.media-upload.media-upload-markup', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script src="<?php echo e(asset('assets/backend/js/dropzone.js')); ?>"></script>
    <script src="<?php echo e(asset('assets/backend/js/summernote-bs4.js')); ?>"></script>
    <?php echo $__env->make('backend.partials.media-upload.media-js', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <script>
        $(document).ready(function ($) {

            $(document).on('change','#site_global_currency',function (e) {
                e.preventDefault();
                checkCurrency();
            });

            function checkCurrency() {
                var selectedValue = $('#site_global_currency').val();
                if(selectedValue == 'USD'){
                    $('#site_usd_to_nri_exchange_rate').parent().show();
                }else{
                    $('#site_usd_to_nri_exchange_rate').parent().hide();
                }
            }
            $('.summernote').summernote({
                height: 250,   //set editable area's height
                codemirror: { // codemirror options
                    theme: 'monokai'
                },
                callbacks: {
                    onChange: function(contents, $editable) {
                        $(this).prev('input').val(contents);
                    }
                }
            });
            if($('.summernote').length > 0){
                $('.summernote').each(function(index,value){
                    $(this).summernote('code', $(this).data('content'));
                });
            }
        });

    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/nexelit/beta/nexelit/@core/resources/views/backend/general-settings/payment-gateway.blade.php ENDPATH**/ ?>