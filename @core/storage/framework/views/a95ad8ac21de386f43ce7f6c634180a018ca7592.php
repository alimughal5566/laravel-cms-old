<?php $__env->startSection('page-title'); ?>
    <?php echo e(__('Attendance Confirm')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="error-page-content padding-120">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="order-confirm-area">
                        <h4 class="title"><?php echo e(__('Attendance Details')); ?></h4>
                        <?php if($errors->any()): ?>
                            <ul class="alert alert-danger">
                                <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li><?php echo e($error); ?></li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        <?php endif; ?>
                        <form action="<?php echo e(route('frontend.event.payment.confirm')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <?php
                            $custom_fields = unserialize( $attendance_details->custom_fields);
                            $payment_gateway = !empty($custom_fields['selected_payment_gateway']) ? $custom_fields['selected_payment_gateway'] : '';
                            $name = auth()->check() ? auth()->user()->name : '';
                            $email = auth()->check() ? auth()->user()->email :'';
                            ?>
                            <input type="hidden" name="attendance_id" value="<?php echo e($attendance_details->id); ?>">
                            <input type="hidden" name="payment_gateway" value="<?php echo e($payment_gateway); ?>">
                             <input type="hidden" name="captcha_token" id="gcaptcha_token">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered">
                                <tr>
                                    <td><?php echo e(__('Your Name')); ?></td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" name="name" value="<?php echo e($name); ?>" class="form-control" placeholder="<?php echo e(__('Enter Your Name')); ?>">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?php echo e(__('Your Email')); ?></td>
                                    <td>
                                        <div class="form-group">
                                            <input type="email" name="email" value="<?php echo e($email); ?>" class="form-control" placeholder="<?php echo e(__('Enter Your Email')); ?>">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?php echo e(__('Event Name')); ?></td>
                                    <td><?php echo e($attendance_details->event_name); ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo e(__('Event Cost')); ?></td>
                                    <td><?php echo e(site_currency_symbol()); ?><?php echo e($attendance_details->event_cost * $attendance_details->quantity); ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo e(__('Quantity')); ?></td>
                                    <td><?php echo e($attendance_details->quantity); ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo e(__('Payment Gateway')); ?></td>
                                    <td class="text-capitalize">
                                        <?php if($payment_gateway == 'manual_payment'): ?>
                                            <?php echo e(get_static_option('site_manual_payment_name')); ?>

                                        <?php else: ?>
                                            <?php echo e($payment_gateway); ?>

                                        <?php endif; ?>
                                    </td>
                                </tr>
                                <?php if($payment_gateway == 'manual_payment'): ?>
                                    <tr>
                                        <td><?php echo e(__('Transaction ID')); ?></td>
                                        <td>
                                            <div class="form-group">
                                                <input type="text" name="trasaction_id" class="form-control">
                                                <small><?php echo get_static_option('site_manual_payment_description'); ?></small>
                                            </div>
                                        </td>
                                    </tr>
                                <?php endif; ?>
                            </table>
                        </div>
                        <div class="btn-wrapper">
                            <button type="submit" class="submit-btn style-01"><?php echo e(__('Pay Now')); ?></button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/dvrobin/Desktop/Sharifur-Backup/localhost/nexelit/@core/resources/views/frontend/payment/booking-confirm.blade.php ENDPATH**/ ?>