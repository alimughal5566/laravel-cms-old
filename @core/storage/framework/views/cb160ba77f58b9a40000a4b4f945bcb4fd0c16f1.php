<?php $__env->startSection('style'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/summernote-bs4.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/dropzone.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/media-uploader.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/bootstrap-tagsinput.css')); ?>">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
    <style>
        .dataTables_wrapper .dataTables_paginate .paginate_button{
            padding: 0 !important;
        }
        div.dataTables_wrapper div.dataTables_length select {
            width: 60px;
            display: inline-block;
        }
    </style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Services')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
                <?php echo $__env->make('backend/partials/message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php if($errors->any()): ?>
                    <div class="alert alert-danger">
                        <ul>
                            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li><?php echo e($error); ?></li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                <?php endif; ?>
            </div>

            <div class="col-lg-12 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__('Service Items')); ?></h4>

                        <div class="bulk-delete-wrapper">
                            <div class="select-box-wrap">
                                <select name="bulk_option" id="bulk_option">
                                    <option value=""><?php echo e(__('Bulk Action')); ?></option>
                                    <option value="delete"><?php echo e(__('Delete')); ?></option>
                                </select>
                                <button class="btn btn-primary btn-sm" id="bulk_delete_btn"><?php echo e(__('Apply')); ?></button>
                            </div>
                        </div>

                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <?php $a=0; ?>
                            <?php $__currentLoopData = $all_services; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $service): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li class="nav-item">
                                    <a class="nav-link <?php if($a == 0): ?> active <?php endif; ?>"  data-toggle="tab" href="#slider_tab_<?php echo e($key); ?>" role="tab" aria-controls="home" aria-selected="true"><?php echo e(get_language_by_slug($key)); ?></a>
                                </li>
                                <?php $a++; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                        <div class="tab-content margin-top-40" id="myTabContent">
                            <?php $b=0; ?>
                            <?php $__currentLoopData = $all_services; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $service): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="tab-pane fade <?php if($b == 0): ?> show active <?php endif; ?>" id="slider_tab_<?php echo e($key); ?>" role="tabpanel" >
                                    <div class="table-wrap table-responsive">
                                        <table class="table table-default">
                                        <thead>
                                        <th>
                                            <div class="mark-all-checkbox">
                                                <input type="checkbox" class="all-checkbox">
                                            </div>
                                        </th>
                                        <th><?php echo e(__('ID')); ?></th>
                                        <th><?php echo e(__('Title')); ?></th>
                                        <th><?php echo e(__('Status')); ?></th>
                                        <th><?php echo e(__('Image')); ?></th>
                                        <th><?php echo e(__('Icon')); ?></th>
                                        <th><?php echo e(__('Category')); ?></th>
                                        <th><?php echo e(__('Date')); ?></th>
                                        <th><?php echo e(__('Action')); ?></th>
                                        </thead>
                                        <tbody>
                                        <?php $__currentLoopData = $service; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                                <td>
                                                    <div class="bulk-checkbox-wrapper">
                                                        <input type="checkbox" class="bulk-checkbox" name="bulk_delete[]" value="<?php echo e($data->id); ?>">
                                                    </div>
                                                </td>
                                                <td><?php echo e($data->id); ?></td>
                                                <td><?php echo e($data->title); ?></td>
                                                <td>
                                                    <?php if($data->status == 'draft'): ?>
                                                        <span class="alert alert-warning" style="margin-top: 20px;display: inline-block;"><?php echo e(__('Draft')); ?></span>
                                                    <?php else: ?>
                                                        <span class="alert alert-success" style="margin-top: 20px;display: inline-block;"><?php echo e(__('Publish')); ?></span>
                                                    <?php endif; ?>
                                                </td>
                                                <td>
                                                    <?php $img_url = '';?>
                                                    <?php
                                                        $service_section_img = get_attachment_image_by_id($data->image,null,true);
                                                        $img_url = '';
                                                    ?>
                                                    <?php if(!empty($service_section_img)): ?>
                                                        <div class="attachment-preview">
                                                            <div class="thumbnail">
                                                                <div class="centered">
                                                                    <img class="avatar user-thumb" src="<?php echo e($service_section_img['img_url']); ?>" alt="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <?php  $img_url = $service_section_img['img_url']; ?>
                                                    <?php endif; ?>
                                                </td>
                                                <td><i style="font-size: 40px;" class="<?php echo e($data->icon); ?>"></i></td>
                                                <td><?php echo e(get_service_category_by_id($data->categories_id)); ?></td>
                                                <td><?php echo e(date_format($data->created_at,'d M Y')); ?></td>
                                                <td>
                                                    <a tabindex="0" class="btn btn-lg btn-danger btn-xs mb-3 mr-1"
                                                       role="button"
                                                       data-toggle="popover"
                                                       data-trigger="focus"
                                                       data-html="true"
                                                       title=""
                                                       data-content="
                                               <h6>Are you sure to delete this service item ?</h6>
                                               <form method='post' action='<?php echo e(route('admin.services.delete',$data->id)); ?>'>
                                               <input type='hidden' name='_token' value='<?php echo e(csrf_token()); ?>'>
                                               <br>
                                                <input type='submit' class='btn btn-danger btn-sm' value='Yes,Delete'>
                                                </form>
                                                ">
                                                        <i class="ti-trash"></i>
                                                    </a>
                                                    <a href="#"
                                                       data-toggle="modal"
                                                       data-target="#service_item_edit_modal"
                                                       class="btn btn-lg btn-primary btn-xs mb-3 mr-1 service_edit_btn"
                                                       data-id="<?php echo e($data->id); ?>"
                                                       data-title="<?php echo e($data->title); ?>"
                                                       data-description="<?php echo e($data->description); ?>"
                                                       data-icon="<?php echo e($data->icon); ?>"
                                                       data-excerpt="<?php echo e($data->excerpt); ?>"
                                                       data-imageid="<?php echo e($data->image); ?>"
                                                       data-slug="<?php echo e($data->slug); ?>"
                                                       data-image="<?php echo e($img_url); ?>"
                                                       data-metatag="<?php echo e($data->meta_tag); ?>"
                                                       data-metadesc="<?php echo e($data->meta_description); ?>"
                                                       data-lang="<?php echo e($data->lang); ?>"
                                                       data-category="<?php echo e($data->categories_id); ?>"
                                                       data-status="<?php echo e($data->status); ?>"
                                                    >
                                                        <i class="ti-pencil"></i>
                                                    </a>
                                                    <br>
                                                    <a target="_blank" href="<?php echo e(route('frontend.services.single',$data->slug)); ?>" class="btn btn-xs btn-info btn-sm mb-3 mr-1">
                                                        <i class="ti-eye"></i>
                                                    </a>
                                                    <form action="<?php echo e(route('admin.services.clone')); ?>" method="post" style="display: inline-block">
                                                        <?php echo csrf_field(); ?>
                                                        <input type="hidden" name="item_id" value="<?php echo e($data->id); ?>">
                                                        <button type="submit" title="clone this to new draft" class="btn btn-xs btn-secondary btn-sm mb-3 mr-1"><i class="far fa-copy"></i></button>
                                                    </form>
                                                </td>
                                            </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </tbody>
                                    </table>
                                    </div>
                                </div>
                                <?php $b++; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

