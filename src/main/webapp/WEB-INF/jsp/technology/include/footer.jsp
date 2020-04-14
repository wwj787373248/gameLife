<%--
  Created by IntelliJ IDEA.
  User: wuweijie
  Date: 2020-04-14
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<div class="footer">
    <div class="footer-inner">
        <div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">GameLife</span>
							Application &copy; 2018-2020
						</span>
        </div>
    </div>
</div>

<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
    <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
</a>
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="/technology/js/jquery-2.1.4.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="/technology/js/jquery-1.11.3.min.js"></script>
<![endif]-->
<script type="text/javascript">
    // if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
    if ('ontouchstart' in document.documentElement) document.write("<script src=\"/technology/js/jquery.mobile.custom.min.js\">" + "<" + "/script>");
</script>
<script src="/technology/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
<script src="/technology/js/excanvas.min.js"></script>
<![endif]-->
<script src="/technology/js/jquery-ui.custom.min.js"></script>
<script src="/technology/js/jquery.ui.touch-punch.min.js"></script>
<script src="/technology/js/jquery.easypiechart.min.js"></script>
<script src="/technology/js/jquery.sparkline.index.min.js"></script>
<script src="/technology/js/jquery.flot.min.js"></script>
<script src="/technology/js/jquery.flot.pie.min.js"></script>
<script src="/technology/js/jquery.flot.resize.min.js"></script>

<!-- ace scripts -->
<script src="/technology/js/ace-elements.min.js"></script>
<script src="/technology/js/ace.min.js"></script>

<script>
    // $(document).ready(function () {
    //     var active = '{{ active }}';
    //     let open = '{{ open }}';
    //     if (active){
    //         $("[tag='{{ active }}']").addClass("active");
    //     }
    //     if (open) {
    //         $("[tag='{{ open }}']").addClass("open");
    //     }
    // })
</script>

</body>
</html>
