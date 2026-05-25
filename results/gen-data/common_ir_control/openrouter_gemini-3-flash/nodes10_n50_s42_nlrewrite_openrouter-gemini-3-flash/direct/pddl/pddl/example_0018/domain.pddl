(define (domain house_cleaning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (clutter_cleared)
    (fans_dusted)
    (surfaces_sanitized)
    (floors_mopped)
    (floors_vacuumed)
    (carpets_steamed)
    (oven_degreased)
    (appliances_polished)
    (furniture_waxed)
    (inspection_done)
  )

  (:durative-action clear_clutter
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clutter_cleared)))
  )

  (:durative-action dust_fans
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (clutter_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fans_dusted)))
  )

  (:durative-action sanitize_surfaces
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (fans_dusted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (surfaces_sanitized)))
  )

  (:durative-action mop_floors
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (surfaces_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (floors_mopped)))
  )

  (:durative-action vacuum_floors
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (floors_vacuumed)))
  )

  (:durative-action steam_carpets
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (floors_vacuumed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (carpets_steamed)))
  )

  (:durative-action degrease_oven
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_degreased)))
  )

  (:durative-action polish_appliances
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (oven_degreased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (appliances_polished)))
  )

  (:durative-action wax_furniture
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (appliances_polished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (furniture_waxed)))
  )

  (:durative-action final_inspection
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (furniture_waxed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inspection_done)))
  )
)