(define (domain cinnamon_french_toast)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (bread_chosen)
    (custard_created)
    (skillet_preheated)
    (bread_dipped)
    (toast_cooked)
    (slices_aside)
    (syrup_combined)
    (mixture_boiled)
    (heat_lowered)
    (syrup_cooled)
    (sandwich_made)
    (toast_served_traditional)
    (toast_served_ice_cream)
  )

  (:durative-action choose_bread
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bread_chosen)))
  )

  (:durative-action create_custard
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (custard_created)))
  )

  (:durative-action preheat_skillet
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (skillet_preheated)))
  )

  (:durative-action dip_bread
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (bread_chosen)) (at start (custard_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bread_dipped)))
  )

  (:durative-action cook_toast
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (skillet_preheated)) (at start (bread_dipped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (toast_cooked)))
  )

  (:durative-action set_aside
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (toast_cooked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slices_aside)))
  )

  (:durative-action combine_syrup
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (slices_aside)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (syrup_combined)))
  )

  (:durative-action boil_mixture
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (syrup_combined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_boiled)))
  )

  (:durative-action lower_heat
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (mixture_boiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (heat_lowered)))
  )

  (:durative-action cool_syrup
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (heat_lowered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (syrup_cooled)))
  )

  (:durative-action make_sandwich
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (syrup_cooled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sandwich_made)))
  )

  (:durative-action serve_traditional
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (sandwich_made)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (toast_served_traditional)))
  )

  (:durative-action serve_ice_cream
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (sandwich_made)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (toast_served_ice_cream)))
  )
)