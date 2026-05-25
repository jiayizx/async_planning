(define (domain marathon)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
    (s7_done)
    (s8_done)
    (s9_done)
    (s10_done)
    (s11_done)
    (s12_done)
    (s13_done)
    (s14_done)
    (s15_done)
    (s16_done)
    (s17_done)
    (s18_done)
    (s19_done)
    (s20_done)
    (participated)
  )

  ; Step 1: Purchase high-performance racing shoes (3600 seconds)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s9_done)) (at start (s20_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))

  ; Step 2: Complete a 20-mile long distance training run (14400 seconds)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s19_done)) (at start (s5_done)) (at start (s16_done)) (at start (s7_done)) (at start (s4_done)) (at start (s9_done)) (at start (s20_done)) (at start (s17_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))

  ; Step 3: Taper physical activity to recover muscles (2 weeks = 1209600 seconds)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (s19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))

  ; Step 4: Research local marathon events and dates (1800 seconds)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))

  ; Step 5: Travel to the host city and check into a hotel (21600 seconds)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))

  ; Step 6: Join a local running club for peer support (3600 seconds)
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))

  ; Step 7: Register for the race online and pay fees (900 seconds)
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)) (at start (s9_done)) (at start (s20_done)) (at start (s17_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))

  ; Step 8: Pack your gear bag for race day (1800 seconds)
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))

  ; Step 9: Undergo a comprehensive physical exam by a doctor (3600 seconds)
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s20_done)) (at start (s17_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))

  ; Step 10: Attend a post-race celebration dinner (7200 seconds)
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s15_done)) (at start (s6_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))

  ; Step 11: Create a high-energy playlist for motivation (2700 seconds)
  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))

  ; Step 12: Buy a GPS running watch to track pace (1200 seconds)
  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))

  ; Step 13: Increase carbohydrate intake for energy loading (259200 seconds)
  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s3_done)) (at start (s19_done)) (at start (s5_done)) (at start (s16_done)) (at start (s7_done)) (at start (s4_done)) (at start (s9_done)) (at start (s20_done)) (at start (s17_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))

  ; Step 14: Read the official marathon rulebook (2400 seconds)
  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))

  ; Step 15: Run the actual 26.2 mile marathon course (18000 seconds) -> produces participated
  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (s6_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done)) (at end (participated))))

  ; Step 16: Pick up race bib and timing chip at the expo (7200 seconds)
  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s7_done)) (at start (s4_done)) (at start (s9_done)) (at start (s20_done)) (at start (s17_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))

  ; Step 17: Download a 16-week marathon training plan (600 seconds)
  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))

  ; Step 18: Volunteer at a water station for a smaller race (14400 seconds)
  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s6_done)) (at start (s14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))

  ; Step 19: Drive to the starting line on race morning (2700 seconds)
  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s16_done)) (at start (s7_done)) (at start (s4_done)) (at start (s9_done)) (at start (s20_done)) (at start (s17_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))

  ; Step 20: Execute the 16-week training schedule (4 months = 9676800 seconds)
  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 9676800)
    :condition (and (at start (step_pending ?s)) (at start (s17_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))
)
