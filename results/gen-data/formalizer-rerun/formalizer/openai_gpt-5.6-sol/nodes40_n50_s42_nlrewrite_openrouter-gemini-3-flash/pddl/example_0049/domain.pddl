(define (domain chipmunk-puppet)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (pending ?s - step) (done ?s - step)
  (id1 ?s - step) (id2 ?s - step) (id3 ?s - step) (id4 ?s - step) (id5 ?s - step)
  (id6 ?s - step) (id7 ?s - step) (id8 ?s - step) (id9 ?s - step) (id10 ?s - step)
  (id11 ?s - step) (id12 ?s - step) (id13 ?s - step) (id14 ?s - step) (id15 ?s - step)
  (id16 ?s - step) (id17 ?s - step) (id18 ?s - step) (id19 ?s - step) (id20 ?s - step)
  (id21 ?s - step) (id22 ?s - step) (id23 ?s - step) (id24 ?s - step) (id25 ?s - step)
  (id26 ?s - step) (id27 ?s - step) (id28 ?s - step) (id29 ?s - step) (id30 ?s - step)
  (id31 ?s - step) (id32 ?s - step) (id33 ?s - step) (id34 ?s - step) (id35 ?s - step)
  (id36 ?s - step) (id37 ?s - step) (id38 ?s - step) (id39 ?s - step) (id40 ?s - step)
  (face-pattern-sketched) (cheek-circles-cut) (needle-threaded) (excess-fabric-trimmed)
  (glove-fingers-cut) (belly-glued) (gloves-bought) (pinky-hole-sewn)
  (eye-beads-selected) (glove-laid-flat) (tail-brushed) (face-pattern-traced)
  (beads-stitched) (eye-glue-applied) (nose-triangle-cut) (body-stuffed)
  (cheeks-positioned) (whiskers-embroidered) (tail-yarn-cut) (eye-highlights-painted)
  (chest-strip-cut) (tail-sewn) (cuff-stiffener-inserted) (floss-knotted)
  (glue-dispenser-prepared) (chest-strip-aligned) (floss-wound) (tail-pompom-made)
  (puppet-dry) (nose-glued) (supplies-gathered) (yarn-braided)
  (bead-thread-secured) (cheeks-sewn) (cheek-threads-trimmed) (paint-opened)
  (eye-placement-inspected) (cuff-glue-applied) (chest-strip-pressed) (eye-glue-set)
 )
 (:durative-action step1-sketch-face
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (pending ?s)) (at start (id1 ?s)) (at start (supplies-gathered)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (face-pattern-sketched))))
 (:durative-action step2-cut-cheeks
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (id2 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (cheek-circles-cut))))
 (:durative-action step3-thread-needle
  :parameters (?s - step) :duration (= ?duration 45)
  :condition (and (at start (pending ?s)) (at start (id3 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (needle-threaded))))
 (:durative-action step4-trim-fabric
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (pending ?s)) (at start (id4 ?s)) (at start (glove-fingers-cut)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (excess-fabric-trimmed))))
 (:durative-action step5-cut-glove-fingers
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (id5 ?s)) (at start (glove-laid-flat)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (glove-fingers-cut))))
 (:durative-action step6-glue-belly
  :parameters (?s - step) :duration (= ?duration 480)
  :condition (and (at start (pending ?s)) (at start (id6 ?s)) (at start (nose-glued)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (belly-glued))))
 (:durative-action step7-buy-gloves
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (pending ?s)) (at start (id7 ?s)) (at start (supplies-gathered)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (gloves-bought))))
 (:durative-action step8-sew-pinky-hole
  :parameters (?s - step) :duration (= ?duration 720)
  :condition (and (at start (pending ?s)) (at start (id8 ?s)) (at start (excess-fabric-trimmed)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (pinky-hole-sewn))))
 (:durative-action step9-select-eye-beads
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (id9 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (eye-beads-selected))))
 (:durative-action step10-lay-glove-flat
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (pending ?s)) (at start (id10 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (glove-laid-flat))))
 (:durative-action step11-brush-tail
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (pending ?s)) (at start (id11 ?s)) (at start (tail-pompom-made)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (tail-brushed))))
 (:durative-action step12-trace-face
  :parameters (?s - step) :duration (= ?duration 360)
  :condition (and (at start (pending ?s)) (at start (id12 ?s)) (at start (face-pattern-sketched)) (at start (gloves-bought)) (at start (nose-glued)) (at start (supplies-gathered)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (face-pattern-traced))))
 (:durative-action step13-stitch-beads
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (pending ?s)) (at start (id13 ?s)) (at start (eye-glue-set)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (beads-stitched))))
 (:durative-action step14-apply-eye-glue
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (pending ?s)) (at start (id14 ?s)) (at start (eye-beads-selected)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (eye-glue-applied))))
 (:durative-action step15-cut-nose
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (pending ?s)) (at start (id15 ?s)) (at start (face-pattern-sketched)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (nose-triangle-cut))))
 (:durative-action step16-stuff-body
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (pending ?s)) (at start (id16 ?s)) (at start (cuff-glue-applied)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (body-stuffed))))
 (:durative-action step17-position-cheeks
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (id17 ?s)) (at start (cheek-circles-cut)) (at start (eye-beads-selected)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (cheeks-positioned))))
 (:durative-action step18-embroider-whiskers
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (pending ?s)) (at start (id18 ?s)) (at start (needle-threaded)) (at start (floss-knotted)) (at start (cheeks-sewn)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (whiskers-embroidered))))
 (:durative-action step19-cut-tail-yarn
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (pending ?s)) (at start (id19 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (tail-yarn-cut))))
 (:durative-action step20-paint-eye-highlights
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (id20 ?s)) (at start (glue-dispenser-prepared)) (at start (paint-opened)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (eye-highlights-painted))))
 (:durative-action step21-cut-chest-strip
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (pending ?s)) (at start (id21 ?s)) (at start (gloves-bought)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (chest-strip-cut))))
 (:durative-action step22-sew-tail
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (pending ?s)) (at start (id22 ?s)) (at start (pinky-hole-sewn)) (at start (cheeks-positioned)) (at start (tail-yarn-cut)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (tail-sewn))))
 (:durative-action step23-insert-stiffener
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (id23 ?s)) (at start (excess-fabric-trimmed)) (at start (gloves-bought)) (at start (body-stuffed)) (at start (eye-placement-inspected)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (cuff-stiffener-inserted))))
 (:durative-action step24-knot-floss
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (pending ?s)) (at start (id24 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (floss-knotted))))
 (:durative-action step25-prepare-glue
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (id25 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (glue-dispenser-prepared))))
 (:durative-action step26-align-chest-strip
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (pending ?s)) (at start (id26 ?s)) (at start (chest-strip-cut)) (at start (floss-knotted)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (chest-strip-aligned))))
 (:durative-action step27-wind-floss
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (id27 ?s)) (at start (floss-knotted)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (floss-wound))))
 (:durative-action step28-make-pompom
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (pending ?s)) (at start (id28 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (tail-pompom-made))))
 (:durative-action step29-dry-puppet
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (pending ?s)) (at start (id29 ?s)) (at start (eye-glue-applied)) (at start (chest-strip-aligned)) (at start (tail-pompom-made)) (at start (paint-opened)) (at start (chest-strip-pressed)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (puppet-dry))))
 (:durative-action step30-glue-nose
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (id30 ?s)) (at start (eye-beads-selected)) (at start (nose-triangle-cut)) (at start (supplies-gathered)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (nose-glued))))
 (:durative-action step31-gather-supplies
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (pending ?s)) (at start (id31 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (supplies-gathered))))
 (:durative-action step32-braid-yarn
  :parameters (?s - step) :duration (= ?duration 420)
  :condition (and (at start (pending ?s)) (at start (id32 ?s)) (at start (tail-yarn-cut)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (yarn-braided))))
 (:durative-action step33-secure-bead-thread
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (id33 ?s)) (at start (beads-stitched)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (bead-thread-secured))))
 (:durative-action step34-sew-cheeks
  :parameters (?s - step) :duration (= ?duration 1080)
  :condition (and (at start (pending ?s)) (at start (id34 ?s)) (at start (cheek-circles-cut)) (at start (chest-strip-aligned)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (cheeks-sewn))))
 (:durative-action step35-trim-cheek-threads
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (pending ?s)) (at start (id35 ?s)) (at start (cheeks-sewn)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (cheek-threads-trimmed))))
 (:durative-action step36-open-paint
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (pending ?s)) (at start (id36 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (paint-opened))))
 (:durative-action step37-inspect-eyes
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (pending ?s)) (at start (id37 ?s)) (at start (beads-stitched)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (eye-placement-inspected))))
 (:durative-action step38-apply-cuff-glue
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (pending ?s)) (at start (id38 ?s)) (at start (gloves-bought)) (at start (glove-laid-flat)) (at start (glue-dispenser-prepared)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (cuff-glue-applied))))
 (:durative-action step39-press-chest-strip
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (id39 ?s)) (at start (belly-glued)) (at start (cheeks-sewn)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (chest-strip-pressed))))
 (:durative-action step40-wait-eye-glue
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (pending ?s)) (at start (id40 ?s)) (at start (eye-glue-applied)))
  :effect (and (at start (not (pending ?s))) (at end (done ?s)) (at end (eye-glue-set))))
)