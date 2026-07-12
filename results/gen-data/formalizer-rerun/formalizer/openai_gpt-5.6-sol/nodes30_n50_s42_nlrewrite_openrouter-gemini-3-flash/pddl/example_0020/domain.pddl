(define (domain milanesa)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (meat_seasoned)
    (counter_cleaned)
    (beef_bought)
    (flour_prepared)
    (meat_dredged)
    (eggs_beaten)
    (milanesas_fried)
    (eggs_cracked)
    (breadcrumbs_poured)
    (meat_dipped)
    (station_organized)
    (beef_sliced)
    (parsley_minced)
    (table_cleared)
    (garlic_peeled)
    (milanesas_drained)
    (meat_tenderized)
    (milanesas_garnished)
    (meat_breaded)
    (oil_heated)
    (bowls_washed)
    (meat_removed)
    (fat_trimmed)
    (pan_placed)
    (egg_mixture_whisked)
    (flour_stored)
    (oil_checked)
    (plates_set)
    (milanesa_served)
    (groceries_unpacked)
  )

  (:durative-action season_meat
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (groceries_unpacked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_seasoned))))

  (:durative-action clean_counter
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (counter_cleaned))))

  (:durative-action buy_beef
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beef_bought))))

  (:durative-action prepare_flour
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flour_prepared))))

  (:durative-action dredge_meat
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (meat_removed)) (at start (fat_trimmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_dredged))))

  (:durative-action beat_eggs
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (eggs_cracked)) (at start (meat_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_beaten))))

  (:durative-action fry_milanesas
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (oil_heated)) (at start (oil_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (milanesas_fried))))

  (:durative-action crack_eggs
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (pan_placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_cracked))))

  (:durative-action pour_breadcrumbs
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (station_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (breadcrumbs_poured))))

  (:durative-action dip_meat
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (egg_mixture_whisked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_dipped))))

  (:durative-action organize_station
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (station_organized))))

  (:durative-action slice_beef
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (meat_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beef_sliced))))

  (:durative-action mince_parsley
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (garlic_peeled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_minced))))

  (:durative-action clear_table
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (station_organized)) (at start (groceries_unpacked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (table_cleared))))

  (:durative-action peel_garlic
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (eggs_beaten)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garlic_peeled))))

  (:durative-action drain_milanesas
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (oil_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (milanesas_drained))))

  (:durative-action tenderize_meat
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (meat_seasoned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_tenderized))))

  (:durative-action garnish_milanesas
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (meat_breaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (milanesas_garnished))))

  (:durative-action coat_breadcrumbs
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (meat_dipped)) (at start (parsley_minced)) (at start (meat_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_breaded))))

  (:durative-action heat_oil
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_heated))))

  (:durative-action wash_bowls
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (counter_cleaned)) (at start (flour_prepared)) (at start (meat_dredged)) (at start (flour_stored)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowls_washed))))

  (:durative-action remove_meat
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_removed))))

  (:durative-action trim_fat
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (beef_sliced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fat_trimmed))))

  (:durative-action place_pan
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (oil_heated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pan_placed))))

  (:durative-action whisk_egg_mixture
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (flour_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (egg_mixture_whisked))))

  (:durative-action store_flour
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (groceries_unpacked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flour_stored))))

  (:durative-action check_oil
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (fat_trimmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_checked))))

  (:durative-action set_plates
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (breadcrumbs_poured)) (at start (oil_heated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plates_set))))

  (:durative-action serve_milanesa
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (meat_breaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (milanesa_served))))

  (:durative-action unpack_groceries
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (beef_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (groceries_unpacked))))
)