    function countChar(val) {
    var len = val.value.length;
    var angka = 140;
    if (len >= 140) {
    val.value = val.value.substring(0, 140);                                  
        } else {
            $('#charNum').text("Sisa karakter kamu tinggal : "+(angka - len ));                              
        }                      
};
