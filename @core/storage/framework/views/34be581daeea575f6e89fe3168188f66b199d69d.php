<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('SMTP Settings')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-12 mt-5">
                <?php echo $__env->make('backend.partials.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__("SMTP Settings")); ?></h4>
                        <?php if($errors->any()): ?>
                            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="alert alert-danger"><?php echo e($error); ?></div>
                             <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                        <form action="<?php echo e(route('admin.general.smtp.settings')); ?>" method="POST" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="form-group">
                                <label for="site_smtp_mail_host"><?php echo e(__('SMTP Mail Host')); ?></label>
                                <input type="text" name="site_smtp_mail_host"  class="form-control" value="<?php echo e(get_static_option('site_smtp_mail_host')); ?>" id="site_smtp_mail_host">
                            </div>
                            <div class="form-group">
                                <label for="site_smtp_mail_port"><?php echo e(__('SMTP Mail Port')); ?></label>
                                <input type="text" name="site_smtp_mail_port"  class="form-control" value="<?php echo e(get_static_option('site_smtp_mail_port')); ?>" id="site_smtp_mail_port">
                            </div>
                            <div class="form-group">
                                <label for="site_smtp_mail_username"><?php echo e(__('SMTP Mail Username')); ?></label>
                                <input type="text" name="site_smtp_mail_username"  class="form-control" value="<?php echo e(get_static_option('site_smtp_mail_username')); ?>" id="site_smtp_mail_username">
                            </div>
                            <div class="form-group">
                                <label for="site_smtp_mail_password"><?php echo e(__('SMTP Mail Password')); ?></label>
                                <input type="password" name="site_smtp_mail_password"  class="form-control" value="<?php echo e(get_static_option('site_smtp_mail_password')); ?>" id="site_smtp_mail_password">
                            </div>
                            <div class="form-group">
                                <label for="site_smtp_mail_encryption"><?php echo e(__('SMTP Mail Encryption')); ?></label>
                                <input type="text" name="site_smtp_mail_encryption"  class="form-control" value="<?php echo e(get_static_option('site_smtp_mail_encryption')); ?>" id="site_smtp_mail_encryption">
                            </div>
                            <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update SMTP Settings')); ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/dvrobin/Desktop/Sharifur-Backup/localhost/nexelit/@core/resources/views/backend/general-settings/smtp-settings.blade.php ENDPATH**/ ?>