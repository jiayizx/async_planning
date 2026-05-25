(define (domain fair_price_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (open_browser_pending)
    (open_browser_done)
    (search_amazon_pending)
    (search_amazon_done)
    (search_ebay_pending)
    (search_ebay_done)
    (record_amazon_pending)
    (record_amazon_done)
    (record_ebay_pending)
    (record_ebay_done)
    (return_site_pending)
    (return_site_done)
    (click_buy_pending)
    (click_buy_done)
  )

  (:durative-action open_browser
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (open_browser_pending)))
    :effect (and (at start (not (open_browser_pending)))
                 (at end (open_browser_done)))
  )

  (:durative-action search_amazon
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (search_amazon_pending))
                    (at start (open_browser_done)))
    :effect (and (at start (not (search_amazon_pending)))
                 (at end (search_amazon_done)))
  )

  (:durative-action search_ebay
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (search_ebay_pending))
                    (at start (open_browser_done)))
    :effect (and (at start (not (search_ebay_pending)))
                 (at end (search_ebay_done)))
  )

  (:durative-action record_amazon
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (record_amazon_pending))
                    (at start (search_amazon_done)))
    :effect (and (at start (not (record_amazon_pending)))
                 (at end (record_amazon_done)))
  )

  (:durative-action record_ebay
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (record_ebay_pending))
                    (at start (search_ebay_done)))
    :effect (and (at start (not (record_ebay_pending)))
                 (at end (record_ebay_done)))
  )

  (:durative-action return_site
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (return_site_pending))
                    (at start (record_amazon_done))
                    (at start (record_ebay_done)))
    :effect (and (at start (not (return_site_pending)))
                 (at end (return_site_done)))
  )

  (:durative-action click_buy
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (click_buy_pending))
                    (at start (return_site_done)))
    :effect (and (at start (not (click_buy_pending)))
                 (at end (click_buy_done)))
  )
)
