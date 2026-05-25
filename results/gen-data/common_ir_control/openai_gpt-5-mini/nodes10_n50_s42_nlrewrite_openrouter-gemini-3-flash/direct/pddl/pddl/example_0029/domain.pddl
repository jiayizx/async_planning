(define (domain brownies_microwave)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; Unique semantic predicates for each step
    (whisk_done)
    (grease_done)
    (melt_done)
    (pour_done)
    (microwave_done)
    (stir_done)
    (gather_done)
    (locate_done)
    (remove_done)
    (crack_done)
  )

  ; Step 1: Whisk the dry ingredients together in a bowl (120 seconds)
  (:durative-action do_step1_whisk
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (whisk_done))))

  ; Step 2: Grease the microwave-safe glass dish (30 seconds)
  (:durative-action do_step2_grease
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (locate_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (grease_done))))

  ; Step 3: Melt the butter in a separate container (45 seconds)
  (:durative-action do_step3_melt
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (gather_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (melt_done))))

  ; Step 4: Pour the finished batter into the prepared dish (60 seconds)
  (:durative-action do_step4_pour
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (crack_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (pour_done))))

  ; Step 5: Microwave on high power (300 seconds)
  (:durative-action do_step5_microwave
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (whisk_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (microwave_done))))

  ; Step 6: Stir the melted butter into the sugar and cocoa powder (60 seconds)
  (:durative-action do_step6_stir
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (melt_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (stir_done))))

  ; Step 7: Gather the measuring cups and spoons (60 seconds)
  (:durative-action do_step7_gather
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (crack_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (gather_done))))

  ; Step 8: Locate the cooking spray in the pantry (20 seconds)
  (:durative-action do_step8_locate
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (locate_done))))

  ; Step 9: Take the eggs and butter out of the refrigerator (30 seconds)
  (:durative-action do_step9_remove
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (remove_done))))

  ; Step 10: Crack the eggs into a small prep bowl (60 seconds)
  (:durative-action do_step10_crack
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (remove_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (crack_done))))
)
