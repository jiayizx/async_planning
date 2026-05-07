(define (domain layered_chocolate_fudge_cake)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (sheet_melted ?s - step)
    (small_cut_done ?s - step)
    (ganache_melted ?s - step)
    (cake_layered ?s - step)
    (shards_broken ?s - step)
  )

  ; Step 1: Melt 250g chocolate and freeze until solid (3600s)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (sheet_melted step1))
    )
  )

  ; Step 2: Cut one cake into a smaller circle (600s)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (small_cut_done step2))
    )
  )

  ; Step 3: Melt chocolate and cream together (900s)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (ganache_melted step3))
    )
  )

  ; Step 4: Put the small circle on top using ganache (300s)
  ; Requires Step2 and Step3 to have finished
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step4))
      (at start (small_cut_done step2))
      (at start (ganache_melted step3))
    )
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (cake_layered step4))
    )
  )

  ; Step 5: Take frozen chocolate and break into shards (1200s)
  ; Requires Step1 to have finished
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending step5))
      (at start (sheet_melted step1))
    )
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (shards_broken step5))
    )
  )
)
