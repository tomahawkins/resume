# TOM HAWKINS

Computer scientist and electrical engineer specializing in
functional programming, formal methods, programming languages and compilers,
high performance computing architecture, chip design and automation,
and hard realtime embedded control systems.
Interested in all things mechanical.

* [tomahawkins@gmail.com](mailto:tomahawkins@gmail.com)
* [http://github.com/tomahawkins/](http://github.com/tomahawkins/)
* [http://www.linkedin.com/in/tomahawkins/](http://www.linkedin.com/in/tomahawkins/)

The latest version of this resume can be found on [GitHub](https://github.com/tomahawkins/resume/blob/master/resume.md).


# Languages

* Haskell, Python, C, Nix
* Lean, Agda, ACL2
* SystemVerilog, Bluespec


# Professional Experience

## [Groq](http://www.groq.com/), HW and SW Engineer, 4/2017 - 6/2025

11th employee through the door at this successful AI chip startup.
Served many wide ranging roles across both HW and SW organizations
including HW architecture, logic design, compiler development,
HW infrastructure automation, and formal verification of critical HW components.

### Accomplishments:

* Principal designer for the matrix unit for Groq's first chip, codename Alan.
  The design worked on the first spin, much thanks to Christopher Clark (numerics, convolution),
  Jen Hwang (DV), Sushma Prasad (PD), and the rest of the team.
  It became the first chip in history to reach the 1 Peta-OPS per die threshold -- the matrix unit makes up the bulk of these OPS.
  The Alan chip is currently serving all Groq LLM requests today.

* Joined the early compiler team and assisted with the construction of the first assembler (Haskell).
  Currently the only person in the company's history to work on both the RTL design and compiler for the Alan chip.

* Rearchitected the matrix unit for the second and follow-on chips reducing area, extending features,
  and improving SW programability.

* Built and maintained ISA architecture tooling with teammates Greg Steuck and Tom Ellis.
  From an ISA spec, the tooling produces artifacts used by LD, DV, the architecture simulator,
  and the assembler and compiler teams.

* Supporting the hardware infrastructure team, created a Nix framework to 
  capture SystemVerilog file dependencies to produce file lists for EDA tool consumption
  for LD, DV, and PD teams.  This became the first time that HW development was coupled to
  the SW organization's Nix infrastructure.

* First in the company to apply formal methods (model checking) to the production
  hardware design (chip 2 and 3).  Uncovered several bugs prior to tapeout, which had gone uncaught by DV simulation.
  Also applied modeling checking for x-propagation analysis to rule out spurious failures raised in GL simulation.

* Build a Haskell DSL, and later a LLM prompt, to specify and assemble tile-based chip designs,
  automating the integration of floorplan blocks and functional units.

* Used Agda and Lean to model the HW multipliers used in the dot-products of the matrix unit.

* Patents:
    * [US11204976](https://patents.google.com/patent/US11204976): Expanded kernel generation
    * [US11301546](https://patents.google.com/patent/US11301546): Spatial locality transform of matrices
    * [US11392535](https://patents.google.com/patent/US11392535): Loading operands and outputting results from a multi-dimensional array using only a single side
    * [US11455370](https://patents.google.com/patent/US11455370): Flattened input stream generation for convolution with expanded kernel
    * [US11537687](https://patents.google.com/patent/US11537687): Spatial locality transform of matrices
    * [US11809514](https://patents.google.com/patent/US11809514): Expanded kernel generation




## [BAE Systems, Inc.](http://www.baesystems.com/), Sr Principal SW Engr, 11/2011 - 4/2017

Software engineering for various DARPA and IARPA cybersecurity and FPGA research programs including
[CRASH](http://www.darpa.mil/program/clean-slate-design-of-resilient-adaptive-secure-hosts),
[HACMS](http://www.darpa.mil/program/high-assurance-cyber-military-systems),
[PERFECT](http://www.darpa.mil/program/power-efficiency-revolution-for-embedded-computing-technologies), and
[CAUSE](https://www.iarpa.gov/index.php/research-programs/cause).
Partnered closely with programming language and hardware researchers
from the University of Pennsylvania, Northeastern University,
Harvard University, and Princeton University.

### Accomplishments:

* Developed the assembly toolchain for the [SAFE](http://www.crash-safe.org/) processor,
  which included an assembly Haskell DSL that became the backend for the Tempest and Breeze compilers.

* Created the [CIRC DSL](http://hackage.haskell.org/package/circ)
  for describing fine-grained bidirectional compiler flows.
  CIRC takes [Nanopass-like](https://www.youtube.com/watch?v=Os7FE3J-U5Q)
  descriptions and generates compiler IR datatypes and transformations in Haskell.

* Using CIRC, built the first Breeze compiler -- a higher order functional
  language with information flow control (IFC) -- and demonstrated end-to-end
  compilation with execution on the SAFE instruction set simulator.

* Using SMT, [verified noninterference security properties](https://github.com/tomahawkins/ni-proofs)
  of abstract representations of the SAFE processor, augmenting
  methods of randomized testing introduced to support formal
  verification in Coq.

* Built a Gigabit Ethernet stack in Bluespec for the SAFE processor and
  demonstrated the design on the FPGA development platform.

* [Presented an overview of SAFE at CUFP 2013](http://cufp.org/conference/sessions/2013/tom-hawkins-bae-systems-redesigning-computer-secur).

* Developed the [Dove](http://hackage.haskell.org/package/dove)
  verification environment for [Ivory](http://ivorylang.org)
  (Ivory is used by other HACMS performers for [UAV flight software](http://www.engadget.com/2015/03/16/pentagon-wants-unhackable-helicopters/)).
  Dove translates Ivory assertions and contracts into
  verification conditions (VCs) that are discharged to ACL2 for proof.
  By performing an interprocedural analysis, dove is able to
  scale up verification for large programs.

* Built and fully automated the PERFECT FPGA design flow,
  integrating pieces from Bluespec, VTR, and Verilator.
  Using Haskell, constructed custom gate-level
  and memory-based power optimizations.
  The goal of PERFECT is to improve power and performance
  of [Argus](https://www.youtube.com/watch?v=13BahrdkMU8)
  through the extensive use of FPGAs.


## [EATON CORPORATION](http://www.eaton.com/) (now [DANFOSS](https://www.danfoss.com/)), Lead SW Engr, 10/2007 - 11/2011

Led embedded software development for
[Eaton's parallel hydraulic hybrid vehicles](https://en.wikipedia.org/wiki/Hydraulic_Launch_Assist).
Created the software architecture
for the HLA family of vehicles and guided development from
prototype to production.  Established advanced design tools
and promoted the use of code generation and formal methods.

### Accomplishments:

* Successfully led the development of HLA embedded software to
  production.  Involved in all aspects of program including
  control law design, supervisory state machines, fault
  monitoring and diagnostics, intra-vehicle J1939 networking,
  data logging, cellular telemetry, and remote fleet management.

* Created the [ImProve DSL](http://hackage.haskell.org/package/improve)
  and used it to design and verify critical aspects of HLA software.
  ImProve performs formal verification of safety properties using SMT model checking.
  With it we were able to find several undiscovered
  specification and design defects and it was able to show the
  existence of a known software bug that previously destroyed
  $80K worth of hydraulic pump hardware.

* Created [Atom](http://hackage.haskell.org/package/atom),
  a Haskell DSL providing lock-free, concurrent
  programming with deterministic time and memory performance.
  Atom synthesizes task scheduling at compile-time, reducing
  the burden of WCET analysis and the need for an RTOS.
  [Presented Atom at CUFP 2008](http://dmcc.acm.org/pres/?query=/dmcc///confdata/ICFP2008/2008-09-26_09h56).

* Created a [fault tree analysis tool](http://hackage.haskell.org/package/fault-tree)
  that uses SMT to calculate minimal cut sets.  Applied the tool in HLA safety analysis.

* Created a [VCD library](http://hackage.haskell.org/package/vcd)
  and used it to pipe CAN data into [GTKWave](http://gtkwave.sourceforge.net/)
  for realtime vehicle data visualization.

* Invented a novel [hydraulic pump](https://www.youtube.com/watch?v=Ow_z99MLvlg)
  with theoretical efficiency improvements over conventional axial piston pumps.

* Patents:
    * [US8950249](https://patents.google.com/patent/US8950249): Fault detection and mitigation in hybrid drive system
    * [US10030648](https://patents.google.com/patent/US10030648): Fault detection and mitigation in hybrid drive system



## [MEDTRONIC, INC.](http://www.medtronic.com/), Sr Design Automation Engr, 1/2004 - 10/2007

Providing design automation research and support to company wide
product groups developing implantable medical devices.  Areas of
expertise include front-end IC design, formal verification,
system modeling, and behavioral logic synthesis.

### Accomplishments:

* Lead behavioral synthesis initiatives to
  compile system models to FPGA and ASIC implementations
  for lower power consumption and increased designer productivity.

* Lead initiatives in formal verification
  and instructed several courses at Medtronic on model checking
  for hardware and firmware verification.
  Using model checking, verified system requirements for bus
  arbitration and DSP power consumption on Medtronic's next
  generation cardiac therapy.

* Supported all frontend digital design and verification tools
  for system modeling, simulation, model checking,
  ASIC and FPGA synthesis, and formal equivalence checking.


## LAUNCHBIRD DESIGN SYSTEMS, INC., Founder, 5/2002 - 1/2004

Started a company to develop and promote Confluence: a
functional programming language for ASIC and FPGA design.

### Accomplishments:

* Design of the Confluence language and compiler, and
  demonstrated applications in DSP, microprocessor design,
  forward error correction coding, and reconfigurable computing.

* On invitation by Intel, presented Confluence at the 2005
  conference on Function Programming for Hardware Description
  Languages.


## [DILLON ENGINEERING, INC.](http://www.dilloneng.com/), HW Engr, 5/2000 - 5/2002

Consulting firm designs FPGA systems for image processing,
computer vision, DSP, networking, and control applications
for clients in commercial and military sectors.

### Accomplishments:

* Created [ParaCore Architect](http://www.dilloneng.com/paracore-architect-ip-generation.html) (PCA):
  A framework to describe parametric IP libraries.
  Using PCA, designed a parametric FFT core for a vision system.
  When synthesized to Xilinx Virtex-II, it was at the time the world's fastest known FFT implementation.


## [HONEYWELL INTERNATIONAL, INC.](http://honeywell.com/), Systems Engr, 6/1998 - 5/2000

Performed automatic flight control system development for
high-end business aircraft.  Followed DO-178B software
development practices including requirements definition and
validation, system design, safety analysis, integration, and
system verification.

### Accomplishments:

* Codeveloped the Honeywell Autocode Manager (HAM):
  A Simulink library for model-based development of flight control avionics.
  Using HAM, designed a neural network yaw damper controller for
  [Raytheon's Hawker 4000](https://en.wikipedia.org/wiki/Hawker_4000).

* Conducted auto-throttle design reviews and performed bench, integration,
  and flight testing for Bombardier's Global Express.


# Education

[COLORADO STATE UNIVERSITY](http://www.colostate.edu/), Fort Collins, CO, 1992 - 1998

BS Computer Engineering, GPA:3.4/4.0

## Advanced Course Work:

Control Systems,
Nonlinear Control,
Robust Control,
Digital Signal Processing,
Digital System Design,
Computer Architecture,
Communication Systems.


## Projects:

* Remote airfoil control.
* DLXI RISC processor design.
* Teaching assistant and lab instructor for senior level
  digital design course.


# Volunteering and Coaching

* Bellingham High School (BHS)
    * 2024-present:  "Beach Volleyball @ Lunch": I'm running an outdoor volleyball program for BHS students.  When weather is good we get about 100 students out playing daily.
    * 2023-present:  Mathematics tutor for BHS students, providing help from algebra 1 through calculus, and inserting CS at every opportunity.
    * 2022-2024: Assistant volleyball coach for the BHS girls team.
* Clarion University, Clarion, PA 2016: Teaching functional programming
  and predictive game analytics to a member of Clarion's women's volleyball team.
* Clarion YMCA, Clarion, PA 2015: Youth soccer coach, 3rd-5th grade.
* Clarion YMCA, Clarion, PA 2014: Youth soccer coach, 1st-2nd grade.
* Iowa City Kickers, Iowa City, IA, 2013 to 2014: Youth soccer coach, 1st grade.
* Big Brothers Big Sisters, Minneapolis, MN, 2000 to 2009: Mentor to a Minneapolis youth.
* City of Phoenix, Phoenix, AZ, 1999: Youth soccer coach, ages 5 and 6.

# Awards

* CPR Life Saving Award, Whatcom County:  First on the scene to a skier in cardiac arrest at Mt Baker.
  Started CPR and assisted ski patrol and other first responders setting up and applying an AED.
  Patient's heart was restarted in about 5 minutes and was medevaced off the mountain, taken in an ambulance down the valley,
  then once below the cloud layer, airlifted to the hospital.  He survived.
  This took place on one of the more challenging double diamonds at the ski area.

