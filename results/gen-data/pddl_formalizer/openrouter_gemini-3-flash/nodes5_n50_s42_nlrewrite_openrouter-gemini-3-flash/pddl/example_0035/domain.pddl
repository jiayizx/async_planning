(define (domain postage_stamps)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (at_post_office)
    (balance_checked)
    (stamps_affixed)
    (wallet_keys_located)
    (stamps_purchased)
  )

  (:durative-action locate_wallet_keys
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wallet_keys_located)))
  )

  (:durative-action walk_to_post_office
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (wallet_keys_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_post_office)))
  )

  (:durative-action check_balance
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (balance_checked)))
  )

  (:durative-action purchase_stamps
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (at_post_office)) (at start (balance_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stamps_purchased)))
  )

  (:durative-action affix_stamps
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (stamps_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stamps_affixed)))
  )
)