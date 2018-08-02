$(function(){
    var scope = {
        price: $(".book-price"),
        btnDown: $(".btn-down"),
        btnUp: $(".btn-up"),
        bookPrice: $(".book-price"),
        bookCount: $(".book-count"),
        total: $(".book-total"),
        checkboxGroup: $('input[name=choose-cart]'),
        nameProduct: $(".book-name"),
        books: []
    }
    function ChooseBook(){
        this.name = "";
        this.count = 0;
        this.price = 0;
    }
    $(scope.btnUp).each(function (index) {
        $(this).click(function () {
            var id = $(scope.checkboxGroup).eq(index).val();
            var value = $(scope.bookCount).eq(index).val();
            $(scope.bookCount).eq(index).val(++value);
            var price =$.trim($(scope.price).eq(index).text());
            var totalPrice = parseFloat(price) * parseFloat(value) + "元";
            $(scope.total).eq(index).text(totalPrice);
            var name = $(scope.nameProduct).eq(index).text().substring(1)
            var trs = $(".choose-tbody tr");
            var allPrice = 0;
            $(trs).each(function (index) {
                if($(this).attr('id') == id){
                    $(this).find("td:first-child").text(name + '/'+value)
                    $(this).find("td:last-child").text(totalPrice)
                }
                allPrice += parseFloat($.trim($(this).find('td:last-child').text()))
            })
            $(".price-total").text(allPrice + '元');
            $.ajax({
                url: '/CartServlet',
                data:{'count': value, 'check_id': id},
                type: 'GET',
                dataType: 'json',
                success: function (data) {
                    console.log(data);
                }
            })
        });
    });
    $(scope.btnDown).each(function (index) {
        $(this).click(function () {
            var id = $(scope.checkboxGroup).eq(index).val();
            var value = $(scope.bookCount).eq(index).val();
            if(value <= 1){
                return;
            }
            $(scope.bookCount).eq(index).val(--value);
            var price =$.trim($(scope.price).eq(index).text());
            var totalPrice = parseFloat(price) * parseFloat(value) + "元";
            $(scope.total).eq(index).text(totalPrice);
            var name = $(scope.nameProduct).eq(index).text().substring(1);
            var trs = $(".choose-tbody tr");
            var allPrice = 0;
            $(trs).each(function (index) {
                if($(this).attr('id') == id){
                    $(this).find("td:first-child").text(name + '/'+value);
                    $(this).find("td:last-child").text(totalPrice)
                }
                allPrice += parseFloat($.trim($(this).find('td:last-child').text()))
            })
            $(".price-total").text(allPrice + '元');
            $.ajax({
                url: '/CartServlet',
                data:{'count': value, 'check_id': id},
                type: 'GET',
                dataType: 'json',
                success: function (data) {
                    console.log(data);
                }
            })
        });

    });
    $(scope.checkboxGroup).each(function (index) {
        $(this).click(function () {
            var id = $(scope.checkboxGroup).eq(index).val();
            var count = parseInt($(scope.bookCount).eq(index).val());
            var price = parseFloat($.trim($(scope.bookPrice).eq(index).text())) * count;
            if($(this).is(':checked')){
                var name = $(scope.nameProduct).eq(index).text().substring(1);
                var htmlStr = "<tr id='"+ id +"'><td>"+ name +"/" + count +"</td><td>"+ price +"元</td></tr>"
                $(".choose-tbody").append(htmlStr);
                var allPrice = 0;
                var trs = $(".choose-tbody tr");
                $(trs).each(function (index) {
                    allPrice += parseFloat($.trim($(this).find('td:last-child').text()))
                });
                $(".price-total").text(allPrice + '元');
            }else{
                var totalPrice = parseFloat($.trim($(".price-total").text()));
                totalPrice -= price;
               $(".price-total").text(totalPrice + "元");
                var trs = $(".choose-tbody tr");
                $(trs).each(function (index) {
                    if($(this).attr('id') == id){
                        $(this).remove();
                    }
                })
            }
        })
    });
    $(".checkout").click(function () {
        var idArr = [];
        var trs = $(".choose-tbody tr");
        if(trs.length <= 0){
            return false;
        }
        $(trs).each(function (index) {
            var id = parseInt($(this).attr('id'));
            idArr.push(id);
        });
        var ids = "";
        for(var i = 0; i < idArr.length; i++){
                if(i == idArr.length - 1){
                    ids += idArr[i];
                }else{
                    ids += idArr[i] + ",";
                }
        }

        window.location.href= "CheckoutServlet?type=cart&ids="+ids;
    })
});