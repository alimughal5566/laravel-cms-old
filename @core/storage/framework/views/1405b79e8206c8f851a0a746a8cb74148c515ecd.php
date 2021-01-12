<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Dashboard')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>

    <div class="main-content-inner">
        <div class="row">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-md-4 mt-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg1">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-thumb-up"></i> <?php echo e(__('Total Admin')); ?></div>
                                    <h2><?php echo e($total_admin); ?></h2>
                                </div>
                                <canvas id="seolinechart1" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg2">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Blogs')); ?></div>
                                    <h2><?php echo e($blog_count); ?></h2>
                                </div>
                                <canvas id="seolinechart2" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                    <?php if(!empty(get_static_option('job_module_status'))): ?>
                    <div class="col-md-4 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg3">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Jobs')); ?></div>
                                    <h2><?php echo e($total_jobs); ?></h2>
                                </div>
                                <canvas id="seolinechart2" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                    <?php endif; ?>
                    <?php if(!empty(get_static_option('events_module_status'))): ?>
                    <div class="col-md-4 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg4">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Events')); ?></div>
                                    <h2><?php echo e($total_events); ?></h2>
                                </div>
                                <canvas id="seolinechart2" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                        <div class="col-md-4 mt-md-5 mb-3">
                            <div class="card">
                                <div class="seo-fact sbg4">
                                    <div class="p-4 d-flex justify-content-between align-items-center">
                                        <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Events Attendance')); ?></div>
                                        <h2><?php echo e($total_event_attendance); ?></h2>
                                    </div>
                                    <canvas id="seolinechart2" height="50"></canvas>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                    <?php if(!empty(get_static_option('donations_module_status'))): ?>
                    <div class="col-md-4 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg3">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Donations Cause')); ?></div>
                                    <h2><?php echo e($total_donations); ?></h2>
                                </div>
                                <canvas id="seolinechart2" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                        <div class="col-md-4 mt-md-5 mb-3">
                            <div class="card">
                                <div class="seo-fact sbg3">
                                    <div class="p-4 d-flex justify-content-between align-items-center">
                                        <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Donated ')); ?></div>
                                        <h2><?php echo e($total_donated_log); ?></h2>
                                    </div>
                                    <canvas id="seolinechart2" height="50"></canvas>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                    <?php if(!empty(get_static_option('product_module_status'))): ?>

                    <div class="col-md-4 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg2">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Products')); ?></div>
                                    <h2><?php echo e($total_products); ?></h2>
                                </div>
                                <canvas id="seolinechart2" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg2">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Products Order')); ?></div>
                                    <h2><?php echo e($total_product_order); ?></h2>
                                </div>
                                <canvas id="seolinechart2" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                    <?php endif; ?>
                    <div class="col-md-4 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg3">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Testimonial')); ?></div>
                                    <h2><?php echo e($total_testimonial); ?></h2>
                                </div>
                                <canvas id="seolinechart2" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg4">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Team Member')); ?></div>
                                    <h2><?php echo e($total_team_member); ?></h2>
                                </div>
                                <canvas id="seolinechart2" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg1">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Counterup')); ?></div>
                                    <h2><?php echo e($total_counterup); ?></h2>
                                </div>
                                <canvas id="seolinechart2" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg2">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Price Plan')); ?></div>
                                    <h2><?php echo e($total_price_plan); ?></h2>
                                </div>
                                <canvas id="seolinechart2" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg3">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Case Study')); ?></div>
                                    <h2><?php echo e($total_works); ?></h2>
                                </div>
                                <canvas id="seolinechart2" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg4">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Services')); ?></div>
                                    <h2><?php echo e($total_services); ?></h2>
                                </div>
                                <canvas id="seolinechart2" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg1">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Key Feature')); ?></div>
                                    <h2><?php echo e($total_key_features); ?></h2>
                                </div>
                                <canvas id="seolinechart2" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg2">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Faq')); ?></div>
                                    <h2><?php echo e($total_Faq); ?></h2>
                                </div>
                                <canvas id="seolinechart2" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg1">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon"><i class="ti-share"></i> <?php echo e(__('Total Brands')); ?></div>
                                    <h2><?php echo e($total_brand); ?></h2>
                                </div>
                                <canvas id="seolinechart2" height="50"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/xgenxchi/public_html/laravel/nexelit/@core/resources/views/backend/admin-home.blade.php ENDPATH**/ ?>