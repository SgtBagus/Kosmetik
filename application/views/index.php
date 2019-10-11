<div class="content-wrapper">
  <div class="container">
    <section class="content">
      <div class="row" align="center">
        <div class="col-md-12 col-12 mb-md-0 mb-5">
          <h1>Lorem ipsum dolor</h1>
        </div>
      </div>
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
          <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner round">
          <div class="item active">
            <img class="round img-slide" src="https://images.pexels.com/photos/753626/pexels-photo-753626.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="First slide" width="100%" style="height: 300px">

            <div class="carousel-caption">
              First Slide
            </div>
          </div>
          <div class="item">
            <img class="round img-slide" src="https://images.pexels.com/photos/459225/pexels-photo-459225.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="Second slide" width="100%" style="height: 300px;">

            <div class="carousel-caption">
              Second Slide
            </div>
          </div>
          <div class="item">
            <img class="round img-slide" src="https://images.pexels.com/photos/68147/waterfall-thac-dray-nur-buon-me-thuot-daklak-68147.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="Third slide" width="100%" style="height: 300px;">
            <div class="carousel-caption">
              Third Slide
            </div>
          </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
          <span class="fa fa-angle-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
          <span class="fa fa-angle-right"></span>
        </a>
      </div>
      <br>
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12" align="center">
          <h3>Kategori Barang</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3 col-sm-4 col-xs-6">
          <div class="box box-solid round">
            <div class="box-header" align="center">
              <h4><b>Tites Goes Here</b></h4>
            </div>
            <img src="https://images.pexels.com/photos/416320/pexels-photo-416320.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="Second slide" style="height: 180px; width: 100%; object-fit: cover; display: inline;">
            <div class="box-body" align="center">
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-6">
          <div class="box box-solid round">
            <div class="box-header" align="center">
              <h4><b>Tites Goes Here</b></h4>
            </div>
            <img src="https://images.pexels.com/photos/416320/pexels-photo-416320.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="Second slide" style="height: 180px; width: 100%; object-fit: cover; display: inline;">
            <div class="box-body" align="center">
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-6">
          <div class="box box-solid round">
            <div class="box-header" align="center">
              <h4><b>Tites Goes Here</b></h4>
            </div>
            <img src="https://images.pexels.com/photos/416320/pexels-photo-416320.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="Second slide" style="height: 180px; width: 100%; object-fit: cover; display: inline;">
            <div class="box-body" align="center">
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-6">
          <div class="box box-solid round">
            <div class="box-header" align="center">
              <h4><b>Tites Goes Here</b></h4>
            </div>
            <img src="https://images.pexels.com/photos/416320/pexels-photo-416320.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="Second slide" style="height: 180px; width: 100%; object-fit: cover; display: inline;">
            <div class="box-body" align="center">
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
          <h3>List Barang</h3>
          <div class="box box-solid round">
            <div class="box-body">
              <form action="<?= base_url('barang') ?>" method="post">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <h4>Cari Barang : </h4>
                  </div>
                  <div class="col-md-9 col-sm-9 col-xs-9">
                    <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-addon">
                          <i class="fa fa-archive"></i>
                        </div>
                        <input type="text" class="form-control" name="judul" placeholder="Masukan Judul..">
                      </div>
                    </div>
                  </div>
                  <div class="col-md-3 col-sm-3 col-xs-3">
                    <div class="form-group">
                      <button type="submit" class="btn btn-block btn-success"><i class="fa fa-search"></i> Cari</button>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3 col-sm-4 col-xs-6">
          <div class="box box-solid round">
            <div class="box-header" align="center">
              <h4><b>Tites Goes Here</b></h4>
            </div>
            <img src="https://images.pexels.com/photos/416320/pexels-photo-416320.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="Second slide" style="height: 180px; width: 100%; object-fit: cover; display: inline;">
            <div class="box-body" align="center">
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-6">
          <div class="box box-solid round">
            <div class="box-header" align="center">
              <h4><b>Tites Goes Here</b></h4>
            </div>
            <img src="https://images.pexels.com/photos/416320/pexels-photo-416320.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="Second slide" style="height: 180px; width: 100%; object-fit: cover; display: inline;">
            <div class="box-body" align="center">
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-6">
          <div class="box box-solid round">
            <div class="box-header" align="center">
              <h4><b>Tites Goes Here</b></h4>
            </div>
            <img src="https://images.pexels.com/photos/416320/pexels-photo-416320.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="Second slide" style="height: 180px; width: 100%; object-fit: cover; display: inline;">
            <div class="box-body" align="center">
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-4 col-xs-6">
          <div class="box box-solid round">
            <div class="box-header" align="center">
              <h4><b>Tites Goes Here</b></h4>
            </div>
            <img src="https://images.pexels.com/photos/416320/pexels-photo-416320.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="Second slide" style="height: 180px; width: 100%; object-fit: cover; display: inline;">
            <div class="box-body" align="center">
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</div>