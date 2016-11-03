<%-- 
    Document   : index
    Created on : Oct 8, 2016, 1:11:21 PM
    Author     : tuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="co-well" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="co-well" tagdir="/WEB-INF/tags/clients" %>
<co-well:layout>

    <section class="hightlight region">
        <div class="banner">
            <div class="wauto">
                <div class="swiper-container swiper-container-horizontal">
                    <div class="swiper-wrapper">
                        <c:forEach items="${requestScope.img_slide}" var="img">
                            
                            <div class=<c:out value="${img.stringClass}"></c:out> <c:out value="${img.data}"></c:out> >
                                <a href="services/outsourcing" title="Outsourcing">
                                    <img src=<c:out value="${img.src}"></c:out> alt=""/>
                                </a>
                            </div>
                        </c:forEach>
                        <!--                        <div class="swiper-slide mrow slide3 swiper-slide-duplicate" data-swiper-slide-index="2">
                                                    <a href="services/outsourcing" title="Outsourcing">
                                                        <img src="resource/clients/images/pc20160616_150621.png" alt=""/>
                                                    </a>
                                                </div>
                                                <div class="swiper-slide mrow slide1" data-swiper-slide-index="0">
                                                    <a href="services/consulting" title="Tư vấn chiến lược CNTT">
                                                        <img src="resource/clients/images/pc20160615_163914.png" alt="Tư vấn chiến lược CNTT">
                                                    </a>
                                                </div>
                                                <div class="swiper-slide mrow slide2 swiper-slide-prev" data-swiper-slide-index="1">
                                                    <a href="services/system-integration" title="Tích hợp hệ thống">
                                                        <img src="resource/clients/images/pc20160616_150533.png" alt="Tích hợp hệ thống">
                                                    </a>
                                                </div>
                                                <div class="swiper-slide mrow slide3 swiper-slide-active" data-swiper-slide-index="2">
                                                    <a href="services/outsourcing" title="Outsourcing                  ">
                                                        <img src="resource/clients/images/pc20160616_150621.png" alt=""/>
                                                    </a>
                                                </div>
                                                <div class="swiper-slide mrow slide1 swiper-slide-duplicate swiper-slide-next" data-swiper-slide-index="0">
                                                    <a href="services/consulting" title="Tư vấn chiến lược CNTT">
                                                        <img src="resource/clients/images/pc20160615_163914.png" alt="Tư vấn chiến lược CNTT">
                                                    </a>
                                                </div>-->
                    </div>
                    <div class="swiper-pagination swiper-pagination-clickable"><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span></div>
                </div>
                <div class="service-menu textcenter">
                    <ul class="row">
                        <li class="col col33 mcol100">
                            <a href="services/consulting">
                                <div class="imain">
                                    <img src="resource/clients/images/pc20160526_233955.png" alt="Tư vấn chiến lược CNTT" class="hidesm">
                                    <img src="resource/clients/images/mb20160526_233922.png" alt="Tư vấn chiến lược CNTT" class="hidepc">
                                    <span class="fontbold">Tư vấn chiến lược CNTT</span>
                                </div>
                            </a>
                        </li>
                        <li class="col col33 mcol100">
                            <a href="services/system-integration">
                                <div class="imain">
                                    <img src="resource/clients/images/pc20160526_234049.png" alt="Tích hợp hệ thống" class="hidesm">
                                    <img src="resource/clients/images/mb20160526_234049.png" alt="Tích hợp hệ thống" class="hidepc">
                                    <span class="fontbold">Tích hợp hệ thống</span>
                                </div>
                            </a>
                        </li>
                        <li class="col col33 mcol100">
                            <a href="services/outsourcing">
                                <div class="imain">
                                    <img src="resource/clients/images/pc20160526_233822.png" alt="Outsourcing" class="hidesm">
                                    <img src="resource/clients/images/mb20160526_233822.png" alt="Outsourcing" class="hidepc">
                                    <span class="fontbold">Outsourcing</span>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="recruitment region">
        <div class="wauto recruit mrows">
            <h2 class="textcenter fronttitle">Tuyển dụng</h2>
            <div class="irecruit row">
                <div class="col col66 mcol100 recruit-content">
                    <ul class="row">
                        <li class="col col50 mcol100">
                            <h3>
                                <a title="Web Designer" href="#" class="title-urgent">
                                    Web Designer
                                    <span class="urgent">Urgent</span></a>
                            </h3>
                            <div class="w100 dates">
                                <span class="pleft since">Ngày đăng: 12/08/2016</span>
                                <span class="pleft exp">Hạn nộp: 30/08/2016</span>
                            </div>
                            <p>
                                - Thiết kế UI/UX cho các website theo yêu cầu từ bên Nhật
                                - Các...
                            </p>
                            <div class="tags">
                            </div>
                        </li>
                        <li class="col col50 mcol100">
                            <h3>
                                <a title="QA/Tester tiếng Nhật (Junior, Senior, Leader)" href="#" class="title-urgent">
                                    QA/Tester tiếng Nhật (Junior, Senior, Leader)
                                    <span class="urgent">Urgent</span></a>
                            </h3>
                            <div class="w100 dates">
                                <span class="pleft since">Ngày đăng: 03/08/2016</span>
                                <span class="pleft exp">Hạn nộp: 31/08/2016</span>
                            </div>
                            <p>
                                Trao đổi với khách hàng về yêu cầu của dự án để lập kế hoạch...
                            </p>
                            <div class="tags">
                            </div>
                        </li>
                        <li class="col col50 mcol100">
                            <h3>
                                <a title="Lập trình viên Perl" href="#" class="">
                                    Lập trình viên Perl
                                    <span class="hots">hot</span>
                                </a>
                            </h3>
                            <div class="w100 dates">
                                <span class="pleft since">Ngày đăng: 03/08/2016</span>
                                <span class="pleft exp">Hạn nộp: 30/08/2016</span>
                            </div>
                            <p>
                                Tham gia phát triển trong các dự án liên quan đến thông tin thời tiết,...
                            </p>
                            <div class="tags">
                            </div>
                        </li>
                        <li class="col col50 mcol100">
                            <h3>
                                <a title="PHP Technical Leader (mảng Product)" href="#" class="title-urgent">
                                    PHP Technical Leader (mảng Product)
                                    <span class="urgent">Urgent</span></a>
                            </h3>
                            <div class="w100 dates">
                                <span class="pleft since">Ngày đăng: 02/08/2016</span>
                                <span class="pleft exp">Hạn nộp: 30/08/2016</span>
                            </div>
                            <p>
                                - Nghiên cứu và đánh giá chi tiết cách phát triển các dự án công...
                            </p>
                            <div class="tags">
                            </div>
                        </li>
                        <li class="col col50 mcol100">
                            <h3>
                                <a title="Kỹ sư cầu nối Tiếng Nhật BrSE" href="#" class="title-urgent">
                                    Kỹ sư cầu nối Tiếng Nhật BrSE
                                    <span class="urgent">Urgent</span></a>
                            </h3>
                            <div class="w100 dates">
                                <span class="pleft since">Ngày đăng: 02/08/2016</span>
                                <span class="pleft exp">Hạn nộp: 31/08/2016</span>
                            </div>
                            <p>
                                Là cầu nối giữa khách hàng Nhật Bản và đội dự án Offshore ở Việt...
                            </p>
                            <div class="tags">
                            </div>
                        </li>
                        <li class="col col50 mcol100">
                            <h3>
                                <a title="Chuyên Viên Marketing Tuyển Dụng" href="#" class="">
                                    Chuyên Viên Marketing Tuyển Dụng
                                    <span class="hots">hot</span>
                                </a>
                            </h3>
                            <div class="w100 dates">
                                <span class="pleft since">Ngày đăng: 02/08/2016</span>
                                <span class="pleft exp">Hạn nộp: 31/08/2016</span>
                            </div>
                            <p>
                                - Viết bài và đăng tin trên website, FB, twitter, các hệ thống social network...
                            </p>
                            <div class="tags">
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="col col33 mcol100 pright recruit-submit">
                    <div class="fromsubmit textcenter">
                        <h3 class="mpleft hidesm">Bạn muốn gia nhập CO-WELL?</h3>
                        <a class="btnsubmit mpright mcol50" href="#" title="Ứng tuyển ngay">Ứng tuyển ngay</a>
                        <a class="btnsubmit btn2 mpright mcol50" href="#" title="Xem tất cả">Xem tất cả</a>
                    </div>
                </div>
            </div>
            <div class="botrecruit hidesm">
                <a href="http://co-well.vn/contact" title="Liên hệ với chúng tôi để biết thêm thông tin chi tiết về tuyển dụng." class="contactrecruit">Liên hệ với chúng tôi để biết thêm thông tin chi tiết về tuyển dụng.</a>
            </div>
        </div>
    </section>
    <section class="news region">
        <div class="wauto pc_slide">
            <h2 class="fronttitle textcenter">Tin tức và sự kiện</h2>
            <div class="swiper-container swiper-container-horizontal">
                <ul class="swiper-wrapper econtent">
                    <li class="pleft mcol100 swiper-slide " style="height: 564px;">
                        <div class="newconent">
                            <img src="http://co-well.vn/uploads/posts/intro20160615_122608-image(336x199-crop).jpg" width="336" height="199" alt="Thông báo về việc chính thức đổi tên thương mại sang &quot;CO-WELL Châu Á&quot;">
                            <div class="boxNew">
                                <span style="background: #e04646" class="ebtn">
                                    Thông báo
                                </span>
                                <span style="background: #47b48d" class="ebtn">
                                    Sự kiện
                                </span>
                                <h4> 
                                    <a href="http://co-well.vn/news/detail/thong-bao-ve-viec-chinh-thuc-doi-ten-thuong-mai-sang" title="Thông báo về việc chính thức đổi tên thương mại sang &quot;CO-WELL Châu Á&quot;">
                                        Thông báo về việc chính thức đổi tên thương mại sang "CO-WELL Châu Á"
                                    </a>
                                </h4>
                                <br>
                                <span class="time">30/06/2016 <br></span>
                                <article class="hidesm">
                                    <p style="height: 100px; text-overflow: ellipsis; white-space: nowrap;overflow: hidden;">
                                        CO-WELL&nbsp;Châu Á đã chính thức hoàn tất quy trình&nbsp;đổi tên thương mại từ&nbsp;"SETA International Châu Á" sang "CO-WELL Châu Á".
                                        CO-WELL&nbsp;Châu Á xin trân trọng thông báo đã chính thức hoàn tất quy trình&nbsp;đổi tên thương mại từ&nbsp;"SETA International Châu Á" sang "CO-WELL Châu Á".
                                        CO-WELL&nbsp;Châu Á xin trân trọng thông báo đã chính thức hoàn tất quy trình&nbsp;đổi tên thương mại từ&nbsp;"SETA International Châu Á" sang "CO-WELL Châu Á".
                                    </p>
                                </article>
                                <a href="http://co-well.vn/news/detail/thong-bao-ve-viec-chinh-thuc-doi-ten-thuong-mai-sang" class="more fontbold hidesm">Xem thêm</a>
                            </div>
                        </div>
                    </li>
                    <li class="pleft mcol100 swiper-slide " style="height: 564px;">
                        <div class="newconent">
                            <img src="http://co-well.vn/uploads/posts/intro20160812_152549-image(336x199-crop).JPG" width="336" height="199" alt="Thông báo hoàn thành việc mở rộng và cải tạo tầng 6 trung tâm phát triển tại Hà Nội">
                            <div class="boxNew">
                                <span style="background: #e04646" class="ebtn">
                                    Thông báo
                                </span>
                                <h4> 
                                    <a href="http://co-well.vn/news/detail/thong-bao-hoan-thanh-viec-mo-rong-va-cai-tao-tang-6-trung-tam-phat-trien-tai-ha-noi" title="Thông báo hoàn thành việc mở rộng và cải tạo tầng 6 trung tâm phát triển tại Hà Nội">
                                        Thông báo hoàn thành việc mở rộng và cải tạo tầng 6 trung tâm phát triển tại Hà Nội
                                    </a>
                                </h4>
                                <br>
                                <span class="time">12/08/2016 <br></span>
                                <article class="hidesm">
                                    <p>
                                        CO-WELL Asia chính thức đưa tầng 6 của tòa nhà 3D vào sử dụng, nâng tổng diện tích văn phòng tại Hà Nội lên tới 1800m2.
                                    </p>
                                </article>
                                <a href="http://co-well.vn/news/detail/thong-bao-hoan-thanh-viec-mo-rong-va-cai-tao-tang-6-trung-tam-phat-trien-tai-ha-noi" class="more fontbold hidesm">Xem thêm</a>
                            </div>
                        </div>
                    </li>
                    <li class="pleft mcol100 swiper-slide " style="height: 564px;">
                        <div class="newconent">
                            <img src="http://co-well.vn/uploads/posts/intro20160812_102154-image(336x199-crop).jpg" width="336" height="199" alt="Thông báo về việc thay đổi địa chỉ văn phòng chi nhánh Đà Nẵng">
                            <div class="boxNew">
                                <span style="background: #e04646" class="ebtn">
                                    Thông báo
                                </span>
                                <h4> 
                                    <a href="http://co-well.vn/news/detail/thong-bao-ve-viec-thay-doi-dia-chi-van-phong-chi-nhanh-da-nang" title="Thông báo về việc thay đổi địa chỉ văn phòng chi nhánh Đà Nẵng">
                                        Thông báo về việc thay đổi địa chỉ văn phòng chi nhánh Đà Nẵng
                                    </a>
                                </h4>
                                <br>
                                <span class="time">08/08/2016 <br></span>
                                <article class="hidesm">
                                    <p>
                                        Để đáp ứng nhu cầu mở rộng và phát triển, tăng quy mô nhân sự tại thành phố Đà Nẵng, CO-WELL Asia đã chính thức di chuyển văn phòng chi...
                                    </p>
                                </article>
                                <a href="http://co-well.vn/news/detail/thong-bao-ve-viec-thay-doi-dia-chi-van-phong-chi-nhanh-da-nang" class="more fontbold hidesm">Xem thêm</a>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="swiper-pagination"></div>
            </div>
            <div class="btecontent">
                <div class="listnew mw100">
                    <ul>
                        <li style="background: #e04646"><a href="http://co-well.vn/category/thong-bao">
                                Thông báo
                            </a>
                        </li>
                        <li style="background: #4884be"><a href="http://co-well.vn/category/bao-chi">
                                Báo chí
                            </a>
                        </li>
                        <li style="background: #47b48d"><a href="http://co-well.vn/category/su-kien">
                                Sự kiện
                            </a>
                        </li>
                        <li style="background: #eb9446"><a href="http://co-well.vn/category/hoat-dong">
                                Hoạt động
                            </a>
                        </li>
                    </ul>
                </div>
                <a href="http://co-well.vn/news" title="Xem tất cả" class="viewall textcenter">Xem tất cả</a>
            </div>
        </div>
        <div class="mobile_slide">
            <h2 class="fronttitle textcenter">Tin tức và sự kiện</h2>
            <div class="swiper-container swiper-container-horizontal">
                <ul class="swiper-wrapper econtent">
                    <li class="pleft mcol100 swiper-slide  swiper-slide-duplicate" data-swiper-slide-index="2">
                        <div class="newconent">
                            <img src="http://co-well.vn/uploads/posts/intro20160812_102154-image(336x199-crop).jpg" width="336" height="199" alt="Thông báo về việc thay đổi địa chỉ văn phòng chi nhánh Đà Nẵng">
                            <div class="boxNew">
                                <span style="background: #e04646" class="ebtn">
                                    Thông báo
                                </span>
                                <h4> 
                                    <a href="http://co-well.vn/news/detail/thong-bao-ve-viec-thay-doi-dia-chi-van-phong-chi-nhanh-da-nang" title="Thông báo về việc thay đổi địa chỉ văn phòng chi nhánh Đà Nẵng">
                                        Thông báo về việc thay đổi địa chỉ văn phòng chi nhánh Đà Nẵng
                                    </a>
                                </h4>
                                <br>
                                <span class="time">08/08/2016 <br></span>
                                <article class="hidesm">
                                    <p>
                                        Để đáp ứng nhu cầu mở rộng và phát triển, tăng quy mô nhân sự tại thành phố Đà Nẵng, CO-WELL Asia đã chính thức di chuyển văn phòng chi Để đáp ứng nhu cầu mở rộng và phát triển, tăng quy mô nhân sự tại thành phố Đà Nẵng, CO-WELL Asia đã chính thức di chuyển văn phòng chi...

                                    </p>
                                </article>
                                <a href="http://co-well.vn/news/detail/thong-bao-ve-viec-thay-doi-dia-chi-van-phong-chi-nhanh-da-nang" class="more fontbold hidesm">Xem thêm</a>
                            </div>
                        </div>
                    </li>
                    <li class="pleft mcol100 swiper-slide swiper-slide-prev" data-swiper-slide-index="0" >
                        <div class="newconent">
                            <img src="http://co-well.vn/uploads/posts/intro20160615_122608-image(336x199-crop).jpg" width="336" height="199" alt="Thông báo về việc chính thức đổi tên thương mại sang &quot;CO-WELL Châu Á&quot;">
                            <div class="boxNew">
                                <span style="background: #e04646" class="ebtn">
                                    Thông báo
                                </span>
                                <span style="background: #47b48d" class="ebtn">
                                    Sự kiện
                                </span>
                                <h4> 
                                    <a href="http://co-well.vn/news/detail/thong-bao-ve-viec-chinh-thuc-doi-ten-thuong-mai-sang" title="Thông báo về việc chính thức đổi tên thương mại sang &quot;CO-WELL Châu Á&quot;">
                                        Thông báo về việc chính thức đổi tên thương mại sang "CO-WELL Châu Á"
                                    </a>
                                </h4>
                                <br>
                                <span class="time">30/06/2016 <br></span>
                                <article class="hidesm">
                                    <p>
                                        CO-WELL&nbsp;Châu Á xin trân trọng thông báo đã chính thức hoàn tất quy trình&nbsp;đổi tên thương mại từ&nbsp;"SETA International Châu Á" sang "CO-WELL Châu Á".
                                    </p>
                                </article>
                                <a href="http://co-well.vn/news/detail/thong-bao-ve-viec-chinh-thuc-doi-ten-thuong-mai-sang" class="more fontbold hidesm">Xem thêm</a>
                            </div>
                        </div>
                    </li>
                    <li class="pleft mcol100 swiper-slide swiper-slide-active" data-swiper-slide-index="1">
                        <div class="newconent">
                            <img src="http://co-well.vn/uploads/posts/intro20160812_152549-image(336x199-crop).JPG" width="336" height="199" alt="Thông báo hoàn thành việc mở rộng và cải tạo tầng 6 trung tâm phát triển tại Hà Nội">
                            <div class="boxNew">
                                <span style="background: #e04646" class="ebtn">
                                    Thông báo
                                </span>
                                <h4> 
                                    <a href="http://co-well.vn/news/detail/thong-bao-hoan-thanh-viec-mo-rong-va-cai-tao-tang-6-trung-tam-phat-trien-tai-ha-noi" title="Thông báo hoàn thành việc mở rộng và cải tạo tầng 6 trung tâm phát triển tại Hà Nội">
                                        Thông báo hoàn thành việc mở rộng và cải tạo tầng 6 trung tâm phát triển tại Hà Nội
                                    </a>
                                </h4>
                                <br>
                                <span class="time">12/08/2016 <br></span>
                                <article class="hidesm">
                                    <p>
                                        CO-WELL Asia chính thức đưa tầng 6 của tòa nhà 3D vào sử dụng, nâng tổng diện tích văn phòng tại Hà Nội lên tới 1800m2.
                                    </p>
                                </article>
                                <a href="http://co-well.vn/news/detail/thong-bao-hoan-thanh-viec-mo-rong-va-cai-tao-tang-6-trung-tam-phat-trien-tai-ha-noi" class="more fontbold hidesm">Xem thêm</a>
                            </div>
                        </div>
                    </li>
                    <li class="pleft mcol100 swiper-slide swiper-slide-next" data-swiper-slide-index="2">
                        <div class="newconent">
                            <!--<img src="http://co-well.vn/uploads/posts/intro20160812_102154-image(336x199-crop).jpg" width="336" height="199" alt="Thông báo về việc thay đổi địa chỉ văn phòng chi nhánh Đà Nẵng">-->
                            <img src="resource/clients/images/P1011474-001.JPG" alt=""/>
                            <div class="boxNew">
                                <span style="background: #e04646" class="ebtn">
                                    Thông báo
                                </span>
                                <h4> 
                                    <a href="http://co-well.vn/news/detail/thong-bao-ve-viec-thay-doi-dia-chi-van-phong-chi-nhanh-da-nang" title="Thông báo về việc thay đổi địa chỉ văn phòng chi nhánh Đà Nẵng">
                                        Thông báo về việc thay đổi địa chỉ văn phòng chi nhánh Đà Nẵng
                                    </a>
                                </h4>
                                <br>
                                <span class="time">08/08/2016 <br></span>
                                <article class="hidesm">
                                    <p>
                                        Để đáp ứng nhu cầu mở rộng và phát triển, tăng quy mô nhân sự tại thành phố Đà Nẵng, CO-WELL Asia đã chính thức di chuyển văn phòng chi...
                                    </p>
                                </article>
                                <a href="http://co-well.vn/news/detail/thong-bao-ve-viec-thay-doi-dia-chi-van-phong-chi-nhanh-da-nang" class="more fontbold hidesm">Xem thêm</a>
                            </div>
                        </div>
                    </li>
                    <li class="pleft mcol100 swiper-slide  swiper-slide-duplicate" data-swiper-slide-index="0">
                        <div class="newconent">
                            <img src="http://co-well.vn/uploads/posts/intro20160615_122608-image(336x199-crop).jpg" width="336" height="199" alt="Thông báo về việc chính thức đổi tên thương mại sang &quot;CO-WELL Châu Á&quot;">
                            <div class="boxNew">
                                <span style="background: #e04646" class="ebtn">
                                    Thông báo
                                </span>
                                <span style="background: #47b48d" class="ebtn">
                                    Sự kiện
                                </span>
                                <h4> 
                                    <a href="http://co-well.vn/news/detail/thong-bao-ve-viec-chinh-thuc-doi-ten-thuong-mai-sang" title="Thông báo về việc chính thức đổi tên thương mại sang &quot;CO-WELL Châu Á&quot;">
                                        Thông báo về việc chính thức đổi tên thương mại sang "CO-WELL Châu Á"
                                    </a>
                                </h4>
                                <br>
                                <span class="time">30/06/2016 <br></span>
                                <article class="hidesm">
                                    <p>
                                        CO-WELL&nbsp;Châu Á xin trân trọng thông báo đã chính thức hoàn tất quy trình&nbsp;đổi tên thương mại từ&nbsp;"SETA International Châu Á" sang "CO-WELL Châu Á".
                                    </p>
                                </article>
                                <a href="http://co-well.vn/news/detail/thong-bao-ve-viec-chinh-thuc-doi-ten-thuong-mai-sang" class="more fontbold hidesm">Xem thêm</a>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="swiper-pagination swiper-pagination-clickable"><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span></div>
            </div>
            <div class="btecontent">
                <div class="listnew mw100">
                    <ul>
                        <li style="background: #e04646"><a href="http://co-well.vn/category/thong-bao">
                                Thông báo
                            </a>
                        </li>
                        <li style="background: #4884be"><a href="http://co-well.vn/category/bao-chi">
                                Báo chí
                            </a>
                        </li>
                        <li style="background: #47b48d"><a href="http://co-well.vn/category/su-kien">
                                Sự kiện
                            </a>
                        </li>
                        <li style="background: #eb9446"><a href="http://co-well.vn/category/hoat-dong">
                                Hoạt động
                            </a>
                        </li>
                    </ul>
                </div>
                <a href="http://co-well.vn/news" title="Xem tất cả" class="viewall textcenter">Xem tất cả</a>
            </div>
        </div>
    </section>
    <section class="region clients">
        <div class="wauto">
            <h2 class="fronttitle textcenter">Các đối tác tiêu biểu</h2>
            <div class="listclients w100 jcarousel-wrapper">
                <div class="">
                    <ul class="newsSlider">
                        <li class="newsSlider-item">
                            <img src="resource/clients/images/avt20160524_221127.png" alt="CÔNG TY GULLIVER INTERNATIONAL" width="125" height="127" class="avatar img_circle pleft">
                            <span class="said">
                                Sử dụng dịch vụ gia công phần mềm tại Việt Nam để tái cấu trúc hệ thống chính trên nền tảng dịch vụ Offshore Việt Nam
                            </span>
                            <a title="http://co-well.vn/partners/detail/c0ng-ty-gulliver-international"><img src="resource/clients/images/logo20160524_221127.png" alt="CÔNG TY GULLIVER INTERNATIONAL"></a>
                        </li>
                        <li class="newsSlider-item">
                            <img src="resource/clients/images/avt20160524_221312.png" alt="CÔNG TY GDO (GOLF DIGEST ONLINE INC)" width="125" height="127" class="avatar img_circle pleft">
                            <span class="said">
                                Dịch vụ Offshore tại Việt Nam được phát triển bởi một đội ngũ kĩ sư Nhật – Việt giàu kinh nghiệm, năng lực thiết kế, khả năng ngôn ngữ cao và kĩ năng tương tác tốt. Chất lượng các dự án được đáp ứng đúng yêu cầu với chi phí hợp lý.
                            </span>
                            <a title="http://co-well.vn/partners/detail/cong-ty-gdo-golf-digest-online-inc"><img src="resource/clients/images/logo20160701_105653.png" alt="CÔNG TY GDO (GOLF DIGEST ONLINE INC)"></a>
                        </li>
                        <li class="newsSlider-item">
                            <img src="resource/clients/images/avt20160614_132303.png" alt="CÔNG TY USAMI KOYUU" width="125" height="127" class="avatar img_circle pleft">
                            <span class="said">
                                Những ưu điểm nổi trội của hình thức hợp đồng thuê nhân lực (Labor contract) là: dễ dàng quản lí chi phí và năng suất lao động tăng dần theo thời gian hợp đồng.
                            </span>
                            <a title="http://co-well.vn/partners/detail/c0ng-ty-usami-koyuu"><img src="resource/clients/images/logo20160524_221639.png" alt="CÔNG TY USAMI KOYUU"></a>
                        </li>
                    </ul>
                </div>

            </div>
            <div class="listlogo row textcenter">
                <a href="http://co-well.vn/partners/detail/c0ng-ty-gulliver-international" class="mcol50" title=""><img src="resource/clients/images/logo20160524_221127.png" alt="CÔNG TY GULLIVER INTERNATIONAL"></a>
                <a href="http://co-well.vn/partners/detail/cong-ty-gdo-golf-digest-online-inc" class="mcol50" title=""><img src="resource/clients/images/logo20160701_105653.png" alt="CÔNG TY GDO (GOLF DIGEST ONLINE INC)"></a>
                <a href="http://co-well.vn/partners/detail/c0ng-ty-usami-koyuu" class="mcol50" title=""><img src="resource/clients/images/logo20160524_221639.png" alt="CÔNG TY USAMI KOYUU"></a>
            </div>
        </div>
    </section>
    <section class="message region">
        <div class="messagebg textcenter">
            <div class="wauto">
                <h3>ĐỂ LẠI LỜI NHẮN <br> <span class="hidesm">CHO CO-WELL asia</span></h3>
                <p>Bạn có nhu cầu tư vấn chiến lược CNTT hay gửi CV apply tuyển dụng, hãy để lại lời nhắn.</p>
                <a href="http://co-well.vn/contact" class="btnsubmit">Gửi thông tin</a>
            </div>
        </div>
    </section>
</co-well:layout>
