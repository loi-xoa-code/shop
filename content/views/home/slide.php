<?php if (isset($idslide)) : ?>
	<div class="slider-container">
		<div class="slider" id="revolutionSlider" data-plugin-revolution-slider data-plugin-options='{"startheight": 500}'>
			<ul>
				<li data-transition="fade" data-slotamount="3" data-masterspeed="300">
					<img src="public/upload/slides/<?= $slide['slide_img1'] ?>" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
					<div class="tp-caption blackboard-text lfb " data-x="150" data-y="150" data-speed="500" data-start="500" data-easing="easeOutExpo" style="font-size: 37px;">Laptop,</div>
					<div class="tp-caption blackboard-text lfb " data-x="200" data-y="200" data-speed="500" data-start="1000" data-easing="easeOutExpo" style="font-size: 37px;">Macbook</div>
				</li>
				<li data-transition="fade" data-slotamount="3" data-masterspeed="1000">
					<img src="public/upload/slides/<?= $slide['slide_img2'] ?>" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
					<div class="tp-caption main-label sft stb" data-x="485" data-y="160" data-speed="300" data-start="900" data-easing="easeOutExpo">iPhone</div>
				</li>
				<li data-transition="fade" data-slotamount="3" data-masterspeed="1700">
					<img src="public/upload/slides/<?= $slide['slide_img3'] ?>" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
					<div class="tp-caption main-label sft stb" data-x="200" data-y="100" data-speed="300" data-start="900" data-easing="easeOutExpo" style="background-color:rgba(0,0,0,0.5);">Đồng hồ thông minh</div>
				</li>
			</ul>
		</div>
	</div>
	<div class="home-intro" id="home-intro">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<p>
						Blue Electronics - Cửa hàng bán lẻ đồ điện tử</em>
						<span>Điện thoại, Laptop, Phụ kiện, Đồng hồ chính hãng</span>
					</p>
				</div>
				<div class="col-md-4">
					<div class="get-started">
						<a href="search" class="btn btn-lg btn-primary">Đi đến trang tìm kiếm!</a>
						<div class="learn-more">hoặc đến <a href="<?= $aboutUrl ?>">Thông tin shop.</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>
<?php endif; ?>
