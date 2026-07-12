(define (domain bus-pass)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (purchase_step ?s - step)
    (download_step ?s - step)
    (profile_step ?s - step)
    (withdraw_step ?s - step)
    (find_bank_step ?s - step)
    (pass_purchased)
    (app_downloaded)
    (rider_profile_created)
    (cash_withdrawn)
    (bank_branch_found)
  )

  (:durative-action purchase_pass
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (purchase_step ?s))
      (at start (cash_withdrawn))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pass_purchased))
    )
  )

  (:durative-action download_app
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (download_step ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (app_downloaded))
    )
  )

  (:durative-action create_rider_profile
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (profile_step ?s))
      (at start (app_downloaded))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rider_profile_created))
    )
  )

  (:durative-action withdraw_cash
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (withdraw_step ?s))
      (at start (bank_branch_found))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cash_withdrawn))
    )
  )

  (:durative-action find_bank_branch
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (find_bank_step ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bank_branch_found))
    )
  )
)