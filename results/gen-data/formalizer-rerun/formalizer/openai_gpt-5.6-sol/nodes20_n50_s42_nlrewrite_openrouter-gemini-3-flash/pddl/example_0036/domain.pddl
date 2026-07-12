(define (domain dog-birthday-party)
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
    (is_step16 ?s - step)
    (is_step17 ?s - step)
    (is_step18 ?s - step)
    (is_step19 ?s - step)
    (is_step20 ?s - step)
    (invitations_sent)
    (bakeries_researched)
    (backyard_setup)
    (dog_groomed)
    (festive_accessories_purchased)
    (guest_list_created)
    (headcount_confirmed)
    (party_favors_purchased)
    (neighbors_messaged)
    (theme_decided)
    (banner_ordered)
    (pupcake_ordered)
    (games_drafted)
    (contest_instructions_printed)
    (dog_dressed)
    (grooming_supplies_purchased)
    (banner_arrived)
    (weather_checked)
    (date_venue_finalized)
    (backyard_cleared)
  )

  (:durative-action send_invitations
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (date_venue_finalized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (invitations_sent))))

  (:durative-action research_bakeries
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (theme_decided)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bakeries_researched))))

  (:durative-action setup_backyard
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (backyard_cleared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (backyard_setup))))

  (:durative-action groom_dog
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (grooming_supplies_purchased))
      (at start (weather_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dog_groomed))))

  (:durative-action purchase_festive_accessories
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (festive_accessories_purchased))))

  (:durative-action create_guest_list
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (guest_list_created))))

  (:durative-action confirm_headcount
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (invitations_sent)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (headcount_confirmed))))

  (:durative-action shop_party_favors
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (theme_decided)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (party_favors_purchased))))

  (:durative-action message_neighbors
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (guest_list_created)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (neighbors_messaged))))

  (:durative-action decide_theme
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (theme_decided))))

  (:durative-action order_banner
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (banner_ordered))))

  (:durative-action order_pupcake
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (bakeries_researched))
      (at start (banner_arrived))
      (at start (weather_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pupcake_ordered))))

  (:durative-action draft_games
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (guest_list_created)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (games_drafted))))

  (:durative-action print_contest_instructions
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (games_drafted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (contest_instructions_printed))))

  (:durative-action dress_dog
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (festive_accessories_purchased))
      (at start (backyard_cleared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dog_dressed))))

  (:durative-action buy_grooming_supplies
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step16 ?s))
      (at start (weather_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (grooming_supplies_purchased))))

  (:durative-action wait_for_banner
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step17 ?s))
      (at start (banner_ordered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (banner_arrived))))

  (:durative-action check_weather
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step18 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (weather_checked))))

  (:durative-action finalize_date_venue
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step19 ?s))
      (at start (bakeries_researched))
      (at start (neighbors_messaged)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (date_venue_finalized))))

  (:durative-action clear_backyard
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step20 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (backyard_cleared))))
)