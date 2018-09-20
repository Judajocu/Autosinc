<#include "blank.ftl">

<#macro page_head>
<title>Encuesta- Ingreso</title>
</#macro>

<#macro titulo>
<h2>Encuesta - Ingresar entrada</h2>
</#macro>

<#macro page_body>
<section class="contact-section">
    <div class="container" >
        <div class="section-title text-center">
            <h2>If you have any questions or comments, or would just like to say hello,<br>
                please feel free to contact our friendly team</h2>
        </div>

        <div class="contact-form mt-50">
            <form action="">
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="nameTwo" class="sr-only">Name</label>
                            <input type="text" class="form-control" required="" id="nameTwo" placeholder="First Name">
                        </div>

                        <div class="form-group">
                            <label for="emailTwo" class="sr-only">Email</label>
                            <input type="email" class="form-control" required="" id="emailTwo" placeholder="Email Address">
                        </div>

                        <div class="form-group">
                            <label for="emailTwo" class="sr-only">Email</label>
                            <input type="email" class="form-control" required="" id="emailTwo" placeholder="Email Address">
                        </div>
                    </div> <!-- col-md-4 -->

                    <div class="col-md-8">
                        <div class="form-group">
                            <label for="messageTwo" class="sr-only">Message</label>
                            <textarea class="form-control" required="" rows="7" placeholder="Write message"></textarea>
                        </div>
                    </div> <!-- col-md-8 -->
                </div><!-- /.row-->

                <button type="submit" class="btn btn-primary btn-lg pull-right">Send Message</button>
            </form>
        </div> <!-- contact-form -->
    </div>
</section> <!-- contact-section -->
</#macro>