= event b with elena
tl;dr, we talked about basics of formal methods and formal specification. \

== Formal methods
According to Elena, formal methods are to software engineers as calculus is to most other engineers. \
Formal methods is a way to with mathmatical rigor specify, develop and verify software and systems. It's
not something you'll find when developing a website, but in safety-critical systems it's more common. 

Formal methods are divided into three categories.
- Lightweight FM: Doing some formal methods to make requirements and specification replete.
- Correct-by-construction: Modelling software with Event-B. What we'll be doing in this module.
- Theorem Proving: Prove theories I dunno i didn't listen at this part.

A formal specification is an _expression_ in a _formal language_ that satifies some _properties_ in a _system_,
at some level of _abstraction_. 
- Systems in this sense depends on where you draw the line: Hardware? Software? Software Architecture? Abstraction
levels matter too.

Formal in this sense means your specification is wellformed syntactically, well defined behaviour semantically
within the domain, and that you can infer useful information from the specification.

I didn't really pay attention during the specification methods slides and abstraction slides, but I'll be honest with 
you it's somewhat intuitive and self-explainable.

== Specification of control systems
If you have never encountered a control system in a course before, read a little. If you have, don't read. 

A control system controls behaviour of some system or environment (wikipedia). They are usually associated with
control loops, wich are supposed to make sure that some environment, say the carbon monoxide level in a room 
are on an acceptable level (=fulfills safety requirements). This is done with the 3 basic components, the 
sensors which measure reality, the controller which is fed the sensor output and then using some application logic
instructs the final component, the actuators which change the environment.

Look at the vaccine storage example. Two things to note. 
- First, informal specification is super unrealistic, obviously you would not change the temperature arbitrarily with the controller, 
you would measure it with the sensor and then instruct incr or decr. 
- Second, the phase variable that is defined is important and you want to make sure that your invariants (=predicate that is true for multiple control 
loop stages) are actually true for what you have defined it for. Looking at the Event-N specification, there's apparently no while loop, so Phases
also seem to be useful to model some sort of control flow. 

Well, we are relying on sensors to measure reality, and we should assume that they are not healthy.
Add a delta for error and then change the model.

== Fault trees
Note that the or-gate is like a fat lens, and the and-gate is like, well, an and-gate.
Certain issues are not fit to model using formal methods in the fault trees. 
Like, you can take into consideration the sensors failing but actually preventing the sensors
failing is not your task. Otherwise, the fault-tree is pretty intuitive.

== Event-B
Yeah it exists. Elena has used this tool previously in her research

== Set theory
Didn't cover. Next lecture
