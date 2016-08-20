# TOM HAWKINS

Computer scientist and electrical engineer specializing in
functional programming, formal methods, security,
programming language and compiler design, embedded control systems,
and FPGA and ASIC design.

* 781-281-4481
* [tomahawkins@gmail.com](mailto:tomahawkins@gmail.com)
* [http://github.com/tomahawkins/](http://github.com/tomahawkins/)
* [http://www.linkedin.com/in/tomahawkins/](http://www.linkedin.com/in/tomahawkins/)

The latest version of this resume can be found on [GitHub](https://github.com/tomahawkins/resume/blob/master/resume.md).

## Things I would do if I had the time and money:

* Investigate security benefits of virtualization aggregation.
  Securing a network of many hosts is difficult.
  Would it be easier if the distributed machines formed a
  single virtual host?
  How would you architect a [SAFE](http://www.crash-safe.org/)
  machine for virtualization aggregation?

* In vehicle networks the number of onboard
  computers (ECUs) continues to grow,
  yet we still program each processing node independently.
  What can be done to automated the distribution of processing
  across a vehicle network?
  Can we arrive at a point where
  vehicle software is designed as a single application and
  an intelligent compiler automates the partitioning 
  and distribution of the program to the processing nodes?
  
* FPGAs provide lower power consumption and enhanced security
  over conventional processors,
  yet they remain undervalued by embedded developers due
  to shortcomings with programming languages and tools.
  What can be done in this space to allow FPGAs to find their
  way into more embedded applications?

* Word level security tagging and memory coloring
  has shown to be an effective way to enforce memory safety.
  If these tag mechanisms were built in conjunction with a
  hardware memory allocator and collector, it could enable
  C and C++ to become memory safe, garbage collected languages.
  How would the performance of a hardware GC compare
  with traditional garbage collection and manual deallocation?

* Build a large scale [algae scrubber](https://en.wikipedia.org/wiki/Algae_scrubber)
  for Lake Erie and the Gulf of Mexico to combat agricultural runoff, minimize deadzones, and protect water supplies.

# Skills

* **Languages**
  * Haskell, OCaml, LISP, Scheme
  * MATLAB, Simulink
  * Java, C, C++
  * Bluespec, Verilog, VHDL, PSL, SVA
  * x86, PowerPC, RISC-V assembly
  * Python, Perl, Tcl/Tk, SQL
  * OpenGL, POV-Ray, OpenSCAD
* **Preferred Tools**
  * Linux, Vim, Make
  * ACL2, Yices, CVC3
  * Xilinx ISE, Verilator, GTKWave

# Professional Experience

## [BAE Systems, Inc.](http://www.baesystems.com/), Sr Principle SW Engr, 11/2011 - Present

Research and software engineering for various DARPA cybersecurity programs including
[CRASH](http://www.darpa.mil/program/clean-slate-design-of-resilient-adaptive-secure-hosts),
[HACMS](http://www.darpa.mil/program/high-assurance-cyber-military-systems), and
[PERFECT](http://www.darpa.mil/program/power-efficiency-revolution-for-embedded-computing-technologies).
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


## [EATON CORPORATION](http://www.eaton.com/), Lead SW Engr, 10/2007 - 11/2011

Led embedded software development for
[Eaton's parallel hydraulic hybrid vehicles](http://www.eaton.com/Eaton/ProductsServices/Hydraulics/HydraulicLaunchAssist/).
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
  Using HAM, designed the yaw damper control laws for
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


# Volunteering

* Clarion University, Clarion, PA 2016: Teaching functional programming
  and predictive game analytics to a member of Clarion's women's volleyball team.
* Clarion YMCA, Clarion, PA 2015: Youth soccer coach, 3rd-5th grade.
* Clarion YMCA, Clarion, PA 2014: Youth soccer coach, 1st-2nd grade.
* Iowa City Kickers, Iowa City, IA, 2013 to 2014: Youth soccer coach, 1st grade.
* Big Brothers Big Sisters, Minneapolis, MN, 2000 to 2009: Mentor to a Minneapolis youth.
* City of Phoenix, Phoenix, AZ, 1999: Youth soccer coach, ages 5 and 6.

