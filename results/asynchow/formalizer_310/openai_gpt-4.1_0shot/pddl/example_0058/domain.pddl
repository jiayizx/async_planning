(define (domain fair_price)
  (:requirements :durative-actions)
  (:predicates
    (open_browser_pending)
    (open_browser_done)
    (search_amazon_pending)
    (search_amazon_done)
    (search_ebay_pending)
    (search_ebay_done)
    (record_amazon_price_pending)
    (record_amazon_price_done)
    (record_ebay_price_pending)
    (record_ebay_price_done)
    (return_to_fair_site_pending)
    (return_to_fair_site_done)
    (click_buy_now_pending)
    (click_buy_now_done)
  )

  (:durative-action open_browser
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (open_browser_pending))
    :effect (and (at start (not (open_browser_pending))) (at end (open_browser_done)))
  )

  (:durative-action search_amazon
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (search_amazon_pending)) (at start (open_browser_done)))
    :effect (and (at start (not (search_amazon_pending))) (at end (search_amazon_done)))
  )

  (:durative-action search_ebay
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (search_ebay_pending)) (at start (open_browser_done)))
    :effect (and (at start (not (search_ebay_pending))) (at end (search_ebay_done)))
  )

  (:durative-action record_amazon_price
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (record_amazon_price_pending)) (at start (search_amazon_done)))
    :effect (and (at start (not (record_amazon_price_pending))) (at end (record_amazon_price_done)))
  )

  (:durative-action record_ebay_price
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (record_ebay_price_pending)) (at start (search_ebay_done)))
    :effect (and (at start (not (record_ebay_price_pending))) (at end (record_ebay_price_done)))
  )

  (:durative-action return_to_fair_site
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (return_to_fair_site_pending)) (at start (record_amazon_price_done)) (at start (record_ebay_price_done)))
    :effect (and (at start (not (return_to_fair_site_pending))) (at end (return_to_fair_site_done)))
  )

  (:durative-action click_buy_now
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (click_buy_now_pending)) (at start (return_to_fair_site_done)))
    :effect (and (at start (not (click_buy_now_pending))) (at end (click_buy_now_done)))
  )
)
