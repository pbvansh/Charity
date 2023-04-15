<?php $__env->startSection('content'); ?>
<!-- ============================================================= Content Start ============================================================= -->
    <!--================ start banner Area =================-->
    <style type="text/css">
        .banner-area{background:url('<?php echo e(asset(Setting()->HomePicture)); ?>') no-repeat;background-size:cover}
    </style>
    <section class="banner-area relative">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row  align-items-center banner-content">
                <div class="col-lg-5">
                    <h1 class="text-white">Our Causes</h1>
                    <p>To implement sustainable programs that improve access worldwide to investment, opportunity.</p>
                </div>
            </div>
        </div>
    </section>
    <!--================ End banner Area =================-->

    <!--================ Start Popular Causes Area =================-->
    <section class="popular-cause-area section-gap-top">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section-title">
                        <h2><span>Popular</span> Causes</h2>
                    </div>
                </div>
            </div>
           
            <div class="row">
                <!--================ Start Popular Causes Area =================-->
                <?php $__currentLoopData = $Causes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Cause): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>      
                <div class="col-lg-4 col-md-6">
                    <div class="card single-popular-cause">
                        <div class="card-body">
                            <figure>
                                <img class="card-img-top img-fluid" src="<?php echo asset($Cause->image); ?>" alt="Card image cap">
                            </figure>
                            <div class="card_inner_body">
                                <!--================ Start Popular Causes Area =================-->
                                 <?php if(isset($Cause->Category->title)): ?>
                                 <div class="tag"><?php echo e($Cause->Category->title); ?></div>
                                 <?php else: ?>
                                   <div class="tag">No Category</div>
                                 <?php endif; ?>
                                 <!--================ Start Popular Causes Area =================-->
                                <h4 class="card-title"><?php echo substr($Cause->Title_en, 0, 190); ?></h4>
                                <div class="d-flex justify-content-between raised_goal">
                                    <p>Raised: <?php echo $Cause->Raised; ?></p>
                                    <p><span>Goal: <?php echo $Cause->Goal; ?></span></p>
                                <!--================ Start Popular Causes Area =================-->    
                                </div>
                                <div class="d-flex justify-content-between donation align-items-center">
                                    <a href="<?php echo url('Causes'); ?>/<?php echo $Cause->slug; ?>" class="primary-btn">Donate</a>
                                    <p><span class="ti-heart mr-1"></span> <?php echo $Cause->Donors; ?> Donors</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <!--================ Start Popular Causes Area =================-->
                <!--================ Start Popular Causes Area =================-->
                <?php echo $Causes->links(); ?>

                <!--================ Start Popular Causes Area =================-->
            </div>
        </div>
    </section>
    <!--================ End Popular Causes Area =================-->
  <!--================ Start CTA Area =================-->
    <div class="cta-area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <!--================ Start Popular Causes Area =================-->
                    <p class="top_text">Thanks for your heart.</p>
                    <h1>Contribute on my charity work by your donation. Thanks for your heart.</h1>
                     <a href="<?php echo url('Contact'); ?>" class="primary-btn">donation</a>
                     <!--================ Start Popular Causes Area =================-->
                </div>
            </div>
        </div>
    </div>
    <!--================ End CTA Area =================-->
<!-- ============================================================= Content end   ============================================================= -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('english.layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\Hello\Downloads\codecanyon-IAsEKwtF-charity-nonprofit-charity-system-with-website\Charity\resources\views/english/Causes/index.blade.php ENDPATH**/ ?>