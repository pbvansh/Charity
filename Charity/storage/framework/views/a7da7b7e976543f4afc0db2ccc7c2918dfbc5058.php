<?php $__env->startSection('dashboardcontent'); ?>
<!-- ====================== links Menu Content Start store =============================================== -->
<!-- / .main-navbar -->
  <?php if($message = Session::get('success')): ?>
  <div class="alert alert-success alert-dismissible fade show mb-0" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">×</span>
  </button>
  <i class="icon-material-outline-check mx-2"></i>
  <strong>Success!</strong> <?php echo e($message); ?></div>
  <?php endif; ?>
<!-- ====================== links Menu Content Start store =============================================== -->
  <?php if($message = Session::get('Delete')): ?>
   <div class="alert alert-danger alert-dismissible fade show mb-0" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">×</span>
    </button>
    <i class="icon-material-outline-check mx-2"></i>
    <strong>Delete!</strong> <?php echo e($message); ?> </div>
  <?php endif; ?>
<!-- ====================== links Menu Content Start store =============================================== -->
    <div class="main-content-container container-fluid px-4">
      <div class="row">
        <div class="col-lg-8 mx-auto mt-4">
          <!-- Edit User Details Card -->
          <div class="card card-small edit-user-details mb-4">
            <div class="card-header p-0">
              <div class="edit-user-details__bg">
                <img src="<?php echo e(asset('dashboardassets/images/content-management/3.png')); ?>" alt="Background Image">
                <label class="edit-user-details__change-background">
                  <i class=" icon-feather-plus-square mr-1" style="font-size: 12px;top: 3px;"></i>
                  <a href="<?php echo e(url('dashboard/dashboardMenus/create')); ?>" style="color: #fff;">Create Menu</a>  
                </label>
              </div>
            </div>
            <div class="card-body p-0">
              <div class="border-bottom clearfix d-flex">
                <ul class="nav nav-tabs border-0 mt-auto mx-4 pt-2" id="myTab" role="tablist">
                 <li class="nav-item">
                  <a class="nav-link active" id="Menu-tab" data-toggle="tab" href="#Menu" role="tab" aria-controls="Menu" aria-selected="true">Menu Builder</a>
                </li>
                <!-- ====================== links Menu Content Start  =============================================== -->
                <?php $__currentLoopData = $Menus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li class="nav-item">
                  <a class="nav-link" id="<?php echo e($Menu->name); ?>-tab" data-toggle="tab" href="#<?php echo e($Menu->name); ?>" role="tab" aria-controls="<?php echo e($Menu->name); ?>" aria-selected="true"><?php echo e($Menu->name); ?></a>
                </li>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <!-- ====================== links Menu Content Start  =============================================== -->
              </ul>
            </div>
            <div class="tab-content" id="myTabContent">
              <div class="tab-pane active" id="Menu" role="tabpanel" aria-labelledby="Menu-tab">
                <form action="#" class="py-4 tab-content" id="myTabContent">
                  <div class="form-row mx-4">
                    <div class="col mb-3">
                      <h6 class="form-text m-0">Menu Builder Static</h6>
                      <p class="form-text text-muted m-0">You can output this menu anywhere on your site by calling.</p>
                    </div>
                  </div>
                  <hr>
                </form>
              </div>
              <!-- ====================== links Menu Content Start store =============================================== -->
              <?php $__currentLoopData = $Menus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <div class="tab-pane fade" id="<?php echo e($Menu->name); ?>" role="tabpanel" aria-labelledby="<?php echo e($Menu->name); ?>-tab">
                <div  class="py-4 tab-content" id="myTabContent">
                  <div class="form-row mx-4">
                    <div class="col mb-3">
                      <h6 class="form-text m-0"><?php echo e($Menu->name); ?></h6>
                      <p class="form-text text-muted m-0">You can output this menu anywhere on your site by calling.</p>
                    </div>
                  </div>
                  <!-- ====================== links Menu Content Start store =============================================== -->
                  <?php $__currentLoopData = $Menu->menu_items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <div class="user-activity__item pr-3 py-3">
                    <div class="user-activity__item__icon">
                      <i><?php echo e($item->order); ?></i>
                    </div>
                    <div class="user-activity__item__content">
                      <span class="text-light"><?php echo e($item->title); ?></span>
                      <p><?php echo e($item->title); ?> <a href="<?php echo $item->url; ?>" target="<?php echo e($item->target); ?>">View </a> </p>
                    </div>
                    <div class="user-activity__item__action ml-auto">
                      <div class="btn-group btn-group-sm">
                       <?php if(count($Menu->menu_items) == 1): ?>
                       <?php else: ?>
                        <form action="<?php echo e(route('dashboardMenu-items.destroy',$item->title)); ?>" method="POST" style="display: inline-block;" >
                      <?php echo csrf_field(); ?>
                      <?php echo method_field('DELETE'); ?>
                      <button type="submit" class="btn btn-white">
                      <span class="text-danger">
                      <i class="material-icons">clear</i>
                      </span> Delete </button>
                      </form>   
                      <?php endif; ?>
                      </div>
                      </div>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <!-- ====================== links Menu Content Start store =============================================== -->
                    <hr>
                    <!-- ====================== links Menu Content Start store =============================================== -->
                    <form action="<?php echo e(route('dashboardMenu-items.store')); ?>" method="POST"  role="form" enctype="multipart/form-data">
                     <?php echo csrf_field(); ?>
                    <div class="form-row mx-4">
                      <div class="col mb-3">
                        <h6 class="form-text m-0">Create Item Menu</h6>
                        <p class="form-text text-muted m-0">Setup your Item Menu info.</p>
                      </div>
                    </div>
                     <input type="text" hidden="" name="menu_id" value="<?php echo e($Menu->id); ?>">
                    <div class="form-row mx-4">
                      <div class="form-group col-md-4">
                        <label for="socialFacebook">Title Item Menu</label>
                        <div class="input-group input-group-seamless">
                          <div class="input-group-prepend">
                            <div class="input-group-text">
                              <i class=" icon-material-outline-check"></i>
                            </div>
                          </div>
                          <input type="text" class="form-control" id="socialFacebook" name="title">
                        </div>
                      </div>
                      <!-- ====================== links Menu Content Start store =============================================== -->
                      <div class="form-group col-md-3">
                        <label for="socialTwitter">Url Item Menu</label>
                        <div class="input-group input-group-seamless">
                          <div class="input-group-prepend">
                            <div class="input-group-text">
                              <i class=" icon-feather-link-2"></i>
                            </div>
                          </div>
                          <input type="text" class="form-control" id="socialTwitter" name="url">
                        </div>
                      </div>
                      <!-- ====================== links Menu Content Start store =============================================== -->
                      <div class="form-group col-md-2">
                        <label for="socialTwitter">Order Item Number</label>
                        <div class="input-group input-group-seamless">
                          <div class="input-group-prepend">
                            <div class="input-group-text">
                              <i class="icon-feather-target"></i>
                            </div>
                          </div>
                          <select class="custom-select form-control" name="order">
                            <option value="0" selected="">Item Order</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                          </select>
                        </div>
                       <!-- ====================== links Menu Content Start store =============================================== -->
                      </div>
                      <div class="form-group col-md-3">
                        <label for="socialGitHub">Target Item Menu </label>
                        <div class="input-group input-group-seamless">
                          <div class="input-group-prepend">
                            <div class="input-group-text">
                              <i class="icon-feather-target"></i>
                            </div>
                          </div>
                          <!-- ====================== links Menu Content Start store =============================================== -->
                          <select class="custom-select form-control" name="target">
                            <option value="_blank" selected="">Item Menu Target</option>
                            <option value="_blank">_blank</option>
                            <option value="_self">_self</option>
                            <option value="_parent">_parent</option>
                            <option value="_top">_top</option>
                          </select>
                        </div>
                        <!-- ====================== links Menu Content Start store =============================================== -->
                      </div>
                    </div>
                    <div class="card-footer border-bottom">
                      <button type="submit" class="btn btn-sm btn-accent ml-auto d-table mr-3">Save Changes</button>
                    </div>
                  </form>
                </div>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <!-- ====================== links Menu Content Start store =============================================== -->
              </div>
            </div>
          </div>
          <!-- End Edit User Details Card -->
        </div>
      </div>
    </div>
<!-- ====================== links Menu Content Start store =============================================== -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('dashboard.layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xamp\htdocs\Charity\Charity\resources\views/dashboard/dashboardMenus/index.blade.php ENDPATH**/ ?>