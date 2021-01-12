<?php if(!empty(get_static_option('preloader_status'))): ?>
    <?php
        $preloader = 'preloader-default';
        if (!empty(get_static_option('preloader_custom'))){
            $preloader = 'preloader-custom';
        }elseif(empty(get_static_option('preloader_custom')) && !empty(get_static_option('preloader_default'))){
            $preloader = 'preloader-dynamic';
        }
    ?>
<?php echo $__env->make('frontend.partials.preloader.'.$preloader, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php endif; ?>

<?php echo $__env->make('frontend.partials.search-popup', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php if(!empty(get_static_option('home_page_support_bar_section_status'))): ?>
<div class="top-bar-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="top-bar-inner">
                    <div class="left-content">
                        <ul class="social-icons">
                            <?php $__currentLoopData = $all_social_item; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li><a href="<?php echo e($data->url); ?>"><i class="<?php echo e($data->icon); ?>"></i></a></li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                    <div class="right-content">
                        <ul>
                            <?php if(auth()->check()): ?>
                            <?php
                                $route = auth()->guest() == 'admin' ? route('admin.home') : route('user.home');
                            ?>
                            <li><a href="<?php echo e($route); ?>"><?php echo e(__('Dashboard')); ?></a>  <span>/</span>
                                <a href="<?php echo e(route('user.logout')); ?>"
                                   onclick="event.preventDefault();
                                                     document.getElementById('userlogout-form').submit();">
                                    <?php echo e(__('Logout')); ?>

                                </a>
                                <form id="userlogout-form" action="<?php echo e(route('user.logout')); ?>" method="POST" style="display: none;">
                                    <?php echo csrf_field(); ?>
                                </form>
                            </li>
                            <?php else: ?>
                            <li><a href="<?php echo e(route('user.login')); ?>"><?php echo e(__('Login')); ?></a> <span>/</span> <a href="<?php echo e(route('user.register')); ?>"><?php echo e(__('Register')); ?></a></li>
                            <?php endif; ?>
                            <?php if(!empty(get_static_option('language_select_option'))): ?>
                                <li>
                                    <select id="langchange">
                                        <?php $__currentLoopData = $all_language; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option <?php if($user_select_lang_slug == $lang->slug): ?> selected <?php endif; ?> value="<?php echo e($lang->slug); ?>" class="lang-option"><?php echo e($lang->name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </li>
                            <?php endif; ?>
                            <?php if(!empty(get_static_option('navbar_button'))): ?>
                                <li>
                                    <?php
                                        $custom_url = !empty(get_static_option('navbar_button_custom_url_status')) ? get_static_option('navbar_button_custom_url') : route('frontend.request.quote');
                                    ?>
                                    <div class="btn-wrapper">
                                        <a href="<?php echo e($custom_url); ?>"
                                           <?php if(!empty(get_static_option('navbar_button_custom_url_status'))): ?> target="_blank"
                                           <?php endif; ?> class="boxed-btn reverse-color"><?php echo e(get_static_option('navbar_'.$user_select_lang_slug.'_button_text')); ?></a>
                                    </div>
                                </li>
                            <?php endif; ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php endif; ?>
<div class="header-style-01  header-variant-<?php echo e(get_static_option('home_page_variant')); ?>">
    <nav class="navbar navbar-area nav-absolute navbar-expand-lg nav-style-01">
        <div class="container nav-container">
            <div class="responsive-mobile-menu">
                <div class="logo-wrapper">
                    <a href="<?php echo e(url('/')); ?>" class="logo">
                        <?php if(!empty(get_static_option('site_white_logo'))): ?>
                            <?php echo render_image_markup_by_attachment_id(get_static_option('site_white_logo')); ?>

                        <?php else: ?>
                            <h2 class="site-title"><?php echo e(get_static_option('site_'.$user_select_lang_slug.'_title')); ?></h2>
                        <?php endif; ?>
                    </a>
                </div>
                <?php if(!empty(get_static_option('product_module_status'))): ?>
                    <div class="mobile-cart"><a href="<?php echo e(route('frontend.products.cart')); ?>"><i class="flaticon-shopping-cart"></i> <span class="pcount"><?php echo e(cart_total_items()); ?></span></a></div>
                <?php endif; ?>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bizcoxx_main_menu"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bizcoxx_main_menu">
                <ul class="navbar-nav">
                    <?php echo render_menu_by_id($primary_menu); ?>

                </ul>
            </div>
            <div class="nav-right-content">
                <div class="icon-part">
                    <ul>
                        <li id="search"><a href="#"><i class="flaticon-search-1"></i></a></li>
                        <?php if(!empty(get_static_option('product_module_status'))): ?>
                        <li class="cart"><a href="<?php echo e(route('frontend.products.cart')); ?>"><i class="flaticon-shopping-cart"></i> <span class="pcount"><?php echo e(cart_total_items()); ?></span></a></li>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</div>
<?php /**PATH /home/xgenxchi/public_html/laravel/nexelit/@core/resources/views/frontend/partials/navbar.blade.php ENDPATH**/ ?>