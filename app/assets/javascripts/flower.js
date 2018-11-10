$( document ).ready(function() {
    console.log( "document loaded" );

    $( "#files" ).change(function() {
      alert("sds");
      var list = document.getElementById('filelist');
      list.innerHTML = '';
      for (var i = 0; i < this.files.length; i++) {
        list.innerHTML += (i + 1) + '. ' + this.files[i].name + '</br>';
      }
      if (list.innerHTML == '') list.style.display = 'none';
      else list.style.display = 'block';
    });

});
