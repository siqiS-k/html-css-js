 var choose = true;

        //此函数用于显示滑块的当前值
        function print1() {
            //获取信息
            var value = parseFloat($("#slider1").val());
            //将信息显示
            $("#print1").text(value);
            calculate();
        }
        function print2() {
            //获取信息
            var value = parseFloat($("#slider2").val());
            //将信息显示
            $("#print2").text(value);
            calculate();
        }
                //此函数负责修改value的值

                //此函数负责开始按钮
        function calculate() {
            var inch_v, mm_v;
            var value1 = parseFloat($("#slider1").val());
            var value2 = parseFloat($("#slider2").val());
            $("#print3").text(value1*value2);

        }
        
        
        