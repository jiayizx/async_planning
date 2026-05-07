(define (domain get_working_computer)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (researched)
    (saved_money)
    (sale_waited)
    (visited_website)
    (purchase_completed)
  )

  ;; Step 1: research which computer to buy
  (:durative-action do_step1_research
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (researched))
            )
  )

  ;; Step 2: Save money to buy (requires step1 researched)
  (:durative-action do_step2_save
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (researched)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (saved_money))
            )
  )

  ;; Step 5: wait for desired model to go on sale (requires step1 researched)
  (:durative-action do_step5_wait_sale
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (researched)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (sale_waited))
            )
  )

  ;; Step 3: go to website to purchase (requires step2 saved_money AND step5 sale_waited)
  (:durative-action do_step3_visit_website
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (saved_money)) (at start (sale_waited)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (visited_website))
            )
  )

  ;; Step 4: complete purchase online (requires step3 visited_website)
  (:durative-action do_step4_complete_purchase
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (visited_website)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (purchase_completed))
            )
  )
)
