(define (domain pay_fair_price)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates for each step
    (open_browser_done)
    (search_amazon_done)
    (search_ebay_done)
    (record_amazon_done)
    (record_ebay_done)
    (return_done)
    (click_buy_done)
  )

  ; Step 1: open web browser (30s)
  (:durative-action open_browser
     :parameters (?s - step)
     :duration (= ?duration 30)
     :condition (at start (step_pending ?s))
     :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (open_browser_done))
             )
  )

  ; Step 2: search good on amazon (60s) requires step1
  (:durative-action search_amazon
     :parameters (?s - step)
     :duration (= ?duration 60)
     :condition (and (at start (step_pending ?s)) (at start (open_browser_done)))
     :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (search_amazon_done))
             )
  )

  ; Step 3: search good on ebay (300s) requires step1
  (:durative-action search_ebay
     :parameters (?s - step)
     :duration (= ?duration 300)
     :condition (and (at start (step_pending ?s)) (at start (open_browser_done)))
     :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (search_ebay_done))
             )
  )

  ; Step 4: record the amazon price (2s) requires step2
  (:durative-action record_amazon
     :parameters (?s - step)
     :duration (= ?duration 2)
     :condition (and (at start (step_pending ?s)) (at start (search_amazon_done)))
     :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (record_amazon_done))
             )
  )

  ; Step 5: record the ebay price (3s) requires step3
  (:durative-action record_ebay
     :parameters (?s - step)
     :duration (= ?duration 3)
     :condition (and (at start (step_pending ?s)) (at start (search_ebay_done)))
     :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (record_ebay_done))
             )
  )

  ; Step 6: return to site with fair price (60s) requires step4 AND step5
  (:durative-action return_to_site
     :parameters (?s - step)
     :duration (= ?duration 60)
     :condition (and (at start (step_pending ?s)) (at start (record_amazon_done)) (at start (record_ebay_done)))
     :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (return_done))
             )
  )

  ; Step 7: click buy now on good (5s) requires step6
  (:durative-action click_buy
     :parameters (?s - step)
     :duration (= ?duration 5)
     :condition (and (at start (step_pending ?s)) (at start (return_done)))
     :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (click_buy_done))
             )
  )
)
