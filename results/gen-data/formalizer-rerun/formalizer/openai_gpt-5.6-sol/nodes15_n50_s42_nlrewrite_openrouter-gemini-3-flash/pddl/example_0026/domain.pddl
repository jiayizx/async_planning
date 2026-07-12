(define (domain rhubarb-preparation)
  (:requirements :typing :durative-actions)
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
    (stalks_harvested)
    (jars_sterilized)
    (leaves_trimmed)
    (rhubarb_sugared)
    (rhubarb_simmered)
    (stalks_sliced)
    (stalks_rinsed)
    (stalks_dried)
    (rhubarb_macerated)
    (scraps_composted)
    (waste_bin_gathered)
    (cutting_tools_ready)
    (jars_labeled)
    (jars_filled)
    (stalks_in_bowl)
  )

  (:durative-action harvest-stalks
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stalks_harvested))))

  (:durative-action sterilize-jars
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jars_sterilized))))

  (:durative-action trim-leaves
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (stalks_harvested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leaves_trimmed))))

  (:durative-action toss-with-sugar
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (stalks_in_bowl)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rhubarb_sugared))))

  (:durative-action simmer-rhubarb
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (stalks_sliced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rhubarb_simmered))))

  (:durative-action slice-stalks
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (stalks_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stalks_sliced))))

  (:durative-action rinse-stalks
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (leaves_trimmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stalks_rinsed))))

  (:durative-action dry-stalks
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (cutting_tools_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stalks_dried))))

  (:durative-action macerate-rhubarb
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (rhubarb_sugared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rhubarb_macerated))))

  (:durative-action compost-scraps
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (leaves_trimmed)) (at start (waste_bin_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scraps_composted))))

  (:durative-action gather-waste-bin
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waste_bin_gathered))))

  (:durative-action set-out-cutting-tools
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cutting_tools_ready))))

  (:durative-action label-jars
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (jars_sterilized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jars_labeled))))

  (:durative-action fill-jars
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (rhubarb_simmered)) (at start (stalks_rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jars_filled))))

  (:durative-action transfer-to-bowl
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (leaves_trimmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stalks_in_bowl))))
)