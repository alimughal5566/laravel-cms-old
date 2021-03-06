<footer class="footer-area">
    <?php if(count($footer_widgets) > 0): ?>
        <div class="footer-top padding-top-90 padding-bottom-65">
            <div class="container">
                <div class="row">
                    <?php $__currentLoopData = $footer_widgets; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php echo call_user_func_array($data->frontend_render_function,['id' => $data->id]); ?>

                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
    <?php endif; ?>
    <div class="copyright-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="copyright-item">
                        <div class="copyright-area-inner">
                            <?php
                                $footer_text = get_static_option('site_'.get_user_lang().'_footer_copyright');
                                $footer_text = str_replace('{copy}','&copy;',$footer_text);
                                $footer_text = str_replace('{year}',date('Y'),$footer_text);
                            ?>
                            <?php echo $footer_text; ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="back-to-top">
    <span class="back-top">
        <i class="fas fa-angle-up"></i>
    </span>
</div>

<?php if(!empty(get_static_option('popup_enable_status') && !empty(get_static_option('popup_selected_'.$user_select_lang_slug.'_id')))): ?>
    <?php
        $popup_id = get_static_option('popup_selected_'.$user_select_lang_slug.'_id');

        $popup_details = \App\PopupBuilder::find($popup_id);
        $website_url = url('/');
        if (preg_match('/(xgenious)/',$website_url)){
            $popup_details = \App\PopupBuilder::where('lang',$user_select_lang_slug)->inRandomOrder()->first();
        }

        $popup_class = '';
        if ($popup_details->type == 'notice'){
            $popup_class = 'notice-modal';
        }elseif($popup_details->type == 'only_image'){
            $popup_class = 'only-image-modal';
        }elseif($popup_details->type == 'promotion'){
            $popup_class = 'promotion-modal';
        }else{
            $popup_class = 'discount-modal';
        }
    ?>
    <script src="<?php echo e(asset('assets/common/js/countdown.jquery.js')); ?>"></script>
    <?php echo $__env->make('frontend.partials.popup', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php endif; ?>

<!-- load all script -->
<script src="<?php echo e(asset('assets/frontend/js/bootstrap.bundle.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/frontend/js/dynamic-script.js')); ?>"></script>
<script src="<?php echo e(asset('assets/frontend/js/jquery.magnific-popup.js')); ?>"></script>
<script src="<?php echo e(asset('assets/frontend/js/imagesloaded.pkgd.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/frontend/js/isotope.pkgd.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/frontend/js/jquery.waypoints.js')); ?>"></script>
<script src="<?php echo e(asset('assets/frontend/js/jquery.counterup.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/frontend/js/owl.carousel.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/frontend/js/wow.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/frontend/js/jquery.ihavecookies.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/frontend/js/main.js')); ?>"></script>
<?php if(!empty(get_static_option('site_google_captcha_v3_site_key')) && request()->path() == 'home/01'
|| !empty(get_static_option('site_google_captcha_v3_site_key')) && request()->path() == 'home/02'
|| !empty(get_static_option('site_google_captcha_v3_site_key')) && request()->path() == 'home/03'
|| !empty(get_static_option('site_google_captcha_v3_site_key')) && request()->path() == 'home/04'
|| !empty(get_static_option('site_google_captcha_v3_site_key')) && request()->path() == '/'
): ?>
    <script
        src="https://www.google.com/recaptcha/api.js?render=<?php echo e(get_static_option('site_google_captcha_v3_site_key')); ?>"></script>
    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute("<?php echo e(get_static_option('site_google_captcha_v3_site_key')); ?>", {action: 'homepage'}).then(function (token) {
                document.getElementById('gcaptcha_token').value = token;
            });
        });
    </script>
    <?php if(!empty(get_static_option('site_gdpr_cookie_enabled'))): ?>
        <?php $gdpr_cookie_link = str_replace('{url}',url('/'),get_static_option('site_gdpr_cookie_'.$user_select_lang_slug.'_more_info_link')) ?>
        <script>
            $(document).ready(function () {
                var delayTime = "<?php echo e(get_static_option('site_gdpr_cookie_delay')); ?>";
                delayTime = delayTime ? delayTime : 4000;

                $('body').ihavecookies({
                    title: "<?php echo e(get_static_option('site_gdpr_cookie_' . $user_select_lang_slug . '_title')); ?>",
                    message: "<?php echo e(get_static_option('site_gdpr_cookie_'.$user_select_lang_slug.'_message')); ?>",
                    expires: "<?php echo e(get_static_option('site_gdpr_cookie_expire')); ?>",
                    link: "<?php echo e($gdpr_cookie_link); ?>",
                    delay: delayTime,
                    moreInfoLabel: "<?php echo e(get_static_option('site_gdpr_cookie_'.$user_select_lang_slug.'_more_info_label')); ?>",
                    acceptBtnLabel: "<?php echo e(get_static_option('site_gdpr_cookie_'.$user_select_lang_slug.'_accept_button_label')); ?>",
                    advancedBtnLabel: "<?php echo e(get_static_option('site_gdpr_cookie_'.$user_select_lang_slug.'_decline_button_label')); ?>"
                });
                $('body').on('click', '#gdpr-cookie-close', function (e) {
                    e.preventDefault();
                    $(this).parent().remove();
                });
            });
        </script>
    <?php endif; ?>
