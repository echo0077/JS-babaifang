(function () {
    var tbody = document.querySelector('tbody');
    // var tbody = document.querySelector('tbody');
    console.log(tbody);
    let typedata = '';


    function init(){
        ajax({
            type: 'post',
            url:'api/admin.php',
            data: {
                typedata: 'getdata'
            },
            success: str => {
                console.log(str);
                
            }
        });
    }
    init()
})();