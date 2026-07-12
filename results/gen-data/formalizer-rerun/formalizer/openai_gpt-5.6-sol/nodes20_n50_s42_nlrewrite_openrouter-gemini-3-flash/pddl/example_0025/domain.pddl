(define (domain home-coffee)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (for_step1 ?s - step)
    (for_step2 ?s - step)
    (for_step3 ?s - step)
    (for_step4 ?s - step)
    (for_step5 ?s - step)
    (for_step6 ?s - step)
    (for_step7 ?s - step)
    (for_step8 ?s - step)
    (for_step9 ?s - step)
    (for_step10 ?s - step)
    (for_step11 ?s - step)
    (for_step12 ?s - step)
    (for_step13 ?s - step)
    (for_step14 ?s - step)
    (for_step15 ?s - step)
    (for_step16 ?s - step)
    (for_step17 ?s - step)
    (for_step18 ?s - step)
    (for_step19 ?s - step)
    (for_step20 ?s - step)
    (machine_unpacked)
    (beans_ground)
    (beans_weighed)
    (portafilter_inserted)
    (reservoir_washed)
    (reservoir_filled)
    (milk_frothed)
    (grinder_burrs_cleaned)
    (grounds_tamped)
    (machine_plugged_in)
    (latte_enjoyed)
    (grounds_distributed)
    (cup_placed)
    (manual_read)
    (shot_extracted)
    (machine_heated)
    (milk_poured_into_pitcher)
    (steam_wand_wiped)
    (coffee_puck_disposed)
    (latte_finished)
  )

  (:durative-action unpack_machine
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (for_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (machine_unpacked))))

  (:durative-action grind_beans
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for_step2 ?s)) (at start (beans_weighed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beans_ground))))

  (:durative-action weigh_beans
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beans_weighed))))

  (:durative-action insert_portafilter
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (for_step4 ?s)) (at start (reservoir_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (portafilter_inserted))))

  (:durative-action wash_reservoir
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (for_step5 ?s)) (at start (machine_unpacked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (reservoir_washed))))

  (:durative-action fill_reservoir
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (for_step6 ?s)) (at start (reservoir_washed)) (at start (machine_heated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (reservoir_filled))))

  (:durative-action froth_milk
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for_step7 ?s)) (at start (milk_poured_into_pitcher)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (milk_frothed))))

  (:durative-action clean_grinder_burrs
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for_step8 ?s)) (at start (beans_ground)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grinder_burrs_cleaned))))

  (:durative-action tamp_grounds
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (for_step9 ?s)) (at start (portafilter_inserted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grounds_tamped))))

  (:durative-action plug_in_machine
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (for_step10 ?s)) (at start (machine_unpacked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (machine_plugged_in))))

  (:durative-action sip_latte
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (for_step11 ?s)) (at start (cup_placed)) (at start (shot_extracted)) (at start (latte_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (latte_enjoyed))))

  (:durative-action distribute_grounds
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (for_step12 ?s)) (at start (beans_ground)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grounds_distributed))))

  (:durative-action place_cup
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (for_step13 ?s)) (at start (portafilter_inserted)) (at start (reservoir_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cup_placed))))

  (:durative-action read_manual
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (for_step14 ?s)) (at start (machine_unpacked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (manual_read))))

  (:durative-action extract_shot
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (and (at start (step_pending ?s)) (at start (for_step15 ?s)) (at start (portafilter_inserted)) (at start (grounds_tamped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shot_extracted))))

  (:durative-action heat_machine
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (for_step16 ?s)) (at start (grounds_distributed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (machine_heated))))

  (:durative-action pour_milk_into_pitcher
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (for_step17 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (milk_poured_into_pitcher))))

  (:durative-action wipe_steam_wand
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (for_step18 ?s)) (at start (portafilter_inserted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (steam_wand_wiped))))

  (:durative-action dispose_coffee_puck
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (for_step19 ?s)) (at start (beans_ground)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coffee_puck_disposed))))

  (:durative-action pour_frothed_milk
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (for_step20 ?s)) (at start (milk_frothed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (latte_finished))))
)