<?php endif; ?>
<script>
    (function ($) {
        "use strict";

        function getCookie(cname) {
            var name = cname + "=";
            var decodedCookie = decodeURIComponent(document.cookie);
            var ca = decodedCookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }

        function setCookie(cname, cvalue, exdays) {
            var d = new Date();
            d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
            var expires = "expires=" + d.toUTCString();
            document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
        }

        <?php if(!empty(get_static_option('site_sticky_navbar_enabled'))): ?>
        $(window).on('scroll', function () {

            if ($(window).width() > 992) {
                /*--------------------------
                sticky menu activation
               -------------------------*/
                var st = $(this).scrollTop();
                var mainMenuTop = $('.navbar-area');
                if ($(window).scrollTop() > 1000) {
                    // active sticky menu on scrollup
                    mainMenuTop.addClass('nav-fixed');
                } else {
                    mainMenuTop.removeClass('nav-fixed ');
                }
            }
        });
        <?php endif; ?>
        $(document).on('change', '.search-form-warp', function (e) {
            e.preventDefault();
            var el = $(this);
            var searchType = $('#search_popup_search_type').val();
            console.log(searchType);
            if (searchType == 'blog') {
                el.attr('action', "<?php echo e(route('frontend.blog.search')); ?>");
                el.find('.search-field').attr('name', 'search');
            } else if (searchType == 'event') {
                el.attr('action', "<?php echo e(route('frontend.events.search')); ?>");
                el.find('.search-field').attr('name', 'search');
            } else if (searchType == 'knowledgebase') {
                el.attr('action', "<?php echo e(route('frontend.knowledgebase.search')); ?>");
                el.find('.search-field').attr('name', 'search');
            } else if (searchType == 'product') {
                el.attr('action', "<?php echo e(route('frontend.products')); ?>");
                el.find('.search-field').attr('name', 'q');
            }

        });
        $(document).ready(function () {
                <?php if(!empty(get_static_option('popup_enable_status') && !empty(get_static_option('popup_selected_'.$user_select_lang_slug.'_id')))): ?>

            var delayTime = "<?php echo e(get_static_option('popup_delay_time')); ?>";
            delayTime = delayTime ? delayTime : 4000;

            if (getCookie('nx_popup_show') == '') {
                setTimeout(function () {
                    $('.nx-popup-backdrop').addClass('show');
                    $('.nx-popup-wrapper').addClass('show');

                }, parseInt(delayTime));
            }

            $(document).on('click', '.nx-popup-close,.nx-popup-backdrop', function (e) {
                e.preventDefault();
                $('.nx-modal-content').html('');
                $('.nx-popup-backdrop').removeClass('show');
                $('.nx-popup-wrapper').removeClass('show');
                setCookie('nx_popup_show', 'no', 1);
            });

            var offerTime = "<?php echo e($popup_details->offer_time_end); ?>";
            var year = offerTime.substr(0, 4);
            var month = offerTime.substr(5, 2);
            var day = offerTime.substr(8, 2);
            if (offerTime) {
                $('#countdown').countdown({
                    year: year,
                    month: month,
                    day: day,
                    labels: true,
                    labelText: {
                        'days': "<?php echo e(__('days')); ?>",
                        'hours': "<?php echo e(__('hours')); ?>",
                        'minutes': "<?php echo e(__('min')); ?>",
                        'seconds': "<?php echo e(__('sec')); ?>",
                    }
                });
            }
            <?php endif; ?>

            $(document).on('change', '#langchange', function (e) {
                $.ajax({
                    url: "<?php echo e(route('frontend.langchange')); ?>",
                    type: "GET",
                    data: {
                        'lang': $(this).val()
                    },
                    success: function (data) {
                        location.reload();
                    }
                })
            });
            $(document).on('click', '.newsletter-form-wrap .submit-btn', function (e) {
                e.preventDefault();
                var email = $('.newsletter-form-wrap input[type="email"]').val();
                $('.newsletter-widget .form-message-show').html('');

                $.ajax({
                    url: "<?php echo e(route('frontend.subscribe.newsletter')); ?>",
                    type: "POST",
                    data: {
                        _token: "<?php echo e(csrf_token()); ?>",
                        email: email
                    },
                    success: function (data) {
                        $('.newsletter-widget .form-message-show').html('<div class="alert alert-success">' + data + '</div>');
                    },
                    error: function (data) {
                        var errors = data.responseJSON.errors;
                        $('.newsletter-widget .form-message-show').html('<div class="alert alert-danger">' + errors.email[0] + '</div>');
                    }
                });
            });
        });

    }(jQuery));
</script>

<?php echo $__env->yieldContent('scripts'); ?>
<?php if(!empty(get_static_option('tawk_api_key'))): ?>
    <!--Start of Tawk.to Script-->
    <script type="text/javascript">
        var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
        (function () {
            var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
            s1.async = true;
            s1.src = "https://embed.tawk.to/<?php echo e(get_static_option('tawk_api_key')); ?>/default";
            s1.charset = 'UTF-8';
            s1.setAttribute('crossorigin', '*');
            s0.parentNode.insertBefore(s1, s0);
        })();
    </script>
    <?php endif; ?>

</body>

</html>
<?php /**PATH /Users/dvrobin/Desktop/Sharifur-Backup/localhost/nexelit/@core/resources/views/frontend/partials/footer.blade.php ENDPATH**/ ?>