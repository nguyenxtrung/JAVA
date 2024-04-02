<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="untree_co-section product-section before-footer-section">
    <c:forEach items="${listCategory}" var="category">
        <div class="container">
            <div class="row">
                <c:forEach items="${listProduct}" var="product">
                    <c:if test="${category.id == product.id_category && product.status==true}">
                        <div class="col-12 col-md-4 col-lg-3 mb-5">
                            <a class="product-item" href="
                               <c:if test = "${user==null}">
                               login
                                </c:if>
                                <c:if test = "${user!=null}">
                                    shop?id_product=${product.id}
                                </c:if>">
                                <img src="./assets/images/${product.image}" class="img-fluid product-thumbnail">
                                <h3 class="product-title">${product.name}</h3>
                                <strong class="product-price">$${product.price}</strong>
                                <span class="icon-cross">
                                    <img src="./assets/images/cross.svg" class="img-fluid">
                                </span>     
                            </a>
                        </div> 
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </c:forEach>
</div>