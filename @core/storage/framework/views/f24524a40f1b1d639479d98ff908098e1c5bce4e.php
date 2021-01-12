<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?php echo e(get_static_option('site_'.get_user_lang().'_title')); ?> - <?php echo e(get_static_option('site_'.get_user_lang().'_tag_line')); ?></title>
</head>

<body>

<form action="<?php echo e($paytm_txn_url); ?>" method="post" id="payment_form">
    <?php
    foreach($paramList as $name => $value) {
        echo '<input type="hidden" name="' . $name .'" value="' . $value . '">';
    }
    ?>
    <input type="hidden" name="CHECKSUMHASH" value="<?php echo $checkSum ?>">
</form>

<script>
    document.getElementById("payment_form").submit();
</script>
</body>

</html>
    
    
    <?php /**PATH /home/xgenxchi/public_html/laravel/nexelit/@core/resources/views/frontend/payment/paytm.blade.php ENDPATH**/ ?>