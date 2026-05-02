(define (domain tennis_learning)
  (:requirements :durative-actions)
  (:predicates
    (purchase_racket_pending)
    (purchase_racket_done)
    (register_clinic_pending)
    (register_clinic_done)
    (practice_backhand_pending)
    (practice_backhand_done)
    (research_gear_pending)
    (research_gear_done)
    (attend_clinic_pending)
    (attend_clinic_done)
    (watch_matches_pending)
    (watch_matches_done)
    (watch_tutorials_pending)
    (watch_tutorials_done)
    (buy_balls_pending)
    (buy_balls_done)
    (book_court_pending)
    (book_court_done)
    (visit_store_pending)
    (visit_store_done)
    (find_club_pending)
    (find_club_done)
    (practice_match_pending)
    (practice_match_done)
    (pay_membership_pending)
    (pay_membership_done)
    (fill_application_pending)
    (fill_application_done)
    (read_rules_pending)
    (read_rules_done)
  )

  (:durative-action purchase_racket
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (purchase_racket_pending)) (at start (research_gear_done)))
    :effect (and (at start (not (purchase_racket_pending))) (at end (purchase_racket_done)))
  )

  (:durative-action register_clinic
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (register_clinic_pending)) (at start (find_club_done)))
    :effect (and (at start (not (register_clinic_pending))) (at end (register_clinic_done)))
  )

  (:durative-action practice_backhand
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (practice_backhand_pending)) (at start (buy_balls_done)) (at start (book_court_done)) (at start (pay_membership_done)))
    :effect (and (at start (not (practice_backhand_pending))) (at end (practice_backhand_done)))
  )

  (:durative-action research_gear
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (research_gear_pending))
    :effect (and (at start (not (research_gear_pending))) (at end (research_gear_done)))
  )

  (:durative-action attend_clinic
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (attend_clinic_pending)) (at start (register_clinic_done)))
    :effect (and (at start (not (attend_clinic_pending))) (at end (attend_clinic_done)))
  )

  (:durative-action watch_matches
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (watch_matches_pending))
    :effect (and (at start (not (watch_matches_pending))) (at end (watch_matches_done)))
  )

  (:durative-action watch_tutorials
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (watch_tutorials_pending)) (at start (visit_store_done)))
    :effect (and (at start (not (watch_tutorials_pending))) (at end (watch_tutorials_done)))
  )

  (:durative-action buy_balls
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (buy_balls_pending)) (at start (book_court_done)))
    :effect (and (at start (not (buy_balls_pending))) (at end (buy_balls_done)))
  )

  (:durative-action book_court
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (book_court_pending)) (at start (watch_tutorials_done)))
    :effect (and (at start (not (book_court_pending))) (at end (book_court_done)))
  )

  (:durative-action visit_store
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (visit_store_pending)) (at start (purchase_racket_done)) (at start (research_gear_done)))
    :effect (and (at start (not (visit_store_pending))) (at end (visit_store_done)))
  )

  (:durative-action find_club
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (find_club_pending)) (at start (pay_membership_done)))
    :effect (and (at start (not (find_club_pending))) (at end (find_club_done)))
  )

  (:durative-action practice_match
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (practice_match_pending)) (at start (practice_backhand_done)))
    :effect (and (at start (not (practice_match_pending))) (at end (practice_match_done)))
  )

  (:durative-action pay_membership
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pay_membership_pending)) (at start (fill_application_done)))
    :effect (and (at start (not (pay_membership_pending))) (at end (pay_membership_done)))
  )

  (:durative-action fill_application
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (fill_application_pending)) (at start (read_rules_done)))
    :effect (and (at start (not (fill_application_pending))) (at end (fill_application_done)))
  )

  (:durative-action read_rules
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (read_rules_pending)) (at start (watch_matches_done)))
    :effect (and (at start (not (read_rules_pending))) (at end (read_rules_done)))
  )
)
