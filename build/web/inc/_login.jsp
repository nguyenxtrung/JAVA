<section class="vh-100" style="background-color: #3b5d50;">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card shadow-2-strong" style="border-radius: 1rem;">
                    <div class="card-body p-5 text-center">
                        <form action="" method="post">
                            <h3 class="mb-5">Sign in</h3>
                            <div class = "link-danger">${error_login}</div>
                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <input type="email" name="emailphone" class="form-control form-control-lg"
                                       placeholder="Enter a valid email address or phone number" />
                            </div>
                            <!-- Password input -->
                            <div class="form-outline mb-4">
                                <input type="password" name="password" class="form-control form-control-lg"
                                       placeholder="Enter password" />
                            </div>
                            <!-- Checkbox -->
                            <div style="align-items: center"class="form-check d-flex justify-content-start mb-4">
                                <input class="form-check-input" type="checkbox" value="" id="form1Example3" />
                                <label class="form-check-label" for="form1Example3"> Remember password </label>
                            </div>
                            <div style="display: flex; justify-content: space-between">
                                <button class="btn btn-primary btn-lg btn-block" type="submit">Login</a></button>
                                <!--<a style="width: 150px" class="btn btn-primary btn-lg btn-block" href="login">-->
                                <button style="border: none; background-color: transparent" type="submit"><a style="width: 150px" class="btn btn-primary btn-lg btn-block" href="register">Register</a></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>