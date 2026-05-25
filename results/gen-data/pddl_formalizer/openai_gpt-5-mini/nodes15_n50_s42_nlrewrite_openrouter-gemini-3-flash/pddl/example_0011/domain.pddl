(define (domain get-noticed)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done1)
    (done2)
    (done3)
    (done4)
    (done5)
    (done6)
    (done7)
    (done8)
    (done9)
    (done10)
    (done11)
    (done12)
    (done13)
    (done14)
    (done15)
  )

  ;; Step 1: Apply a signature fragrance (120s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done2)) (at start (done7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done1)))
  )

  ;; Step 2: Select a flattering outfit (600s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (done7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done2)))
  )

  ;; Step 3: Research popular local social spots (1800s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (done8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done3)))
  )

  ;; Step 4: Curate an engaging social media profile (7200s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (done14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done4)))
  )

  ;; Step 5: Strike up a conversation with someone new (900s)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (done2)) (at start (done3)) (at start (done6)) (at start (done7)) (at start (done8)) (at start (done10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done5)))
  )

  ;; Step 6: Head out to a high-traffic cafe or lounge (2700s)
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (done2)) (at start (done3)) (at start (done7)) (at start (done8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done6)))
  )

  ;; Step 7: Take a refreshing shower and do skincare (2400s)
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done7)))
  )

  ;; Step 8: Ask friends for recommendations on where to meet people (3600s)
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done8)))
  )

  ;; Step 9: Post an eye-catching photo online (300s)
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done2)) (at start (done3)) (at start (done4)) (at start (done6)) (at start (done7)) (at start (done8)) (at start (done11)) (at start (done14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done9)))
  )

  ;; Step 10: Practice confident body language in the mirror (1200s)
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (done7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done10)))
  )

  ;; Step 11: Take a few high-quality candid photos (3600s)
  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (done2)) (at start (done7)) (at start (done14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done11)))
  )

  ;; Step 12: Exchange contact information (60s)
  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done2)) (at start (done3)) (at start (done4)) (at start (done5)) (at start (done6)) (at start (done7)) (at start (done8)) (at start (done10)) (at start (done14)) (at start (done15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done12)))
  )

  ;; Step 13: Follow up with a friendly text message (180s)
  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (done2)) (at start (done3)) (at start (done4)) (at start (done5)) (at start (done6)) (at start (done7)) (at start (done8)) (at start (done10)) (at start (done12)) (at start (done14)) (at start (done15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done13)))
  )

  ;; Step 14: Book a professional haircut or styling (259200s)
  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done14)))
  )

  ;; Step 15: Attend a social mixer or group event (10800s)
  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (done2)) (at start (done4)) (at start (done7)) (at start (done10)) (at start (done14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done15)))
  )
)