<div class="modal fade" id="service_item_edit_modal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><?php echo e(__('Edit Service Item')); ?></h5>
                <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
            </div>
            <form action="<?php echo e(route('admin.services.update')); ?>" id="services_edit_modal_form" enctype="multipart/form-data" method="post">
                <div class="modal-body">
                    <?php echo csrf_field(); ?>
                    <input type="hidden" name="id" id="service_id" value="">
                    <div class="form-group">
                        <label for="edit_language"><?php echo e(__('Language')); ?></label>
                        <select name="lang" id="edit_language" class="form-control">
                            <?php $__currentLoopData = get_all_language(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($language->slug); ?>"><?php echo e($language->name); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="edit_title"><?php echo e(__('Title')); ?></label>
                        <input type="text" class="form-control"  id="edit_title"  name="title" placeholder="<?php echo e(__('Title')); ?>">
                    </div>
                    <div class="form-group">
                        <label for="edit_slug"><?php echo e(__('Slug')); ?></label>
                        <input type="text" class="form-control"  id="edit_slug"  name="slug" placeholder="<?php echo e(__('Slug')); ?>">
                    </div>
                    <div class="form-group">
                        <label for="edit_icon" class="d-block"><?php echo e(__('Icon')); ?></label>
                        <div class="btn-group ">
                            <button type="button" class="btn btn-primary iconpicker-component">
                                <i class="fas fa-exclamation-triangle"></i>
                            </button>
                            <button type="button" class="icp icp-dd btn btn-primary dropdown-toggle"
                                    data-selected="fas fa-exclamation-triangle" data-toggle="dropdown">
                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <div class="dropdown-menu"></div>
                        </div>
                        <input type="hidden" class="form-control"  id="edit_icon" value="fas fa-exclamation-triangle" name="icon">
                    </div>
                    <div class="form-group">
                        <label for="edit_description"><?php echo e(__('Description')); ?></label>
                        <input type="hidden" name="description" id="edit_description" >
                        <div class="summernote"></div>
                    </div>
                    <div class="form-group">
                        <label for="edit_excerpt"><?php echo e(__('Excerpt')); ?></label>
                        <textarea name="excerpt" id="edit_excerpt" class="form-control max-height-150" placeholder="<?php echo e(__('Excerpt')); ?>" cols="30" rows="10"></textarea>
                        <small class="info-text"><?php echo e(__('it will show in home pages service item short details.')); ?></small>
                    </div>
                    <div class="form-group">
                        <label for="edit_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                        <input type="text" name="meta_tags"  class="form-control" id="edit_meta_tags">
                    </div>
                    <div class="form-group">
                        <label for="edit_meta_description"><?php echo e(__('Meta Description')); ?></label>
                        <textarea name="meta_description"  class="form-control" id="edit_meta_description"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="edit_status"><?php echo e(__('Status')); ?></label>
                        <select name="status" id="edit_status" class="form-control">
                            <option value="publish"><?php echo e(__('Publish')); ?></option>
                            <option value="draft"><?php echo e(__('Draft')); ?></option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="edit_category"><?php echo e(__('Category')); ?></label>
                        <select name="categories_id" id="edit_category" class="form-control">
                            <option value=""><?php echo e(__('Select Category')); ?></option>
                            <?php $__currentLoopData = $service_category; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($data->id); ?>"><?php echo e($data->name); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="edit_image"><?php echo e(__('Image')); ?></label>
                        <div class="media-upload-btn-wrapper">
                            <div class="img-wrap"></div>
                            <input type="hidden" id="edit_image" name="image" value="">
                            <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="Select Service Image" data-modaltitle="Upload Service Image" data-toggle="modal" data-target="#media_upload_modal">
                                <?php echo e(__('Upload Image')); ?>

                            </button>
                        </div>
                        <small><?php echo e(__('Recommended image size 1920x1280')); ?></small>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo e(__('Close')); ?></button>
                    <button type="submit" class="btn btn-primary"><?php echo e(__('Save Changes')); ?></button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php echo $__env->make('backend.partials.media-upload.media-upload-markup', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script src="<?php echo e(asset('assets/backend/js/summernote-bs4.js')); ?>"></script>
    <script src="<?php echo e(asset('assets/backend/js/bootstrap-tagsinput.js')); ?>"></script>
    <script>
        $(document).ready(function () {

            $(document).on('click','#bulk_delete_btn',function (e) {
                e.preventDefault();

                var bulkOption = $('#bulk_option').val();
                var allCheckbox =  $('.bulk-checkbox:checked');
                var allIds = [];
                allCheckbox.each(function(index,value){
                    allIds.push($(this).val());
                });
                if(allIds != '' && bulkOption == 'delete'){
                    $(this).text('Deleting...');
                    $.ajax({
                        'type' : "POST",
                        'url' : "<?php echo e(route('admin.services.bulk.action')); ?>",
                        'data' : {
                            _token: "<?php echo e(csrf_token()); ?>",
                            ids: allIds
                        },
                        success:function (data) {
                            location.reload();
                        }
                    });
                }

            });

            $('.all-checkbox').on('change',function (e) {
                e.preventDefault();
                var value = $('.all-checkbox').is(':checked');
                var allChek = $(this).parent().parent().parent().parent().parent().find('.bulk-checkbox');
                //have write code here fr
                if( value == true){
                    allChek.prop('checked',true);
                }else{
                    allChek.prop('checked',false);
                }
            });

            $(document).on('click','.service_edit_btn',function(){
                var el = $(this);
                var id = el.data('id');
                var title = el.data('title');
                var description = el.data('description');
                var form = $('#services_edit_modal_form');
                var imageid = el.data('imageid');
                var image = el.data('image');

                form.find('#service_id').val(id);
                form.find('#edit_title').val(title);
                form.find('#edit_description').val(description);
                form.find('#edit_meta_tags').val(el.data('metatag'));
                form.find('#edit_meta_description').val(el.data('metadesc'));
                form.find('#edit_excerpt').val(el.data('excerpt'));

                form.find('.summernote').summernote('code', description);
                form.find('#edit_language option[value="'+el.data('lang')+'"]').attr('selected',true);
                form.find('.icp-dd').attr('data-selected',el.data('icon'));
                form.find('.iconpicker-component i').attr('class',el.data('icon'));
                form.find('#edit_icon').val(el.data('icon'));
                form.find('#edit_slug').val(el.data('slug'));
                form.find('#edit_status option[value="'+el.data('status')+'"]').attr('selected',true);
                //edit_status
                $('#edit_meta_tags').tagsinput('refresh');
                if(imageid != ''){
                    form.find('.media-upload-btn-wrapper .img-wrap').html('<div class="attachment-preview"><div class="thumbnail"><div class="centered"><img class="avatar user-thumb" src="'+image+'" > </div></div></div>');
                    form.find('.media-upload-btn-wrapper input').val(imageid);
                    form.find('.media-upload-btn-wrapper .media_upload_form_btn').text('Change Image');
                }

                $.ajax({
                    url : "<?php echo e(route('admin.service.category.by.slug')); ?>",
                    type: "POST",
                    data: {
                        _token : "<?php echo e(csrf_token()); ?>",
                        lang: el.data('lang')
                    },
                    success:function (data) {
                        $('#edit_category').html('');
                        $.each(data,function (index,value) {
                            var selected = value.id == el.data('category') ? 'selected' : '';
                            $('#edit_category').append('<option '+selected+' value="'+value.id+'">'+value.name+'</option>');
                        });
                    }
                });

            });

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

            $(document).on('change','#language',function (e) {
                e.preventDefault();
                var selectedLang = $(this).val();
                $.ajax({
                   url : "<?php echo e(route('admin.service.category.by.slug')); ?>",
                   type: "POST",
                   data: {
                       _token : "<?php echo e(csrf_token()); ?>",
                       lang: selectedLang
                   },
                   success:function (data) {
                       $('#category').html('');
                       $.each(data,function (index,value) {
                           $('#category').append('<option value="'+value.id+'">'+value.name+'</option>');
                       })
                   }
                });
            });

            $(document).on('change','#edit_language',function (e) {
                e.preventDefault();
                var selectedLang = $(this).val();
                $.ajax({
                    url : "<?php echo e(route('admin.service.category.by.slug')); ?>",
                    type: "POST",
                    data: {
                        _token : "<?php echo e(csrf_token()); ?>",
                        lang: selectedLang
                    },
                    success:function (data) {
                        $('#edit_category').html('');
                        $.each(data,function (index,value) {
                            $('#edit_category').append('<option value="'+value.id+'">'+value.name+'</option>');
                        })
                    }
                });
            });

            $('.icp-dd').iconpicker();
            $('.icp-dd').on('iconpickerSelected', function (e) {
                var selectedIcon = e.iconpickerValue;
                $(this).parent().parent().children('input').val(selectedIcon);
            });

        });
    </script>
    <!-- Start datatable js -->
    <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="//cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="//cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <script src="//cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="//cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>
    <script>
        $(document).ready(function() {

            $('.table-wrap > table').DataTable( {
                "order": [[ 1, "desc" ]]
            } );
        } );
    </script>
    <script src="<?php echo e(asset('assets/backend/js/dropzone.js')); ?>"></script>
    <?php echo $__env->make('backend.partials.media-upload.media-js', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/dvrobin/Desktop/Sharifur-Backup/localhost/nexelit/@core/resources/views/backend/pages/service/index.blade.php ENDPATH**/ ?>