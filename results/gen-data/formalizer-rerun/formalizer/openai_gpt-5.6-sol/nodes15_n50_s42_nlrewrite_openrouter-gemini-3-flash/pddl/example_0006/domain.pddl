(define (domain carpet-cleaning)
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
    (vacuum_returned)
    (light_furniture_moved)
    (stains_pretreated)
    (air_circulating)
    (floor_vacuumed)
    (carpet_rinsed)
    (decorations_cleared)
    (furniture_protected)
    (carpet_deep_cleaned)
    (cleaners_purchased)
    (solution_mixed)
    (traffic_areas_identified)
    (water_tank_refreshed)
    (carpet_completely_dried)
    (methods_researched)
  )

  (:durative-action return_heavy_duty_vacuum
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (cleaners_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vacuum_returned)))
  )

  (:durative-action move_light_furniture
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (traffic_areas_identified)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (light_furniture_moved)))
  )

  (:durative-action pretreat_stains
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (floor_vacuumed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stains_pretreated)))
  )

  (:durative-action circulate_air
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (decorations_cleared))
      (at start (furniture_protected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (air_circulating)))
  )

  (:durative-action vacuum_floor
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (light_furniture_moved)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (floor_vacuumed)))
  )

  (:durative-action rinse_carpet
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (water_tank_refreshed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (carpet_rinsed)))
  )

  (:durative-action clear_decorations
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (decorations_cleared)))
  )

  (:durative-action protect_heavy_furniture
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (methods_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (furniture_protected)))
  )

  (:durative-action deep_clean_carpet
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (stains_pretreated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (carpet_deep_cleaned)))
  )

  (:durative-action buy_cleaners
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cleaners_purchased)))
  )

  (:durative-action mix_cleaning_solution
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (decorations_cleared))
      (at start (cleaners_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (solution_mixed)))
  )

  (:durative-action identify_traffic_areas
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (methods_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (traffic_areas_identified)))
  )

  (:durative-action refresh_water_tank
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (carpet_deep_cleaned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (water_tank_refreshed)))
  )

  (:durative-action dry_carpet
    :parameters (?s - step)
    :duration (= ?duration 28800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (carpet_rinsed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (carpet_completely_dried)))
  )

  (:durative-action research_methods
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (methods_researched)))
  )
)