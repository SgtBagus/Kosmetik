var Image_id = 0;
$('#btn-Imageadd').click(function(){
  Image_id = Image_id + 1
  $("#detail_image_open").before('<tr id="preview_image_detail-'+Image_id+'"><td><img src="https://cdn.lifehack.org/wp-content/uploads/2013/04/33.jpg" class="round" alt="User Image" height="150px" id="preview_image-'+Image_id+'" style="margin: 15px"></td><td id="name_image-'+Image_id+'">Thumbnail.jpg</td><td><button type="button" class="btn btn-xm btn-primary" id="btnFile-'+Image_id+'"><i class="fa fa-file"></i></button> <button type="button" class="btn btn-xm btn-danger" id="btnFile-remove-'+Image_id+'"><i class="fa fa-trash"></i></button><input type="file" class="file" id="imageFile-'+Image_id+'" style="display: none;" name="image_detail['+Image_id+']" accept="image/x-png,image/jpeg,image/jpg" /></td></tr>');
  $("#banyak-input").val(Image_id)
  $("#btn_image_add").hide()

  preview(Image_id)
});


function preview(id){

  $("#btnFile-"+id).click(function() {
    document.getElementById("imageFile-"+id).click()
  });

  $("#imageFile-"+id).change(function() {
    image_detailPreview(id, this)
  });

  function image_detailPreview(id, input){
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function(e) {
        $('#preview_image-'+id).attr('src', e.target.result)
        $('#name_image-'+id).text(input.files[0].name)
        $("#btn_image_add").show()
      }
      reader.readAsDataURL(input.files[0])
    }
  }

  $("#btnFile-remove-"+id).click(function() {
    $("#preview_image_detail-"+id).remove()
    $("#btn_image_add").show()
    for (var i = 1; i < 6; i++) {
      rename_name(id);
    }
  });
}

function rename_name(id){
    $("#imageFile-"+id).attr("name", "image_detail["+i+"]");
}

