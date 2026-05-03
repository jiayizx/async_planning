(define (problem pay_fair_price)
  (:domain fair_price_planning)
  
  (:init
    (open_browser_pending)
    (search_amazon_pending)
    (search_ebay_pending)
    (record_amazon_pending)
    (record_ebay_pending)
    (return_site_pending)
    (click_buy_pending)
  )

  (:goal (and
    (open_browser_done)
    (search_amazon_done)
    (search_ebay_done)
    (record_amazon_done)
    (record_ebay_done)
    (return_site_done)
    (click_buy_done)
  ))
)
