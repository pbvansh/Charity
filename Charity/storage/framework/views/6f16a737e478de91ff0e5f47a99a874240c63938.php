<?php $__env->startSection('content'); ?>
<!-- ============================================================= Content Start ============================================================= -->
	<!--================ start banner Area =================-->
	<section class="home-banner-area relative" id="home" data-parallax="scroll" data-image-src="<?php echo e(asset(Setting()->HomePicture)); ?>">
		<div class="overlay-bg overlay"></div>
		<div class="container">
			<div class="row fullscreen justify-content-lg-begin">
				<div class="banner-content col-lg-7">
					<!-- ===============================  Home  ======================================== -->
					<?php if($message = Session::get('success')): ?>
					<div class="alert alert-success" role="alert">
			          <?php echo $message; ?>

			        </div>
                    <?php Session::forget('success');?>
                    <?php endif; ?>
                    <!-- ===============================  Home  ======================================== -->
                    <?php if($message = Session::get('error')): ?>
                    <div class="alert alert-success" role="alert">
			          <?php echo $message; ?>

			        </div>
                    <?php Session::forget('error');?>
                    <!-- ===============================  Home  ======================================== -->
                    <?php endif; ?>
					<h1>
						<!-- ===============================  Home  ======================================== -->
						<?php echo e(Setting()->title_home_en); ?> <br>
						children
					</h1>
					<!-- ===============================  Home  ======================================== -->
					<h4><?php echo Setting()->sub_title_home_en; ?></h4>
					<a href="<?php echo e(url('Contact')); ?>" class="primary-btn">
						Join us
						<i class="ti-angle-right ml-1"></i>
					</a>
					<!-- ===============================  Home  ======================================== -->
				</div>
			</div>
		</div>
	</section>
	<!--================ End banner Area =================-->
	<!--================ Start About Area =================-->
	<section class="about_area lite_bg">
		<!-- ===============================  Home  ======================================== -->
		<style type="text/css">
			.about_area .about_bg{
				background:linear-gradient(0deg, rgba(0,0,0,0.5), rgba(0,0,0,0.5)),
				url('<?php echo e(asset(Setting()->AboutPicture)); ?>');background-repeat:no-repeat;background-size:cover;
				background-size:cover;
				position:absolute;right:0;top:0;height:100%;width:50%;z-index:-1}
		</style>
		<!-- ===============================  Home  ======================================== -->
		<div class="container">
			<div class="row align-items-end">
				<div class="col-lg-5">
					<div class="about_details lite_bg">
						<!-- ===============================  Home  ======================================== -->
						<h2><?php echo Setting()->title_about_en; ?></h2>
						<!-- ===============================  Home  ======================================== -->
						<p class="mb-0">
							<?php echo Setting()->content_about_en; ?>

						</p>
						<!-- ===============================  Home  ======================================== -->
						<a href="<?php echo e(url('about')); ?>" class="primary-btn mt-5">
							Read more
							<i class="ti-angle-right ml-1"></i>
						</a>
						<!-- ===============================  Home  ======================================== -->
					</div>
				</div>
				<div class="col-lg-4 offset-lg-3 col-md-6 offset-md-1 d-lg-block d-none">
					<div class="about_right">
						<div class="video-inner justify-content-center align-items-center d-flex">
							<a id="play-home-video" class="video-play-button" 
							   href="<?php echo Setting()->video; ?>">
								<span></span>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="about_bg d-lg-block d-none"></div>
		</div>
	</section>
	<!--================ End About Area =================-->

	<!--================ Start Features Area =================-->
	<section class="features-area section-gap-top">
		<div class="container">
			
			<div class="row feature_inner">
				<div class="col-lg-4 col-md-6">
					<div class="feature-item">
						<i class="fi flaticon-compass"></i>
						<h4>Give Donation</h4>
						<!-- ===============================  Home  ======================================== -->
						<p><?php echo Setting()->content_feature_en; ?></p>
						<!-- ===============================  Home  ======================================== -->
						<a href="<?php echo e(url('Contact')); ?>" class="primary-btn2">Learn more</a>
						<!-- ===============================  Home  ======================================== -->
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="feature-item">
						<i class="fi flaticon-desk"></i>
						<h4>Give Inspiration</h4>
						<!-- ===============================  Home  ======================================== -->
						<p><?php echo Setting()->content_feature_two_en; ?></p>
						<!-- ===============================  Home  ======================================== -->
						<a href="<?php echo e(url('Contact')); ?>" class="primary-btn2">Learn more</a>
						<!-- ===============================  Home  ======================================== -->
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="feature-item">
						<i class="fi flaticon-bathroom"></i>
						<h4>Become Bolunteer</h4>
						<!-- ===============================  Home  ======================================== -->
						<p><?php echo Setting()->content_feature_three_en; ?></p>
						<!-- ===============================  Home  ======================================== -->
						<a href="<?php echo e(url('Contact')); ?>" class="primary-btn2">Learn more</a>
						<!-- ===============================  Home  ======================================== -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Features Area =========================-->
	<!--================ Start Popular Causes Area =================-->
	<section class="popular-cause-area section-gap-top">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="section-title">
						<span> Dignity, Opportunity, Hope </span>
						<h2><span>Our Causes</span></h2>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- ===============================  Home  ======================================== -->
                <?php $__currentLoopData = $Causes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Cause): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>      
				<div class="col-lg-4 col-md-6">
					<div class="card single-popular-cause">
						<div class="card-body">
							<figure>
								<!-- ===============================  Home  ======================================== -->
								<img class="card-img-top img-fluid" src="<?php echo asset($Cause->image); ?>" alt="Card image cap">
							</figure>
							<div class="card_inner_body">
								<!-- ===============================  Home  ======================================== -->
								 <?php if(isset($Cause->Category->title)): ?>
								 <div class="tag"><?php echo e($Cause->Category->title); ?></div>
		                         <?php else: ?>
		                           <div class="tag">No Category</div>
		                         <?php endif; ?>
		                         <!-- ===============================  Home  ======================================== -->
								<h4 class="card-title"><?php echo substr($Cause->Title_en, 0, 190); ?></h4>
								<div class="d-flex justify-content-between raised_goal">
									<!-- ===============================  Home  ======================================== -->
									<p>Raised: <?php echo $Cause->Raised; ?></p>
									<!-- ===============================  Home  ======================================== -->
									<p><span>Goal: <?php echo $Cause->Goal; ?></span></p>
									<!-- ===============================  Home  ======================================== -->
								</div>
								<div class="d-flex justify-content-between donation align-items-center">
									<!-- ===============================  Home  ======================================== -->
									<a href="<?php echo url('Causes'); ?>/<?php echo $Cause->slug; ?>" class="primary-btn">Donate</a>
									<!-- ===============================  Home  ======================================== -->
									<p><span class="ti-heart mr-1"></span> <?php echo $Cause->Donors; ?> Donors</p>
									<!-- ===============================  Home  ======================================== -->
								</div>
							</div>
						</div>
					</div>
				</div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <!-- ===============================  Home  ======================================== -->
			</div>
		</div>
	</section>
	<!--================ End Popular Causes Area =================-->

	<!--================ Start callto Area =================-->
	<section class="callto-area section-gap relative" data-parallax="scroll" data-image-src="<?php echo e(asset(Setting()->HomePicture)); ?>">
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<p class="top_text">Need your help?</p>
					<div class="call-wrap mx-auto">
						<h1>Volunteer Needed At Your Area</h1>
						<p>In that Our I own life unto lights them two appear days rule thing fly main for main cause fowl itself dry
							from made main cause fowl itself dry.</p>
						<!-- ===============================  Home  ======================================== -->
						<a href="<?php echo e(route('register')); ?>" class="primary-btn mt-5">
							Sign up
							<i class="ti-angle-right ml-1"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End callto Area ===========================-->
	<!--================ Start Upcoming Event Area =================-->
	<section class="upcoming_event_area section-gap-top">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="section-title">
						<h2><span>Upcoming</span> Event</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- ===============================  Home Event ======================================== -->
                <?php $__currentLoopData = $Events; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Event): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>     
				<div class="col-lg-6">
					<div class="single_upcoming_event">
						<div class="row align-items-center">
							<div class="col-lg-6 col-md-6">
								<figure>
									<!-- ===============================  Home Event ======================================== -->
									<img class="img-fluid w-100" src="<?php echo asset($Event->image); ?>" alt="">
									<div class="date">
										<!-- ===============================  Home Event ======================================== -->
										<?php echo e(date('M j', strtotime($Event->created_at))); ?>

									</div>
								</figure>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="content_wrapper">
									<h3 class="title">
										<!-- ===============================  Home Event ======================================== -->
										<a href="<?php echo url('Events'); ?>/<?php echo $Event->slug; ?>"><?php echo substr($Event->Title_en, 0, 190); ?></a>
									</h3>
									<p>
										<!-- ===============================  Home Event ======================================== -->
										<?php echo substr($Event->Content_en, 0, 60); ?>

									</p>
									<!-- ===============================  Home Event ======================================== -->
									<div class="d-flex count_time justify-content-lg-start justify-content-center" id="clockdiv1">
										<div class="single_time">
											<h4 class="days"><?php echo $Event->Days; ?></h4>
											<p>Days</p>
										</div>
										<div class="single_time">
											<h4 class="hours"><?php echo $Event->Hours; ?></h4>
											<p>Hours</p>
										</div>
										<div class="single_time">
											<h4 class="minutes"><?php echo $Event->Minutes; ?></h4>
											<p>Minutes</p>
										</div>
									</div>
									<!-- ===============================  Home Event ======================================== -->
									<a href="<?php echo url('Events'); ?>/<?php echo $Event->slug; ?>" class="primary-btn2">Learn More</a>
								</div>
							</div>
						</div>
					</div>
				</div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <!-- ===============================  Home Event ======================================== -->
			</div>
		</div>
	</section>
	<!--================ End Upcoming Event Area =================-->

	<!--================ Start Home Blog Area =================-->
	<section class="blog-area section-gap-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-12">
					<div class="home-blog-left">
						<h2>Latest From
							Our Blog </h2>
						<p>
							<!-- ===============================  Home Post ======================================== -->
							<?php echo Setting()->content_blog_en; ?> 
						</p>
						<a href="<?php echo e(url('Posts')); ?>" class="primary-btn2">Show more</a>
					</div>
				</div> 
				<!-- ===============================  Home Post ======================================== -->
                <?php $__currentLoopData = $Posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
				<div class="col-lg-4 col-md-6 single-blog">
					<div class="thumb">
						
						<img class="img-fluid" src="<?php echo asset($Post->image); ?>" alt="<?php echo substr($Post->Title_en, 0, 190); ?>">
					</div>
					<div class="single-blog-info">
						<p class="tag">
							  <!-- ===============================  Home Post ======================================== -->
							  <?php if(isset($Post->Category->title)): ?>
                              <span><?php echo e($Post->Category->title); ?></span>
                              <?php else: ?>
                              <span>No Category</span>
                              <?php endif; ?>
                              <!-- ===============================  Home Post ======================================== -->
							<span><?php echo e(date('M j, Y', strtotime($Post->created_at))); ?></span>
						</p>
						<!-- ===============================  Home Post ======================================== -->
						<a href="<?php echo url('Posts'); ?>/<?php echo $Post->slug; ?>">
							<h4><?php echo substr($Post->Title_en, 0, 190); ?></h4>
						</a>
						<!-- ===============================  Home Post ======================================== -->
						<div class="meta-bottom d-flex">
					     <?php if(isset($Post->Comments)): ?> 
			             <a class="mr-3"><span class="ti-comments mr-2"></span><?php echo e(count($Post->Comments)); ?> Comments</a>
			             <?php else: ?>
			             <a class="mr-3"><span class="ti-comments mr-2"></span> 0 Comments</a>
			             <?php endif; ?>
						 <a href="<?php echo url('Posts'); ?>/<?php echo $Post->slug; ?>"> <span class="ti-eye mr-2"></span> Show more</a>
						</div>
						<!-- ===============================  Home Post ======================================== -->
					</div>
				</div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			</div>
		</div>
	</section>
	<!--================ End Home Blog Area =================-->

	<!--================ Start Gallery Area =================-->
	<section class="instagram-area section-gap-top">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="section-title">
						<h2><span>Our Gallery</span></h2>
					</div>
				</div>
			</div>
		</div>
		<div class="instagram-slider owl-carousel">
			<!--================ End Gallery Area =================-->
			 <?php $__currentLoopData = $Gallers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Gallery): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>      
			 <!--================ End Gallery Area =================-->    
			<a href="<?php echo asset($Gallery->image); ?>" class="single-instagram d-block img-pop-up">
				<div class="instagram-img">
					<!--================ End Gallery Area =================-->
					<img src="<?php echo asset($Gallery->image); ?>">
					<!--================ End Gallery Area =================-->
					<div class="instagram-text">
						<i class=" icon-material-outline-add"></i>
					</div>
				</div>
			</a>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			<!--================ End Gallery Area =================-->
		</div>
	</section>
	<!--================ End Gallery Area =================-->
<!-- ============================================================= Content end   ============================================================= -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('english.layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\Hello\Downloads\codecanyon-IAsEKwtF-charity-nonprofit-charity-system-with-website\Charity\resources\views/english/home.blade.php ENDPATH**/ ?>