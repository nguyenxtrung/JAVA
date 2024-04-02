<section class="vh-100 bg-image"
         <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                <div class="card" style="border-radius: 15px;">
                    <div class="card-body p-5">
                        <h2 class="text-uppercase text-center mb-5">Create an account</h2>
                        <form action="" method="post">
                            <div class="form-outline mb-4">
                                <label class="form-label" for="form3Example1c">Your Name</label>
                                <input type="text" name="name" class="form-control" required="required"/>
                            </div>

                            <div class="form-outline mb-4">
                                <label class="form-label" for="form3Example3c">Your Email</label>
                                <input type="text" name="email" class="form-control"required="required" />
                                <span style ="color: red">${err_email}</span>
                            </div>

                            <div class="form-outline mb-4">
                                <label class="form-label" for="form3Example3c">Your Phone</label>
                                <input type="text" name="phone" class="form-control" required="required"/>
                                <span style =" color: red">${err_phone}</span>
                            </div>

                            <div class="form-outline mb-4">
                                <label class="form-label" for="form3Example4c">Password</label>
                                <input type="password" name="password" class="form-control" required="required" />
                            </div>

                            <div class="form-outline mb-4">
                                <label class="form-label" for="form3Example4cd">Retype password</label>
                                <input type="password" name="repassword" class="form-control" required="required"/>
                                <span style =" color: red">${err_repassword}</span>
                            </div>

                            <div class="form-check d-flex justify-content-center mb-5">
                                <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" />
                                <label class="form-check-label" for="form2Example3g">
                                    I agree all statements in <a href="#!" class="text-body"><u>Terms of service</u></a>
                                </label>
                            </div>

                            <div class="d-flex justify-content-center">
                                <button style= "background: none;"type="submit"
                                        class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>
                            </div>

                            <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="login"
                                                                                                    class="fw-bold text-body"><u>Login</u></a></p>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>