<?php $__env->startSection('content'); ?>
<!-- ============================================================= Content Start ============================================================= -->
<!--================ Start top-section Area =================-->
<style type="text/css">
  .banner-area{background:url('<?php echo e(asset(Setting()->HomePicture)); ?>') no-repeat;background-size:cover}
</style>
<section class="banner-area relative">
  <div class="overlay overlay-bg"></div>
  <div class="container">
    <div class="row justify-content-lg-end align-items-center banner-content">
      <div class="col-lg-5">
        <h1 class="text-white">Contact Us</h1>
        <!-- ===============================  Contact  ======================================== -->
        <p><?php echo e(Setting()->about_en); ?></p>
        <!-- ===============================  Contact  ======================================== -->
      </div>
    </div>
  </div>
</section>
<!-- =============== End top-section Area =================== -->
<!-- ================ contact section start ================= -->
<section class="section-gap">
  <div class="container">
    <div class="d-none d-sm-block mb-5 pb-4" style="overflow: hidden;">
      <!-- ===============================  Contact  ======================================== -->
      <iframe src="<?php echo Setting()->Googlemap; ?>" width="1200" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>
    <div class="row">
      <div class="col-12">
        <h2 class="contact-title">Get in Touch</h2>
        <!-- ===============================  Contact  ======================================== -->
        <?php if(session('Messagge')): ?>
        <div class="alert alert-success" role="alert">
          Congratulations. Your Message has been Send successfully
        </div>
        <?php endif; ?>
        <!-- ===============================  Contact  ======================================== -->
      </div>
      <div class="col-lg-8">
        <!-- ===============================  Contact  ======================================== -->
        <form class="form-contact contact_form" method="post" action="<?php echo e(route('Messages.store')); ?>" enctype="multipart/form-data">
          <?php echo e(csrf_field()); ?>

          <div class="row">
            <div class="col-12">
              <div class="form-group">
                <textarea class="form-control w-100" name="Content" id="Content" cols="30" rows="9" placeholder="Enter Message"></textarea>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <input class="form-control" name="name" id="name" type="text" placeholder="Enter your name">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <input class="form-control" name="email" id="email" type="email" placeholder="Enter email address">
              </div>
            </div>
            <div class="col-12">
              <div class="form-group">
                <input class="form-control" name="subject" id="subject" type="text" placeholder="Enter Subject">
              </div>
            </div>
          </div>
          <div class="form-group mt-2 mb-5 mb-lg-0">
            <button type="submit" class="button button-contactForm primary-btn">Send Message</button>
          </div>
        </form>
        <!-- ===============================  Contact  ======================================== -->
      </div>
      <div class="col-lg-4">
        <div class="media contact-info">
          <span class="contact-info__icon"><i class="icon-material-outline-location-on"></i></span>
          <div class="media-body">
            <h3>Head Office</h3>
            <!-- ===============================  Contact  ======================================== -->
            <p><?php echo e(Setting()->Location); ?></p>
            <!-- ===============================  Contact  ======================================== -->
          </div>
        </div>
        <div class="media contact-info">
          <span class="contact-info__icon"><i class="icon-feather-phone"></i></span>
          <div class="media-body">
            <!-- ===============================  Contact  ======================================== -->
            <h3><a href="tel:<?php echo e(Setting()->PhoneNumber); ?>"><?php echo e(Setting()->PhoneNumber); ?></a></h3>
            <!-- ===============================  Contact  ======================================== -->
          </div>
        </div>
        <div class="media contact-info">
          <span class="contact-info__icon"><i class="icon-material-outline-email"></i></span>
          <div class="media-body">
            <!-- ===============================  Contact  ======================================== -->
            <h3><a href="mailto:support@colorlib.com"><?php echo e(Setting()->Email); ?></a></h3>
            <!-- ===============================  Contact  ======================================== -->
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- ================ contact section end ================= -->
<!-- ============================================================= Content end   ============================================================= -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('english.layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\Hello\Downloads\codecanyon-IAsEKwtF-charity-nonprofit-charity-system-with-website\Charity\resources\views/english/Contact.blade.php ENDPATH**/ ?>