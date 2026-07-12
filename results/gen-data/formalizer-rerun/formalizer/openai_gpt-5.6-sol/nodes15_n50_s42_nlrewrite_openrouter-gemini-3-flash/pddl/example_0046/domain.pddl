(define (domain throw-party)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (theme_chosen)
    (decorations_purchased)
    (appetizers_prepared)
    (hall_rented)
    (dates_researched)
    (guest_list_drafted)
    (invitations_designed)
    (designer_hired)
    (budget_secured)
    (pinterest_board_created)
    (party_type_decided)
    (invitations_sent)
    (buffet_table_set)
    (groceries_purchased)
    (venue_decorated)
  )

  (:durative-action choose_theme
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (party_type_decided)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (theme_chosen))))

  (:durative-action purchase_decorations
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (hall_rented)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (decorations_purchased))))

  (:durative-action prepare_appetizers
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and
      (at start (step_pending ?s))
      (at start (groceries_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (appetizers_prepared))))

  (:durative-action rent_hall
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (guest_list_drafted))
      (at start (invitations_sent)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hall_rented))))

  (:durative-action research_dates
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dates_researched))))

  (:durative-action draft_guest_list
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (dates_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (guest_list_drafted))))

  (:durative-action design_invitations
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (designer_hired)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (invitations_designed))))

  (:durative-action hire_designer
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (budget_secured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (designer_hired))))

  (:durative-action secure_budget
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (pinterest_board_created)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (budget_secured))))

  (:durative-action create_pinterest_board
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (theme_chosen)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pinterest_board_created))))

  (:durative-action decide_party_type
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (party_type_decided))))

  (:durative-action send_invitations
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (invitations_designed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (invitations_sent))))

  (:durative-action set_buffet_table
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (appetizers_prepared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (buffet_table_set))))

  (:durative-action purchase_groceries
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (venue_decorated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (groceries_purchased))))

  (:durative-action decorate_venue
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (decorations_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (venue_decorated))))
)