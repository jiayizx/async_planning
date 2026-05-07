(define (domain fair_price_purchase)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (browser_opened)
    (amazon_searched)
    (ebay_searched)
    (amazon_price_recorded)
    (ebay_price_recorded)
    (returned_to_site)
    (purchase_completed)
  )

  (:durative-action open_browser
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (browser_opened)))
  )

  (:durative-action search_amazon
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (browser_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (amazon_searched)))
  )

  (:durative-action search_ebay
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (browser_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ebay_searched)))
  )

  (:durative-action record_amazon_price
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (amazon_searched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (amazon_price_recorded)))
  )

  (:durative-action record_ebay_price
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (and (at start (step_pending ?s)) (at start (ebay_searched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ebay_price_recorded)))
  )

  (:durative-action return_to_site
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (amazon_price_recorded)) (at start (ebay_price_recorded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (returned_to_site)))
  )

  (:durative-action click_buy_now
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (returned_to_site)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (purchase_completed)))
  )
)