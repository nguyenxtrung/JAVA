<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="untree_co-section before-footer-section">
    <div class="container">
        <div class="row mb-5">
            <form class="col-md-12" method="post">
                <div class="site-blocks-table">
                    <table class="table">
                        <thead>
                            <tr>
                                <th class="product-thumbnail">Image</th>
                                <th class="product-name">Product</th>
                                <th class="product-price">Price</th>
                                <th class="product-quantity">Quantity</th>
                                <th class="product-total">Total</th>
                                <th class="product-remove">Remove & Update</th>
                            </tr>
                        </thead>
                        <div class="d-flex justify-content-between align-items-center mb-4">
                            <div>
                                <p class="mb-1">Shopping cart</p>
                                <p class="mb-0">You have ${cart.size()} items in your cart</p>
                            </div>
                        </div>
                        <c:set var="total" value="0"></c:set>
                        <c:forEach items="${cart}" var="product">
                            <tbody>
                                <tr>
                                    <td class="product-thumbnail">
                                        <img src="./assets/images/${product.image}" alt="Image" class="img-fluid">
                                    </td>
                                    <td class="product-name">
                                        <h2 class="h5 text-black">${product.name}</h2>
                                    </td>
                                    <td>$${product.price}</td>
                                    <td>
                                        <div style="place-content: center" class="input-group mb-3 d-flex align-items-center quantity-container" style="max-width: 120px;">
                                            <input type="hidden" name="id_product" value="${product.id}">
                                            <input type="text" name="quantity" value="${product.quantity}"style ="width:30px; text-align:center;"> 
                                        </div>
                                    </td>
                                    <td>$${product.price}</td>
                                    <td>                        <button name="action" value="update" class="btn btn-black btn-sm">Update</button>
                                        <button name="action" value="delete" class="btn btn-black btn-sm">X</button></td>
                                </tr>
                            </tbody>
                            <c:set var="total" value="${total + product.quantity*product.price}"></c:set>
                        </c:forEach>
                    </table>
                </div>
            </form>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="row mb-5">
                    <div style="display: contents;" class="col-md-6 mb-3 mb-md-0">
                        <button style="border: none;background-color: transparent">
                            <a class="btn btn-outline-black btn-sm btn-block" href="cart?clear=OK">
                                Delete All</a></button>
                        <button style="border: none;background-color: transparent"><a class="btn btn-outline-black btn-sm btn-block" href="shop">Continue Shopping</a></button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <label class="text-black h4" for="coupon">Coupon</label>
                        <p>Enter your coupon code if you have one.</p>
                    </div>
                    <div class="col-md-8 mb-3 mb-md-0">
                        <input type="text" class="form-control py-3" id="coupon" placeholder="Coupon Code">
                    </div>
                    <div class="col-md-4">
                        <button class="btn btn-black">Apply Coupon</button>
                    </div>
                </div>
            </div>
            <div class="col-md-6 pl-5">
                <div class="row justify-content-end">
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col-md-12 text-right border-bottom mb-5">
                                <h3 class="text-black h4 text-uppercase">Cart Totals</h3>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <span class="text-black">Subtotal</span>
                            </div>
                            <div class="col-md-6 text-right">
                                <strong class="text-black">$${total}</strong>
                            </div>
                        </div>
                        <div class="row mb-5">
                            <div class="col-md-6">
                                <span class="text-black">Total</span>
                            </div>
                            <div class="col-md-6 text-right">
                                <strong class="text-black">$${total*1.1}</strong>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <button class="btn btn-black btn-lg py-3 btn-block" onclick="window.location = 'checkout.html'">Proceed To Checkout</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>