<?php $__env->startSection('content'); ?>
<!-- ============================================================= Content Start ============================================================= -->
<style type="text/css">
	.banner-area{background:url('<?php echo e(asset(Setting()->HomePicture)); ?>') no-repeat;background-size:cover}
</style>
<!--================ Start top-section Area =================-->
<section class="banner-area relative">
	<div class="overlay overlay-bg"></div>
	<div class="container">
		<div class="row align-items-center banner-content">
			<div class="col-lg-5">
				<h1 class="text-white">Our Posts</h1>
				<!-- =============================== Setting BASE ======================================== -->
				<p><?php echo Setting()->content_blog_en; ?></p>
			</div>
		</div>
	</div>
</section>
<!--================ End top-section Area =================-->
<!--================Blog Area =================-->
<section class="blog_area section-gap">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 mb-5 mb-lg-0">
				<div class="blog_left_sidebar">
					<!-- =============================== Posts ======================================== -->
					<?php $__currentLoopData = $Posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<article class="blog_item">
						<div class="blog_item_img">
							<!-- =============================== Posts ======================================== -->
							<img class="card-img rounded-0" src="<?php echo asset($Post->image); ?>" alt="<?php echo substr($Post->Title_en, 0, 190); ?>">
							<a href="<?php echo url('Posts'); ?>/<?php echo $Post->slug; ?>" class="blog_item_date">
								<!-- =============================== Posts ======================================== -->
								<h3><?php echo e(date('j', strtotime($Post->created_at))); ?></h3>
								<!-- =============================== Posts ======================================== -->
								<p><?php echo e(date('M', strtotime($Post->created_at))); ?></p>
								<!-- =============================== Posts ======================================== -->
							</a>
						</div>
						<div class="blog_details">
							<!-- =============================== Posts ======================================== -->
							<a class="d-inline-block" href="<?php echo url('Posts'); ?>/<?php echo $Post->slug; ?>">
								<h2><?php echo substr($Post->Title_en, 0, 190); ?></h2>
							</a>
							<!-- =============================== Posts ======================================== -->
							<p><?php echo substr($Post->body_en, 0, 190); ?></p>
							<ul class="blog-info-link">
								<!-- =============================== Posts ======================================== -->
								<?php if(isset($Post->Category->title)): ?>
								<li><a><i class="icon-material-outline-assignment"></i> <?php echo e($Post->Category->title); ?></a></li>
								<?php else: ?>
								<li><a><i class="icon-material-outline-assignment"></i> No Category</a></li>
								<?php endif; ?>
								<!-- =============================== Comments Posts ======================================== -->
								 <?php if(isset($Post->Comments)): ?> 
					             <li><a><i class="fa fa-comment-o"></i> <?php echo e(count($Post->Comments)); ?> Comments</a></li>
					             <?php else: ?>
					             <li><a><i class="fa fa-comment-o"></i> 0 Comments</a></li>
					             <?php endif; ?>
								<!-- =============================== Comments Posts ======================================== -->
							</ul>
						</div>
					</article>
					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
					<!-- ===============================  Posts ======================================== -->
					<?php echo $Posts->links(); ?>

					<!-- ===============================  Posts ======================================== -->
				</div>
			</div>
			<div class="col-lg-4">
          <div class="blog_right_sidebar">
           <!-- ===============================  Posts ======================================== -->
            <aside class="single_sidebar_widget popular_post_widget">
              <h3 class="widget_title">Recent Post</h3>
              <!-- ===============================  Posts ======================================== -->
              <?php $__currentLoopData = $RentPosts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $RentPost): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <div class="media post_item">
                <img src="<?php echo asset($RentPost->image); ?>" alt="post">
                <div class="media-body">
                	<!-- ===============================  Posts ======================================== -->
                  <a href="<?php echo url('Posts'); ?>/<?php echo $RentPost->slug; ?>">
                    <h3><?php echo substr($RentPost->Title_en, 0, 190); ?></h3>
                  </a>
                  <p><?php echo e(date('M j, Y', strtotime($RentPost->created_at))); ?></p>
                </div>
              </div>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              <!-- ===============================  Posts ======================================== -->
            </aside>
            <!-- ===============================  Posts ======================================== -->
          <div id="fb-root"></div>
          <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.2&appId=1998044820438282&autoLogAppEvents=1">
          </script>
            <aside class="single_sidebar_widget newsletter_widget">
              <div class="fb-page" data-href="<?php echo Setting()->Facebook; ?>" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="<?php echo Setting()->Facebook; ?>" class="fb-xfbml-parse-ignore">
                <a href="<?php echo Setting()->Facebook; ?>">Meteors</a></blockquote></div>
            </aside>
          </div>
        </div>
		</div>
	</div>
</section>
<!--================Blog Area =================-->
<!-- ============================================================= Content end   ============================================================= -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('english.layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\Hello\Downloads\codecanyon-IAsEKwtF-charity-nonprofit-charity-system-with-website\Charity\resources\views/english/Posts/index.blade.php ENDPATH**/ ?>