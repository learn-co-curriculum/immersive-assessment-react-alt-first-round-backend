class ApplicationController < ActionController::Base

  def index
    render html: "<div>API for Bayside Student Lister</div><img width='500px' src='https://www.nbcstore.com/media/catalog/product/cache/1/image/1000x/040ec09b1e35df139433887a97daa66f/s/a/savedbythebell_bayside_tigers_rollover_1__7.png' alt='bayside' />".html_safe
  end

end
