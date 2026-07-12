(define (domain friendship-to-romance)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete) (s2_complete) (s3_complete) (s4_complete) (s5_complete)
    (s6_complete) (s7_complete) (s8_complete) (s9_complete) (s10_complete)
    (s11_complete) (s12_complete) (s13_complete) (s14_complete) (s15_complete)
    (s16_complete) (s17_complete) (s18_complete) (s19_complete) (s20_complete)
    (s21_complete) (s22_complete) (s23_complete) (s24_complete) (s25_complete)
    (s26_complete) (s27_complete) (s28_complete) (s29_complete) (s30_complete)
    (romance_ready)
  )

  (:durative-action reflect-on-attraction
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (s12_complete)) (at start (s14_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_complete))))

  (:durative-action research-friendship-to-romance
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_complete))))

  (:durative-action ask-on-first-date
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s10_complete)) (at start (s20_complete)) (at start (s26_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_complete)) (at end (romance_ready))))

  (:durative-action identify-mutual-interests
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s12_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_complete))))

  (:durative-action buy-confident-outfit
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_complete))))

  (:durative-action mention-romantic-media
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_complete))))

  (:durative-action journal-about-rejection
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s1_complete)) (at start (s18_complete)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_complete))))

  (:durative-action confide-in-trusted-friend
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_complete))))

  (:durative-action post-pride-hint
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s1_complete)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_complete))))

  (:durative-action practice-confession
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s24_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_complete))))

  (:durative-action check-schedule
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_complete))))

  (:durative-action spend-cozy-afternoon
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_complete))))

  (:durative-action send-playful-text
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s2_complete)) (at start (s6_complete)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_complete))))

  (:durative-action look-through-old-photos
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_complete))))

  (:durative-action buy-thinking-of-you-gift
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_complete))))

  (:durative-action meditate-before-conversation
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s10_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_complete))))

  (:durative-action ask-mutual-friend
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s8_complete)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_complete))))

  (:durative-action list-appreciated-qualities
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s24_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_complete))))

  (:durative-action listen-to-relationship-podcast
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_complete))))

  (:durative-action discuss-life-goals
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s6_complete)) (at start (s17_complete)) (at start (s28_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_complete))))

  (:durative-action create-courage-playlist
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (s25_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_complete))))

  (:durative-action update-dating-profile
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s1_complete)) (at start (s8_complete)) (at start (s12_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_complete))))

  (:durative-action pick-up-flowers
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_complete))))

  (:durative-action take-long-walk
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_complete))))

  (:durative-action share-bisexual-meme
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s9_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_complete))))

  (:durative-action suggest-private-dinner
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s4_complete)) (at start (s11_complete)) (at start (s23_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_complete))))

  (:durative-action get-haircut-or-spa
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (s8_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_complete))))

  (:durative-action buy-wine-or-juice
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_complete))))

  (:durative-action self-love-weekend
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_complete))))

  (:durative-action find-specific-event
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_complete))))
)