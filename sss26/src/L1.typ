= Model Checking
Model checking checks if a system, basically modelled as a finite state machine,
ever enters a bad (=accepting) state. \
You can think of it as proof by exhaustion / bruteforce.

One way to think of this is to step sets, which essentially contains all of the
possible states you can be in after 1, 2, 3... steps. You can reason about the statesets
in the following way.
- You can after n steps, reach a fail state, and prove that the system is insecure.
- Continously move to a new state and not reach anything (given that we have limited time and terminate after m states)
- All of the states only go to states that you have entered before (i.e, the system is safe)

We will see in some other lecture what liveness properties is.

== A problem...
...there's way too many paths to consider (state set explosion). \
We can utilize techniques such as
- Partial order reduction = "It doesn't matter what B does for symbol A", which makes it able to just consider A and B linearly.
- System abstraction = "We care only about if we have taken step B, not when we have taken step B".

Both techniques may lose precision, Cyrille brings up the sum and positive/negative number example from lecture 1.

== Kripke structures
Graph / Finite state machine, but we also add labels (=system properties) to nodes/states. \
⟨s1, s2⟩ is a sequence; it's essentially just a path in the graph / FSM.
If a suffix is overlined then it means that it repeats that sequence. \
A word is a sequence of labels. Useful for temporal logic.

== Workflow thing
I didn't really pay attention here but apparently someone created an automated-model-checker-software-developer
and it is used for Windows NT device drivers (SLAM).

= Temporal logic
Extend logic with time (and reason about successor states).
Now we reason about trace. Note that these traces can be infinite (and in a sense, not very practical).

Look in slides for exact definintion because I can't be bothered. Note that these aren't standardized notation,
at least the bold part, but you get the point.

There are implication and equivalence, although consider simplyfing to proposition.
If you have never seen this, I recommend like the wikipedia page or something because I
already know this and don't care.

There's material on Canvas about this.

== Examples
Until is kinda funny. In the examples, 
- first is trivially true (empty trace), 
- second is false, 
- third and fourth are true (we don't care about p at the state with q)

Nesting, the grey nodes are unknown
- It is Gp at fourth node so it is FGp
- No, you can't say anything about the fourth node if Gp (similar reasoning for infinite traces)

== CTL
skipped for now (next lecture)

== NuSMV
SMV existed, but then NuSMV started to exist. \
The current version is 2.7.1, and 2.6.0 was released 2015 (!!). \
Apparently checked Kerberos (wow). \ 
