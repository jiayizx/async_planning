(define (domain flag-football)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (field_rented)
    (schedule_sent)
    (interest_poll_created)
    (flags_and_belts_bought)
    (suppliers_researched)
    (field_setup_complete)
    (teams_confirmed)
    (rules_drafted)
    (referees_recruited)
    (football_purchased)
    (jerseys_ordered)
    (fees_collected)
    (balls_inflated)
    (brands_compared)
    (captains_meeting_held)
  )

  (:durative-action rent_field
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (is_step1 ?s))
      (at start (step_pending ?s))
      (at start (schedule_sent)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (field_rented))))

  (:durative-action send_schedule
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (is_step2 ?s))
      (at start (step_pending ?s))
      (at start (teams_confirmed))
      (at start (fees_collected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (schedule_sent))))

  (:durative-action create_interest_poll
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (is_step3 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (interest_poll_created))))

  (:durative-action buy_flags_and_belts
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (is_step4 ?s))
      (at start (step_pending ?s))
      (at start (referees_recruited)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flags_and_belts_bought))))

  (:durative-action research_suppliers
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (is_step5 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (suppliers_researched))))

  (:durative-action set_up_field
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (is_step6 ?s))
      (at start (step_pending ?s))
      (at start (flags_and_belts_bought))
      (at start (captains_meeting_held)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (field_setup_complete))))

  (:durative-action confirm_teams
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (is_step7 ?s))
      (at start (step_pending ?s))
      (at start (rules_drafted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (teams_confirmed))))

  (:durative-action draft_rules
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (is_step8 ?s))
      (at start (step_pending ?s))
      (at start (interest_poll_created))
      (at start (jerseys_ordered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rules_drafted))))

  (:durative-action recruit_referees
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (is_step9 ?s))
      (at start (step_pending ?s))
      (at start (interest_poll_created)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (referees_recruited))))

  (:durative-action purchase_football
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (is_step10 ?s))
      (at start (step_pending ?s))
      (at start (brands_compared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (football_purchased))))

  (:durative-action order_jerseys
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (is_step11 ?s))
      (at start (step_pending ?s))
      (at start (suppliers_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (jerseys_ordered))))

  (:durative-action collect_fees
    :parameters (?s - step)
    :duration (= ?duration 864000)
    :condition (and
      (at start (is_step12 ?s))
      (at start (step_pending ?s))
      (at start (interest_poll_created)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fees_collected))))

  (:durative-action inflate_balls
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (is_step13 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (balls_inflated))))

  (:durative-action compare_brands
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (is_step14 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (brands_compared))))

  (:durative-action hold_captains_meeting
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (is_step15 ?s))
      (at start (step_pending ?s))
      (at start (field_rented))
      (at start (schedule_sent))
      (at start (balls_inflated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (captains_meeting_held))))
)