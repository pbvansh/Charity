<?php $__env->startSection('dashboardcontent'); ?>
<!-- ============================================================= Content Start ============================================================= -->
<!-- / .main-navbar -->
<?php if($message = Session::get('success')): ?>
<div class="alert alert-royal-blue alert-dismissible fade show mb-0" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">×</span>
  </button>
  <i class="icon-material-outline-check mx-2"></i>
  <strong>Success!</strong> <?php echo e($message); ?></div>
<?php endif; ?>
<!-- ============================================================= Content Start ============================================================= -->
<?php if($message = Session::get('Delete')): ?>
<div class="alert alert-royal-blue alert-dismissible fade show mb-0" role="alert">
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true">×</span>
</button>
<i class="icon-material-outline-check mx-2"></i>
<strong>Delete!</strong> <?php echo e($message); ?> </div>
<?php endif; ?>
<!-- ============================================================= Content Start ============================================================= -->
    <div class="main-content-container container-fluid px-4">
      <!-- Page Header -->
      <div class="page-header row no-gutters py-4">
        <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
          <span class="text-uppercase page-subtitle"> Ads Management</span>
          <h3 class="page-title"><i class="icon-feather-tv"></i>  Ads  
            <a href="<?php echo e(route('dashboardAds.create')); ?>" class="mb-2 btn btn-success mr-2"><i class="icon-material-outline-add-circle-outline"></i> Add Ads</a></h3>  
          </div>
        </div>
        <!-- ============================================================= Content Start ============================================================= -->
        <div class="row">
          <div class="col-lg-12 mb-4">
            <div class="card card-small lo-stats h-100">
              <div class="card-header border-bottom">
                <h6 class="m-0">Latest  Ads Management</h6>
                <div class="block-handle"></div>
              </div>
              <!-- ============================================================= Content Start ============================================================= -->
              <div class="card-body p-0">
                <div class="container-fluid px-0">
                  <table class="table mb-0">
                    <thead class="py-2 bg-light text-semibold border-bottom">
                      <tr>
                        <th>image - Code</th>
                        <th>Title</th>
                        <th class="text-center">Type</th>
                        <th class="text-center">Location</th>
                        <th class="text-right">Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      <!-- ================================ advertisers Content Start ======================== -->
                      <?php $__currentLoopData = $advertisers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $advertiser): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <tr>
                        <td class="lo-stats__image">
                          <?php if($advertiser->image != null): ?>
                          <img class="border rounded" src="<?php echo asset($advertiser->image); ?>">
                          <?php elseif($advertiser->url != null): ?>
                          <img class="border rounded" src="<?php echo asset($advertiser->url); ?>">
                          <?php elseif($advertiser->code != null): ?>
                          <?php echo $advertiser->code; ?>

                          <?php endif; ?>
                        </td>
                        <!-- ================================ advertisers Content Start ======================== -->
                        <td class="lo-stats__order-details">
                          <span><?php echo substr($advertiser->name, 0, 190); ?></span>
                          <span><?php echo e(date('M j, Y', strtotime($advertiser->created_at))); ?></span>
                        </td>
                        <!-- ================================ advertisers Content Start ======================== -->
                        <td class="lo-stats__total text-center text-success"><?php echo $advertiser->type; ?></td>
                        <td class="lo-stats__status">
                          <div class="d-table mx-auto">
                            <span class="badge badge-pill badge-success"><?php echo $advertiser->Location; ?></span>
                          </div>
                        </td>
                        <!-- ================================ advertisers Content Start ======================== -->
                        <td class="lo-stats__actions">
                          <div class="btn-group d-table ml-auto" role="group" aria-label="Basic example">
                            <a href="<?php echo e(URL::to('dashboard/Ads')); ?>/<?php echo e($advertiser->name); ?>/edit" class="mb-2 btn btn-sm btn-primary">
                              <i class="icon-feather-edit-2"></i> Edit</a>
                            <!-- ================================ delete advertisers Content Start ======================== -->
                            <form action="<?php echo e(route('dashboardAds.destroy',$advertiser->id)); ?>" method="POST" files="true" style="display: inline-block;">
                            <?php echo csrf_field(); ?>
                            <?php echo method_field('DELETE'); ?>
                            <button class="mb-2 btn btn-sm btn-danger" type="submit"><i class="icon-material-outline-delete"></i> Delete</button>
                          </form>
                          </div>
                        </td>
                      </tr>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      <!-- ================================ advertisers Content Start ======================== -->
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="card-footer border-top">
                <div class="row">
                  <div class="col">
                    <!-- ================================ links advertisers Content Start ======================== -->
                     <?php echo $advertisers->links(); ?>

                     <!-- ================================ links advertisers Content Start ======================== -->
                  </div>
                  <div class="col text-right view-report">
                    <?php if(COUNT($advertisers) != NULL): ?>
                    <a>Showing 10 to <?php echo e(COUNT($advertisers)); ?> of <?php echo e(COUNT($advertisers)); ?> advertisers</a>
                    <?php else: ?>
                    <a>Showing 10 to 0 of 0 advertisers</a>
                    <?php endif; ?>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- ============================================================= Content Start ============================================================= -->
      </div>
      <!-- ============================================================= Content Start ============================================================= -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('dashboard.layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xamp\htdocs\Charity\Charity\resources\views/dashboard/dashboardAds/index.blade.php ENDPATH**/ ?>