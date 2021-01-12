<?php $__env->startSection('og-meta'); ?>
    <meta property="og:url" content="<?php echo e(route('frontend.services.single',$service_item->slug)); ?>"/>
    <meta property="og:type" content="article"/>
    <meta property="og:title" content="<?php echo e($service_item->title); ?>"/>
    <?php echo render_og_meta_image_by_attachment_id($service_item->image); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('meta-tags'); ?>
    <meta name="description" content="<?php echo e($service_item->meta_description); ?>">
    <meta name="tags" content="<?php echo e($service_item->meta_tag); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('site-title'); ?>
    <?php echo e($service_item->title); ?> -  <?php echo e(get_static_option('service_page_'.$user_select_lang_slug.'_name')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-title'); ?>
    <?php echo e($service_item->title); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>

    <div class="page-content service-details padding-top-120 padding-bottom-115">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="service-details-item">
                        <div class="thumb margin-bottom-40">
                            <?php echo render_image_markup_by_attachment_id($service_item->image); ?>

                        </div>
                        <div class="service-description">
                            <?php echo $service_item->description; ?>

                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="widget-nav-menu margin-bottom-30 service-category">
                        <ul>
                            <?php $__currentLoopData = $service_category; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li>
                                    <?php
                                    $service_cat_id = !empty($service_item->category) ? $service_item->category->id : '';
                                    ?>
                                    <a href="<?php echo e(route('frontend.services.category', ['id' => $data->id , 'any' => Str::slug($data->name)])); ?>"
                                       class="service-widget <?php if($data->id == $service_cat_id ): ?> active <?php endif; ?>">
                                        <div class="service-title">
                                            <h6 class="title"><?php echo e($data->name); ?></h6>
                                        </div>
                                    </a>
                                </li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                    <div class="attorney-contact-form-wrap">
                        <h3 class="title"><?php echo e(get_static_option('service_single_page_' . $user_select_lang_slug . '_query_form_title')); ?></h3>
                        <?php echo $__env->make('backend.partials.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php if($errors->any()): ?>
                            <div class="alert alert-danger">
                                <ul>
                                    <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <li><?php echo e($error); ?></li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            </div>
                        <?php endif; ?>
                        <div class="attorney-contact-form">
                            <form action="<?php echo e(route('frontend.service.quote')); ?>" method="post" enctype="multipart/form-data">
                                <?php echo csrf_field(); ?>
                                <?php echo render_form_field_for_frontend(get_static_option('service_query_form_fields')); ?>

                                <div class="form-group">
                                    <input type="submit" value="<?php echo e(__('Submit Request')); ?>" class="submit-btn">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/nexelit/beta/nexelit/@core/resources/views/frontend/pages/service/service-single.blade.php ENDPATH**/ ?>