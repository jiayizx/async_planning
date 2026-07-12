(define (domain learn-tennis)
  (:requirements :durative-actions :typing)
  (:types
    step - object
    step1-type step2-type step3-type step4-type step5-type
    step6-type step7-type step8-type step9-type step10-type
    step11-type step12-type step13-type step14-type step15-type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (racket_purchased)
    (tutorials_watched)
    (clinic_attended)
    (stores_researched)
    (forehand_practiced)
    (clubs_found)
    (tennis_balls_bought)
    (membership_obtained)
    (hitting_partner_found)
    (racket_restrung)
    (footwork_app_downloaded)
    (practice_set_played)
    (rule_book_read)
    (registration_fee_paid)
    (assessment_scheduled)
  )

  (:durative-action purchase_racket
    :parameters (?s - step1-type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (stores_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (racket_purchased))
    )
  )

  (:durative-action watch_tutorials
    :parameters (?s - step2-type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (footwork_app_downloaded))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tutorials_watched))
    )
  )

  (:durative-action attend_coaching_clinic
    :parameters (?s - step3-type)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (membership_obtained))
      (at start (hitting_partner_found))
      (at start (rule_book_read))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (clinic_attended))
    )
  )

  (:durative-action research_equipment_stores
    :parameters (?s - step4-type)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stores_researched))
    )
  )

  (:durative-action practice_forehand
    :parameters (?s - step5-type)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (tutorials_watched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (forehand_practiced))
    )
  )

  (:durative-action find_tennis_clubs
    :parameters (?s - step6-type)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (clubs_found))
    )
  )

  (:durative-action buy_tennis_balls
    :parameters (?s - step7-type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (racket_restrung))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tennis_balls_bought))
    )
  )

  (:durative-action obtain_court_membership
    :parameters (?s - step8-type)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (hitting_partner_found))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (membership_obtained))
    )
  )

  (:durative-action find_hitting_partner
    :parameters (?s - step9-type)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (tennis_balls_bought))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hitting_partner_found))
    )
  )

  (:durative-action restring_racket
    :parameters (?s - step10-type)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (racket_purchased))
      (at start (stores_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (racket_restrung))
    )
  )

  (:durative-action download_footwork_app
    :parameters (?s - step11-type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (rule_book_read))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (footwork_app_downloaded))
    )
  )

  (:durative-action play_practice_set
    :parameters (?s - step12-type)
    :duration (= ?duration 5400)
    :condition (and
      (at start (step_pending ?s))
      (at start (clinic_attended))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (practice_set_played))
    )
  )

  (:durative-action read_rule_book
    :parameters (?s - step13-type)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (registration_fee_paid))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rule_book_read))
    )
  )

  (:durative-action pay_registration_fee
    :parameters (?s - step14-type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (assessment_scheduled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (registration_fee_paid))
    )
  )

  (:durative-action schedule_assessment
    :parameters (?s - step15-type)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (clubs_found))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (assessment_scheduled))
    )
  )
)